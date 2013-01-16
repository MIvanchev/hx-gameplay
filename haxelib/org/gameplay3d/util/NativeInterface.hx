package org.gameplay3d.util;

import cpp.Lib;
import org.gameplay3d.AbsoluteLayout;
import org.gameplay3d.AIAgent;
import org.gameplay3d.AIState;
import org.gameplay3d.Animation;
import org.gameplay3d.AnimationClip;
import org.gameplay3d.Bundle;
import org.gameplay3d.Button;
import org.gameplay3d.Camera;
import org.gameplay3d.CheckBox;
import org.gameplay3d.Container;
import org.gameplay3d.Control;
import org.gameplay3d.Curve;
import org.gameplay3d.DepthStencilTarget;
import org.gameplay3d.Effect;
import org.gameplay3d.FlowLayout;
import org.gameplay3d.Font;
import org.gameplay3d.Form;
import org.gameplay3d.FrameBuffer;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.Image;
import org.gameplay3d.Joint;
import org.gameplay3d.Joystick;
import org.gameplay3d.Label;
import org.gameplay3d.Layout;
import org.gameplay3d.Light;
import org.gameplay3d.Material;
import org.gameplay3d.MaterialParameter;
import org.gameplay3d.Model;
import org.gameplay3d.Node;
import org.gameplay3d.ParticleEmitter;
import org.gameplay3d.Pass;
import org.gameplay3d.PhysicsCollisionShape;
import org.gameplay3d.RadioButton;
import org.gameplay3d.Ref;
import org.gameplay3d.RenderState;
import org.gameplay3d.RenderState_StateBlock;
import org.gameplay3d.RenderTarget;
import org.gameplay3d.Scene;
import org.gameplay3d.Slider;
import org.gameplay3d.Technique;
import org.gameplay3d.TextBox;
import org.gameplay3d.Texture;
import org.gameplay3d.Texture_Sampler;
import org.gameplay3d.Theme;
import org.gameplay3d.Theme_SideRegions;
import org.gameplay3d.Theme_ThemeImage;
import org.gameplay3d.VertexAttributeBinding;
import org.gameplay3d.VerticalLayout;

using org.gameplay3d.GameplayObject;

/**
 * TODO
 */
class NativeInterface
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    /**
     * The native method used to pass the wrapper factory methods to the CFFI
     * layer.
     */
    static var setReferenceConstructor:Dynamic;

    /**
     * The list of factory methods used to construct Haxe wrappers for reference
     * counted classes.
     *
     * It is absolutely necessary that every factory method is stored in this list
     * for the whole execution time of the application, i.e. not be reclaimed by
     * the garbage collector.
     */
    static var factories:List<Dynamic->Ref> = new List();

    /**
     * TODO
     */
    public static function initialie()
    {
        setReferenceConstructor = Lib.load("gameplay", "setReferenceConstructor", 2);
        registerClass(AbsoluteLayout);
        registerClass(AIAgent);
        registerClass(AIState);
        registerClass(Animation);
        registerClass(AnimationClip);
        //registerClass(AudioBuffer);
        registerClass(Bundle);
        registerClass(Button);
        registerClass(Camera);
        registerClass(CheckBox);
        registerClass(Container);
        registerClass(Control);
        registerClass(Curve);
        registerClass(DepthStencilTarget);
        registerClass(Effect);
        registerClass(FlowLayout);
        registerClass(Font);
        registerClass(Form);
        registerClass(FrameBuffer);
        registerClass(Image);
        registerClass(Joint);
        registerClass(Joystick);
        registerClass(Label);
        registerClass(Layout);
        registerClass(Light);
        registerClass(Material);
        registerClass(MaterialParameter);
        registerClass(Model);
        registerClass(Node);
        registerClass(ParticleEmitter);
        registerClass(Pass);
        registerClass(PhysicsCollisionShape);
        registerClass(RadioButton);
        registerClass(RenderState);
        registerClass(RenderState_StateBlock);
        registerClass(RenderTarget);
        registerClass(Scene);
        registerClass(Slider);
        registerClass(Technique);
        registerClass(TextBox);
        registerClass(Texture);
        registerClass(Texture_Sampler);
        registerClass(Theme);
        registerClass(Theme_ThemeImage);
        registerClass(VertexAttributeBinding);
        registerClass(VerticalLayout);
    }

    /**
     * TODO
     */
    @:generic
    static function registerClass<T : (GameplayObject, Ref)>(classObj:Class<T>)
    {
        // Extract the name of the class.
        //

        var name = Type.getClassName(classObj);
        var packageEnd = name.lastIndexOf(".");
        if (packageEnd != -1)
            name = name.substr(packageEnd + 1);

        // Set a constructor for the class and make it known to the hxcpp layer.
        //

        factories.push(
                function(nativeObject:Dynamic):T
                {
                    return classObj.wrap(nativeObject);
                }
            );

        setReferenceConstructor(name, factories.first());
    }
}
