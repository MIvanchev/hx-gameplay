package ;

import cpp.Lib;
import org.gameplay3d.Game;
import org.gameplay3d.Platform;

/**
 * TODO
 */
class Main extends Game
{
    static function make():Main
    {
        return new Main(Game.constructNativeObject, [ null ]);
    }

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    /**
     * @inheritDoc
     */
    override function initialize():Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override function finalize():Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override function update(elapsedTime:Float):Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override function render(elapsedTime:Float):Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override public function keyEvent(evt:Int, key:Int):Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override public function touchEvent(evt:Int, x:Int, y:Int, contactIndex:Int):Void
    {
        // TODO:
        //
    }

    /**
     * @inheritDoc
     */
    override public function mouseEvent(evt:Int, x:Int, y:Int, wheelDelta:Int):Bool
    {
        // TODO:
        //

        return false;
    }

    /***************************************************************************
     * ENTRY POINT                                                             *
     **************************************************************************/

	static function main():Void
	{
        Platform.create(Main.make()).enterMessagePump();
    }
}
