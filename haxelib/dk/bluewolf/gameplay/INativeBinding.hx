package dk.bluewolf.gameplay;

/**
 * TODO
 */
interface INativeBinding
{
    /**
     * The native gameplay object wrapped by this class.
     *
     * This object provides access to an instance of the corresponding C++
     * gameplay class to which most of the functionality is delegated.
     * <p>The native object is initialized at construction time using
     * construction methods which the specific classes provide.</p>
     */
    @:isVar public var nativeObject(default, null):Dynamic;
}
