package org.gameplay3d;
import org.gameplay3d.util.NativeInterface;

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

    static var hx_Uniform_getEffect = NativeInterface.loadMember(Uniform, "getEffect", 1);
    static var hx_Uniform_getName = NativeInterface.loadMember(Uniform, "getName", 1);
    static var hx_Uniform_getType = NativeInterface.loadMember(Uniform, "getType", 1);
}

// END
