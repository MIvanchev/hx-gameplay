package dk.bluewolf.gameplay;

/**
 * TODO
 */
class Handle extends NativeBinding
{
    /**
     * TODO
     */
    public function new(nativeObject:Dynamic)
    {
        this.nativeObject = nativeObject;
    }

    /**
     * TODO
     */
    public static inline function wrap(nativeObject:Dynamic):Handle
    {
        return
            if (nativeObject == null)
                null;
            else
                new Handle(nativeObject);
    }
}
