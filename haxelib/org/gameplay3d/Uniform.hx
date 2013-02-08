package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Uniform : public GameplayObject
class Uniform extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Effect* getEffect() const;
    public function getEffect():Effect
    {
        return Effect.wrap(hx_Uniform_getEffect(nativeObject));
    }

    // DECL: const char* getName() const;
    public function getName():String
    {
        return hx_Uniform_getName(nativeObject);
    }

    // FIXME: assume GLenum is always integral
    // DECL: const GLenum getType() const;
    public function getType():Int
    {
        return hx_Uniform_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Uniform_getEffect = cpp.Lib.load("gameplay", "hx_Uniform_getEffect", 1);
    static var hx_Uniform_getName = cpp.Lib.load("gameplay", "hx_Uniform_getName", 1);
    static var hx_Uniform_getType = cpp.Lib.load("gameplay", "hx_Uniform_getType", 1);
}

// END
