package org.gameplay3d;

import org.gameplay3d.util.Utilities;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class VertexFormat : public GameplayObject
class VertexFormat extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: VertexFormat(const Element* elements, unsigned int elementCount);
    public static function make(elements:Array<VertexFormat_Element>, elementCount:Int):VertexFormat
    {
        return new VertexFormat(constructNativeObject(elements, elementCount));
    }

    // DECL: const Element& getElement(unsigned int index) const;
    public function getElement(index:Int):VertexFormat_Element
    {
        return VertexFormat_Element.wrap(hx_VertexFormat_getElement(nativeObject, index));
    }

    // DECL: unsigned int getElementCount() const;
    public function getElementCount():Int
    {
        return hx_VertexFormat_getElementCount(nativeObject);
    }

    // DECL: unsigned int getVertexSize() const;
    public function getVertexSize():Int
    {
        return hx_VertexFormat_getVertexSize(nativeObject);
    }

    // DECL: static const char* toString(Usage usage);
    public static function toString(usage:Int):String
    {
        return hx_VertexFormat_static_toString(usage);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: VertexFormat(const Element* elements, unsigned int elementCount);
    static function constructNativeObject(elements:Array<VertexFormat_Element>, elementCount:Int):Dynamic
    {
        return hx_VertexFormat_Construct(Utilities.insertArray(elements), elementCount);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_VertexFormat_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_VertexFormat_Construct", 2);
    static var hx_VertexFormat_getElement:Dynamic = cpp.Lib.load("gameplay", "hx_VertexFormat_getElement", 2);
    static var hx_VertexFormat_getElementCount:Dynamic = cpp.Lib.load("gameplay", "hx_VertexFormat_getElementCount", 1);
    static var hx_VertexFormat_getVertexSize:Dynamic = cpp.Lib.load("gameplay", "hx_VertexFormat_getVertexSize", 1);
    static var hx_VertexFormat_static_toString:Dynamic = cpp.Lib.load("gameplay", "hx_VertexFormat_static_toString", 1);
}

// END
