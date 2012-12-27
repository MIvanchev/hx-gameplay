package org.gameplay3d.intern;

import org.gameplay3d.Control;
import org.gameplay3d.Matrix;
import org.gameplay3d.Node;
import org.gameplay3d.Vector2;
import org.gameplay3d.Vector3;
import org.gameplay3d.Vector4;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

/**
 * TODO
 */
class ConversionTools
{
    public static function extractVector2Array(array:Iterable<Dynamic>):Array<Vector2>
    {
        var result = [];

        for (object in array)
            result.push(Vector2.wrap(object));

        return result;
    }

    public static function extractVector3Array(array:Iterable<Dynamic>):Array<Vector3>
    {
        var result = [];

        for (object in array)
            result.push(Vector3.wrap(object));

        return result;
    }

    public static function extractVector4Array(array:Iterable<Dynamic>):Array<Vector4>
    {
        var result = [];

        for (object in array)
            result.push(Vector4.wrap(object));

        return result;
    }

    public static function extractMatrixArray(array:Iterable<Dynamic>):Array<Matrix>
    {
        var result = [];

        for (object in array)
            result.push(Matrix.wrap(object));

        return result;
    }

    public static function extractNodeArray(array:Iterable<Dynamic>):Array<Node>
    {
        var result = [];

        for (object in array)
            result.push(Node.wrap(object));

        return result;
    }

    public static function extractControlArray(array:Iterable<Dynamic>):Array<Control>
    {
        var result = [];

        for (object in array)
            result.push(Control.wrap(object));

        return result;
    }

    public static function insertArray(array:Iterable<GameplayObject>):Array<Dynamic>
    {
        var result = [];

        for (object in array)
            result.push(object.native());

        return result;
    }
}
