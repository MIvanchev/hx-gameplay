package org.gameplay3d.intern;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

/**
 * TODO
 */
class Macros
{
    /**
     * TODO
     */
    macro
    public static function impersonateResult(name:Expr, result:Expr):Expr
    {
        var id =
            (
                switch (Context.follow(Context.typeof(name)))
                {
                case TInst(r, _): r;
                default: Context.error("Invalid type specified.", Context.currentPos());
                }
            ).toString().split(".");

        return macro
            if ($name == null)
                $name = $i{id[id.length - 1]}.wrap($result);
            else
                $name = $name.impersonate($result);
   }

   /**
    * TODO
    */
   macro
   public static function returnType(func:Expr):Expr
   {
        var id =
            TypeTools.toString(
                    switch (Context.follow(Context.typeof(func)))
                    {
                    case TFun(_, r): r;
                    default: Context.error("Invalid type specified.", Context.currentPos());
                    }
                ).split(".");
        return macro $i{id[id.length - 1]};
   }
}
