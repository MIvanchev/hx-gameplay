package ;

import cpp.Lib;
import haxe.io.BytesOutput;
import org.gameplay3d.Bundle;
import org.gameplay3d.Font;
import org.gameplay3d.Game;
import org.gameplay3d.Game_ClearFlags;
import org.gameplay3d.Keyboard_Key;
import org.gameplay3d.Keyboard_KeyEvent;
import org.gameplay3d.Mesh;
import org.gameplay3d.Mesh_PrimitiveType;
import org.gameplay3d.Model;
import org.gameplay3d.Node;
import org.gameplay3d.Platform;
import org.gameplay3d.Scene;
import org.gameplay3d.ScreenDisplayer;
import org.gameplay3d.SpriteBatch;
import org.gameplay3d.Touch_TouchEvent;
import org.gameplay3d.Vector4;
import org.gameplay3d.VertexFormat;
import org.gameplay3d.VertexFormat_Element;
import org.gameplay3d.VertexFormat_Usage;

/**
 * The main class of this sample.
 */
class MeshGame extends Game
{
    var _font:Font;
    var _fontColor:Vector4;
    var _scene:Scene;
    var _modelNode:Node;
    var _touched:Bool;
    var _touchX:Int;

    static function make()
    {
        return new MeshGame(Game.constructNativeObject, [ null ]);
    }

    /**
     * @inheritDoc
     */
    override function initialize()
    {
        // Display the gameplay	splash screen for at least 1 second.
        //

        var screenDisplayer = ScreenDisplayer.make();
        screenDisplayer.run(drawSplash, null, 1000);

        // Load font.
        //

        _font = Font.create("res/arial40.gpb");
        _fontColor = Vector4.make_FltX4(0, 0.5, 1, 1);

        // Load mesh / scene from file.
        //

        var bundle = Bundle.create("res/duck.gpb");
        _scene = bundle.loadScene();

        // Get the duck node.
        //

        _modelNode = _scene.findNode("duck");

        // Bind the material to the model.
        //

        _modelNode.getModel().setMaterial_Str_Int("res/duck.material");

        // Find the light node.
        //

        var lightNode = _scene.findNode("directionalLight1");

        // Bind the light node's direction into duck's material.
        //

        _modelNode.getModel().getMaterial().getParameter("u_lightDirection").bindValue(lightNode, "&Node::getForwardVectorView");

        // Update the aspect ratio for our scene's camera to match the current device resolution.
        //

        _scene.getActiveCamera().setAspectRatio(getWidth() / getHeight());

        // Create the grid and add it to the scene.
        //

        var model = createGridModel();
        _scene.addNode_Str("grid").setModel(model);

        screenDisplayer.complete();
    }

    /**
     * @inheritDoc
     */
    override function update(elapsedTime:Float)
    {
        if (!_touched)
            _modelNode.rotateY(elapsedTime * Math.PI / 180 * 0.05);
    }

    /**
     * @inheritDoc
     */
    override function render(elapsedTime:Float)
    {
        // Clear the color and depth buffers.
        //

        clear_Int_FltX5_Int(Game_ClearFlags.CLEAR_COLOR_DEPTH, 0, 0, 0, 1, 1, 0);

        // Visit all the nodes in the scene, drawing the models/mesh.
        //

        _scene.visit_Func(drawScene);

        // Draw the fps
        //

        drawFrameRate(_font, _fontColor, 5, 1, getFrameRate());
    }

    /**
     * @inheritDoc
     */
    override public function keyEvent(evt, key)
    {
        if (evt == Keyboard_KeyEvent.KEY_PRESS)
        {
            switch (key)
            {
            case Keyboard_Key.KEY_ESCAPE: exit();
            }
        }
    }

    /**
     * @inheritDoc
     */
    override public function touchEvent(evt, x, y, contactIndex)
    {
        switch (evt)
        {
        case Touch_TouchEvent.TOUCH_PRESS:
            _touched = true;
            _touchX = x;
        case Touch_TouchEvent.TOUCH_RELEASE:
            _touched = false;
            _touchX = 0;
        case Touch_TouchEvent.TOUCH_MOVE:
            var deltaX = x - _touchX;
            _touchX = x;
            _modelNode.rotateY(deltaX * Math.PI / 180 * 0.5);
        }
    }

