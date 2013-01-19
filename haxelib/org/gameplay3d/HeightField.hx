package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.util.IMutableNativeArray;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class HeightField : public Ref
class HeightField extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _array:HeightFieldArray;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _array = new HeightFieldArray(hx_HeightField_getArray(), getRowCount(), getColumnCount());
        }
        else
        {
            _array.impersonate(hx_HeightField_getArray());
        }
        return cast(this);
    }

    // DECL: static HeightField* create(unsigned int rows, unsigned int columns);
    public static function create(rows:Int, columns:Int):HeightField
    {
        return HeightField.wrap(hx_HeightField_static_create(rows, columns));
    }

    // DECL: static HeightField* createFromImage(const char* path, float heightMin = 0, float heightMax = 1);
    public static function createFromImage(path:String, heightMin:Float, heightMax:Float):HeightField
    {
        return HeightField.wrap(hx_HeightField_static_createFromImage(path, heightMin, heightMax));
    }

    // DECL: static HeightField* createFromRAW(const char* path, unsigned int width, unsigned int height, float heightMin = 0, float heightMax = 1);
    public static function createFromRAW(path:String, width:Int, height:Int, heightMin:Float, heightMax:Float):HeightField
    {
        return HeightField.wrap(hx_HeightField_static_createFromRAW(path, width, height, heightMin, heightMax));
    }

    // DECL: float* getArray() const;
    public function getArray():IMutableNativeArray<Float>
    {
        return _array;
    }

    // DECL: unsigned int getColumnCount() const;
    public function getColumnCount():Int
    {
        return hx_HeightField_getColumnCount(nativeObject);
    }

    // DECL: float getHeight(float column, float row) const;
    public function getHeight(column:Float, row:Float):Float
    {
        return hx_HeightField_getHeight(nativeObject, column, row);
    }

    // DECL: unsigned int getRowCount() const;
    public function getRowCount():Int
    {
        return hx_HeightField_getRowCount(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_HeightField_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_static_create", 2);
    static var hx_HeightField_static_createFromImage:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_static_createFromImage", 3);
    static var hx_HeightField_static_createFromRAW:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_static_createFromRAW", 5);
    static var hx_HeightField_getArray:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_getArray", 1);
    static var hx_HeightField_getColumnCount:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_getColumnCount", 1);
    static var hx_HeightField_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_getHeight", 3);
    static var hx_HeightField_getRowCount:Dynamic = cpp.Lib.load("gameplay", "hx_HeightField_getRowCount", 1);

}

private class HeightFieldArray extends PrimitiveArray<Float>
{
    public function new(nativeObject, rows, columns)
    {
        super(
            nativeObject,
            PrimitiveArray.getNativeArrayElementFloat,
            PrimitiveArray.setNativeArrayElementFloat,
            rows * columns
            );
    }
}

// END
