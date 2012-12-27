package ;

import cpp.Lib;
import org.gameplay3d.AudioSource;
import org.gameplay3d.AudioSource_State;
import org.gameplay3d.Game;
import org.gameplay3d.Game_ClearFlags;
import org.gameplay3d.Keyboard_Key;
import org.gameplay3d.Keyboard_KeyEvent;
import org.gameplay3d.Material;
import org.gameplay3d.Matrix;
import org.gameplay3d.Mesh;
import org.gameplay3d.Model;
import org.gameplay3d.Platform;
import org.gameplay3d.RenderState;
import org.gameplay3d.RenderState_Blend;
import org.gameplay3d.RenderState_StateBlock;
import org.gameplay3d.ScreenDisplayer;
import org.gameplay3d.SpriteBatch;
import org.gameplay3d.Texture_Sampler;
import org.gameplay3d.Texture_Wrap;
import org.gameplay3d.util.INativeArray;
import org.gameplay3d.util.OutParameter;
import org.gameplay3d.util.Utilities;
import org.gameplay3d.Vector2;
import org.gameplay3d.Vector3;
import org.gameplay3d.Vector4;

/**
 * The main class of this sample.
 */
class LongboardGame extends Game
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    /**
     * Pick some arbitrarily large world size for our playground.
     */
    public static inline var WORLD_SIZE = 20.0;

    /**
     * Maximum velocity, in meters/sec.
     */
    public static inline var VELOCITY_MAX = 2.0;
    public static inline var VELOCITY_MAX_MS = (VELOCITY_MAX / 1000.0);

    /**
     * Minimum velocity, in meters/sec.
     */
    public static inline var VELOCITY_MIN = 0.2;
    public static inline var VELOCITY_MIN_MS = (VELOCITY_MIN / 1000.0);

    /**
     * Accelerometer pitch control.
     */
    public static inline var PITCH_MIN = 20.0;
    public static inline var PITCH_MAX = 70.0;
    public static inline var PITCH_RANGE = (PITCH_MAX - PITCH_MIN);

    /**
     * Maximum turn rate (rate of change in direction at full velocity), in degrees/sec.
     */
    public static inline var TURN_RATE_MAX = 75.0;
    public static inline var TURN_RATE_MAX_MS = (TURN_RATE_MAX / 1000.0);
    public static inline var ROLL_MAX = 40.0;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _ground:Model;
    var _groundWorldMatrix:Matrix;
    var _groundWorldViewProjectionMatrix:INativeArray<Matrix>;
    var _board:Model;
    var _boardWorldMatrix:Matrix;
    var _boardWorldViewProjectionMatrix:INativeArray<Matrix>;
    var _wheels:Model;
    var _wheelsWorldMatrix:Matrix;
    var _wheelsWorldViewProjectionMatrix:INativeArray<Matrix>;
    var _wheelsSound:AudioSource;
    var _gradient:Model;
    var _stateBlock:RenderState_StateBlock;
    var _viewMatrix:Matrix;
    var _projectionMatrix:Matrix;
    var _viewProjectionMatrix:Matrix;
    var _velocity:Float;
    var _direction:Vector3;
    var _groundUVTransform:INativeArray<Vector2>;

    var _rotationMatrix:Matrix;

    static function make()
    {
        return new LongboardGame(Game.constructNativeObject, [ null ]);
    }

    /**
     * @inheritDoc
     */
    override function initialize()
    {
        _groundWorldMatrix = Matrix.make();
        _groundWorldViewProjectionMatrix = Utilities.createObjectArray(Matrix, 1, false);
        _boardWorldMatrix = Matrix.make();
        _boardWorldViewProjectionMatrix = Utilities.createObjectArray(Matrix, 1, false);
        _wheelsWorldMatrix = Matrix.make();
        _wheelsWorldViewProjectionMatrix = Utilities.createObjectArray(Matrix, 1, false);
        _viewMatrix = Matrix.make();
        _projectionMatrix = Matrix.make();
        _viewProjectionMatrix = Matrix.make();
        _direction = Vector3.make();
        _groundUVTransform = Utilities.createObjectArray(Vector2, 1, false);
        _rotationMatrix = Matrix.make();

        // Display the gameplay	splash screen for at least 1 second.
        //

        var screenDisplayer = ScreenDisplayer.make();
        screenDisplayer.run(drawSplash, null, 1000);

        // Create our render state block that will be reused across all materials.
        //

        _stateBlock = RenderState_StateBlock.create();
        _stateBlock.setCullFace(true);
        _stateBlock.setBlend(true);
        _stateBlock.setBlendSrc(RenderState_Blend.BLEND_SRC_ALPHA);
        _stateBlock.setBlendDst(RenderState_Blend.BLEND_ONE_MINUS_SRC_ALPHA);

        // Calculate initial matrices.
        //

        Matrix.createPerspective(45.0, getWidth() / getHeight(), 0.25, 100.0, _projectionMatrix);
        Matrix.createLookAt_FltX9_Mat(0, 1.75, 1.35, 0, 0, -0.15, 0, 0.20, -0.80, _viewMatrix);
        Matrix.multiply_MatX3(_projectionMatrix, _viewMatrix, _viewProjectionMatrix);

        // Build game entities.
        //

        buildGround();
        buildBoard();
        buildWheels();
        buildGradient();

        // Set initial board physics.
        //

        _direction.set_FltX3(0, 0, -1);
        _velocity = VELOCITY_MIN_MS;

        screenDisplayer.complete();
    }

    /**
     * @inheritDoc
     */
    override function update(elapsedTime:Float)
    {
        // Query the accelerometer values.
        //

        var outPitch = new OutParameter<Float>();
        var outRoll = new OutParameter<Float>();

        getAccelerometerValues(outPitch, outRoll);

        // Clamp angles.
        //

        var pitch = Math.max(Math.min(-outPitch.value, PITCH_MAX), PITCH_MIN);
        var roll = Math.max(Math.min(outRoll.value, ROLL_MAX), -ROLL_MAX);

        // Calculate the 'throttle' (which is the % controlling change in
        // acceleration, similar to a car's gas pedal).
        //

        var throttle = 1.0 - ((pitch - PITCH_MIN) / PITCH_RANGE);

        if (throttle > 0.0)
        {
            if (_wheelsSound.getState() != AudioSource_State.PLAYING)
                _wheelsSound.play();

            _wheelsSound.setPitch(throttle);
        }
        else
        {
            _wheelsSound.stop();
        }

        // Update velocity based on current throttle.
        // Note that this is a very simplified calculation that ignores
        // acceleration (assumes it's constant).

        _velocity = VELOCITY_MIN_MS
                    + ((VELOCITY_MAX_MS - VELOCITY_MIN_MS) * throttle);

        // Update direction based on accelerometer roll and max turn rate.
        //

        Matrix.createRotationY(
                ((TURN_RATE_MAX_MS * elapsedTime) * (roll / ROLL_MAX) * throttle)
                    * Math.PI / 180,
                _rotationMatrix
            );

        _rotationMatrix.transformVector_V3(_direction);
        _direction.normalize();

        // Transform the ground. We rotate the ground instead of the board since
        // we don't actually move the board along the ground (we just simulate
        // moving it so it appears infinite).
        //

        Matrix.multiply_MatX3(
                _rotationMatrix,
                _groundWorldMatrix,
                _groundWorldMatrix
            );
        Matrix.multiply_MatX3(
                _viewProjectionMatrix,
                _groundWorldMatrix,
                _groundWorldViewProjectionMatrix.getAt(0)
            );

        // Transform the wheels.
        //

        Matrix.createScale_FltX3_Mat(1.2, 1.2, 1.2, _wheelsWorldMatrix);
        _wheelsWorldMatrix.translate_FltX3(roll / ROLL_MAX * 0.05, 0, 0.05);
        _wheelsWorldMatrix.rotateY_Flt(-Math.PI / 180 * (roll * 0.45));
        Matrix.multiply_MatX3(
                _viewProjectionMatrix,
                _wheelsWorldMatrix,
                _wheelsWorldViewProjectionMatrix.getAt(0)
            );

        // Transform and tilt the board.
        //

        Matrix.createScale_FltX3_Mat(1.25, 1.25, 1.25, _boardWorldMatrix);
        _boardWorldMatrix.translate_FltX3(0, 0, 0.65);
        _boardWorldMatrix.rotateZ_Flt(-Math.PI / 180 * (roll * 0.5));
        _boardWorldMatrix.rotateY_Flt(-Math.PI / 180 * (roll * 0.1));
        Matrix.multiply_MatX3(
                _viewProjectionMatrix,
                _boardWorldMatrix,
                _boardWorldViewProjectionMatrix.getAt(0)
            );

        // Transform the ground texture coords to give the illusion of the board
        // moving. We'll assume that a 'patch' of ground is equal to 1 meter.
        //

        var groundUVTransform = _groundUVTransform.getAt(0);
        groundUVTransform.x += -_direction.x * (_velocity * elapsedTime);
        groundUVTransform.y += -_direction.z * (_velocity * elapsedTime);
        if (groundUVTransform.x >= 1.0)
        {
            groundUVTransform.x = 1.0 - groundUVTransform.x;
        }
        if (groundUVTransform.y >= 1.0)
        {
            groundUVTransform.y = 1.0 - groundUVTransform.y;
        }
    }

    /**
     * @inheritDoc
     */
    override function render(elapsedTime:Float)
    {
        // Clear the color and depth buffers.
        //

        clear_Int_FltX5_Int(Game_ClearFlags.CLEAR_COLOR_DEPTH, 1, 1, 1, 1, 1, 0);

        // Draw the scene.
        //

        _ground.draw();
        _wheels.draw();
        _board.draw();
        _gradient.draw();
    }

    /**
     * @inheritDoc
     */
    override public function keyEvent(evt, key)
    {
        if (evt == Keyboard_KeyEvent.KEY_PRESS)
        {
            if (key == Keyboard_Key.KEY_ESCAPE)
                exit();
        }
    }

    function drawSplash(param)
    {
        this.clear_Int_V4_Flt_Int(Game_ClearFlags.CLEAR_COLOR_DEPTH, Vector4.make_FltX4(0, 0, 0, 1), 1, 0);
        var batch = SpriteBatch.create_Str_Eff_Int("res/logo_powered_white.png");
        batch.start();
        batch.draw_FltX9_V4_Bool(getWidth() * 0.5, getHeight() * 0.5, 0.0, 512.0, 512.0, 0.0, 1.0, 1.0, 0.0, Vector4.one(), true);
        batch.finish();
    }

    function buildGround()
    {
        // Create a large quad for the ground.
        //

        var groundMesh =
                Mesh.createQuad_V3X4(
                            Vector3.make_FltX3(-WORLD_SIZE, 0, -WORLD_SIZE),
                            Vector3.make_FltX3(-WORLD_SIZE, 0, WORLD_SIZE),
                            Vector3.make_FltX3(WORLD_SIZE, 0, -WORLD_SIZE),
                            Vector3.make_FltX3(WORLD_SIZE, 0, WORLD_SIZE)
                        );

        // Create the ground model.
        //

        _ground = Model.create(groundMesh);

        // Create the ground material.
        //

        var groundMaterial =
                _ground.setMaterial_StrX3_Int(
                        "res/shaders/textured-unlit.vert",
                        "res/shaders/textured-unlit.frag",
                        "TEXTURE_REPEAT;TEXTURE_OFFSET"
                    );

        // Set render state block.
        //

        groundMaterial.setStateBlock(_stateBlock);

        // Bind ground material parameters.
        //

        var groundSampler =
                    groundMaterial
                        .getParameter("u_diffuseTexture")
                        .setValue_Str_Bool("res/asphalt.png", true);
        groundSampler.setWrapMode(Texture_Wrap.REPEAT, Texture_Wrap.REPEAT);
        groundMaterial
                    .getParameter("u_worldViewProjectionMatrix")
                    .setValue_ArrMat_Int(_groundWorldViewProjectionMatrix);
        groundMaterial
                    .getParameter("u_textureRepeat")
                    .setValue_V2(Vector2.make_FltX2(WORLD_SIZE / 2, WORLD_SIZE / 2));
        groundMaterial
                    .getParameter("u_textureOffset")
                    .setValue_ArrV2_Int(_groundUVTransform);
    }

    function buildBoard()
    {
        // Create longboard mesh.
        //

        var boardMesh =
                Mesh.createQuad_V3X4(
                                Vector3.make_FltX3(-0.5, 0.1, -1.0),
                                Vector3.make_FltX3(-0.5, 0.1, 1.0),
                                Vector3.make_FltX3(0.5, 0.1, -1.0),
                                Vector3.make_FltX3(0.5, 0.1, 1.0)
                            );

        // Create the board model.
        //

        _board = Model.create(boardMesh);

        // Create the board material.
        //

        var boardMaterial =
                _board.setMaterial_StrX3_Int(
                        "res/shaders/textured-unlit.vert",
                        "res/shaders/textured-unlit.frag",
                        "TEXTURE_REPEAT;TEXTURE_OFFSET"
                    );

        // Set render state block.
        //

        boardMaterial.setStateBlock(_stateBlock);

        // Bind board material parameters.
        //

        var boardSampler =
                boardMaterial
                    .getParameter("u_diffuseTexture")
                    .setValue_Str_Bool("res/longboard.png", true);
        boardSampler.setWrapMode(Texture_Wrap.CLAMP, Texture_Wrap.CLAMP);
        boardMaterial
                    .getParameter("u_worldViewProjectionMatrix")
                    .setValue_ArrMat_Int(_boardWorldViewProjectionMatrix);
        boardMaterial
                    .getParameter("u_textureRepeat")
                    .setValue_V2(Vector2.one());
        boardMaterial
                    .getParameter("u_textureOffset")
                    .setValue_V2(Vector2.zero());
    }

    function buildWheels()
    {
        // Create wheels mesh.
        //

        var wheelsMesh =
            Mesh.createQuad_V3X4(
                    Vector3.make_FltX3(-0.5, 0.025, -0.25),
                    Vector3.make_FltX3(-0.5, 0.025, 0.25),
                    Vector3.make_FltX3(0.5, 0.025, -0.25),
                    Vector3.make_FltX3(0.5, 0.025, 0.25)
                );

        // Create the wheels model.
        //

        _wheels = Model.create(wheelsMesh);

        // Create the wheels material.
        //

        var wheelsMaterial =
            _wheels.setMaterial_StrX3_Int(
                    "res/shaders/textured-unlit.vert",
                    "res/shaders/textured-unlit.frag",
                    "TEXTURE_REPEAT;TEXTURE_OFFSET"
                );

        // Set render state block.
        //

        wheelsMaterial.setStateBlock(_stateBlock);

        // Bind wheels material parameters.
        //

        var wheelsSampler =
                wheelsMaterial
                    .getParameter("u_diffuseTexture")
                    .setValue_Str_Bool("res/longboard_wheels.png", true);
        wheelsSampler.setWrapMode(Texture_Wrap.CLAMP, Texture_Wrap.CLAMP);
        wheelsMaterial
                    .getParameter("u_worldViewProjectionMatrix")
                    .setValue_ArrMat_Int(_wheelsWorldViewProjectionMatrix);
        wheelsMaterial
                    .getParameter("u_textureRepeat")
                    .setValue_V2(Vector2.one());
        wheelsMaterial
                    .getParameter("u_textureOffset")
                    .setValue_V2(Vector2.zero());

        // Load audio sound.
        //

        _wheelsSound = AudioSource.create_Str("res/longboard.wav");
        if (_wheelsSound != null)
            _wheelsSound.setLooped(true);
    }

    function buildGradient()
    {
        // Create a full-screen quad for rendering a screen-space gradient
        // effect to the scene.
        //

        var gradientMesh = Mesh.createQuadFullscreen();

        // Create the wheels model.
        //

        _gradient = Model.create(gradientMesh);

        // Create the gradient material.
        //

        var gradientMaterial =
            _gradient.setMaterial_StrX3_Int(
                    "res/shaders/textured-unlit.vert",
                    "res/shaders/textured-unlit.frag"
                );

        // Set render state block.
        //

        gradientMaterial.setStateBlock(_stateBlock);

        // Bind material parameters.
        //

        var gradientSampler =
                gradientMaterial
                    .getParameter("u_diffuseTexture")
                    .setValue_Str_Bool("res/overlay_gradient.png", false);
        gradientSampler.setWrapMode(Texture_Wrap.CLAMP, Texture_Wrap.CLAMP);
    }

    /***************************************************************************
     * ENTRY POINT                                                             *
     **************************************************************************/

	static function main()
	{
        Platform.create(LongboardGame.make()).enterMessagePump();
    }
}