    /**
     * @inheritDoc
     */
    override public function mouseEvent(evt, x, y, wheelDelta)
    {
        return false;
    }

    function drawScene(node:Node)
    {
        var model = node.getModel();
        if (model != null)
            model.draw();
        return true;
    }

    function drawFrameRate(font:Font, color, x, y, fps)
    {
        font.start();
        font.drawText_Str_IntX2_V4_Int_Bool(Std.string(fps), x, y, color, font.getSize());
        font.finish();
    }

    function drawSplash(param)
    {
        this.clear_Int_V4_Flt_Int(Game_ClearFlags.CLEAR_COLOR_DEPTH, Vector4.make_FltX4(0, 0, 0, 1), 1, 0);
        var batch = SpriteBatch.create_Str_Eff_Int("res/logo_powered_white.png");
        batch.start();
        batch.draw_FltX9_V4_Bool(getWidth() * 0.5, getHeight() * 0.5, 0.0, 512.0, 512.0, 0.0, 1.0, 1.0, 0.0, Vector4.one(), true);
        batch.finish();
    }

    function createGridModel(lineCount = 41)
    {
        // There needs to be an odd number of lines.
        //

        lineCount |= 1;
        var pointCount = lineCount * 4;
        var verticesSize = pointCount * (3 + 3);  // (3 (position(xyz) + 3 color(rgb))

        var vertices = new BytesOutput();
        vertices.prepare(verticesSize * 4);

        var gridLength:Float = Std.int(lineCount / 2);
        var value = -gridLength;
        for (i in 0...verticesSize)
        {
            // Default line color is dark grey.
            //

            var color = Vector4.make_FltX4(0.3, 0.3, 0.3, 1.0);

            // Very 10th line is brighter grey.
            //

            if (Std.int(value) % 10 == 0)
            {
                color.set_FltX4(0.45, 0.45, 0.45, 1.0);
            }

            // The Z axis is blue.
            //

            if (Math.abs(value) < 0.0001)
            {
                color.set_FltX4(0.15, 0.15, 0.7, 1.0);
            }

            // Build the lines.
            //

            vertices.writeFloat(value);
            vertices.writeFloat(0.0);
            vertices.writeFloat(-gridLength);
            vertices.writeFloat(color.x);
            vertices.writeFloat(color.y);
            vertices.writeFloat(color.z);

            vertices.writeFloat(value);
            vertices.writeFloat(0.0);
            vertices.writeFloat(gridLength);
            vertices.writeFloat(color.x);
            vertices.writeFloat(color.y);
            vertices.writeFloat(color.z);

            // The X axis is red.
            //

            if (Math.abs(value) < 0.0001)
                color.set_FltX4(0.7, 0.15, 0.15, 1.0);

            vertices.writeFloat(-gridLength);
            vertices.writeFloat(0.0);
            vertices.writeFloat(value);
            vertices.writeFloat(color.x);
            vertices.writeFloat(color.y);
            vertices.writeFloat(color.z);

            vertices.writeFloat(gridLength);
            vertices.writeFloat(0.0);
            vertices.writeFloat(value);
            vertices.writeFloat(color.x);
            vertices.writeFloat(color.y);
            vertices.writeFloat(color.z);

            value += 1.0;
        }

        var elements =
            [
                VertexFormat_Element.make_IntX2(VertexFormat_Usage.POSITION, 3),
                VertexFormat_Element.make_IntX2(VertexFormat_Usage.COLOR, 3)
            ];

        var mesh = Mesh.createMesh(VertexFormat.make(elements, 2), pointCount, false);
        if (mesh == null)
        {
            return null;
        }
        mesh.setPrimitiveType(Mesh_PrimitiveType.LINES);
        mesh.setVertexData(vertices.getBytes().getData(), 0, pointCount);

        var model = Model.create(mesh);
        model.setMaterial_Str_Int("res/grid.material");

        return model;
    }

    /***************************************************************************
     * ENTRY POINT                                                             *
     **************************************************************************/

	static function main()
	{
        Platform.create(MeshGame.make()).enterMessagePump();
    }
}
