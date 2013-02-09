package org.gameplay3d.intern;

import org.gameplay3d.util.NativeInterface;

/**
 * TODO
 */
class NativeBinding implements INativeBinding
{
    /**
     * @inheritDoc
     */
    public var nativeObject(default, null):Dynamic;

    /**
     * TODO
     */
    function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        this.nativeObject = nativeObject;
        return cast(this);
    }

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

    static var testEquivalence:Dynamic = NativeInterface.load("testEquivalence", 2);
}
