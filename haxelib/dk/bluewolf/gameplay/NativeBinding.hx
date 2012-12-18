package dk.bluewolf.gameplay;

/**
 * TODO
 */
class NativeBinding implements INativeBinding
{
    /**
     * @inheritDoc
     */
    @:isVar public var nativeObject(default, null):Dynamic;

    /**
     * TODO
     */
    public static inline function native(object:INativeBinding):Dynamic
    {
        return if (object == null) null else object.nativeObject;
    }
}
