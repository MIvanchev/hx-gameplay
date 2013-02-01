package org.gameplay3d.immutable;

typedef ITheme_Margin = ITheme_SideRegions;
typedef ITheme_Border = ITheme_SideRegions;
typedef ITheme_Padding = ITheme_SideRegions;

/**
 * TODO
 */
interface ITheme_SideRegions
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var top(get_top, null):Float;
    public var left(get_left, null):Float;
    public var bottom(get_bottom, null):Float;
    public var right(get_right, null):Float;
}

// END
