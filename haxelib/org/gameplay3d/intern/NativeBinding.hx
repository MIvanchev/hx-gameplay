package org.gameplay3d.intern;

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
    public function isEquivalentTo(object:INativeBinding):Bool
    {
        return testEquivalence(nativeObject, native(object));
    }

    /**
     * TODO
     */
    public static inline function native(object:INativeBinding):Dynamic
    {
        return if (object == null) null else object.nativeObject;
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var testEquivalence:Dynamic = cpp.Lib.load("gameplay", "testEquivalence", 2);
}
