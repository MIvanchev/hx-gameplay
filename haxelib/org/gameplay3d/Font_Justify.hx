package org.gameplay3d;

class Font_Justify
{
    public static inline var ALIGN_LEFT = 0x01;
    public static inline var ALIGN_HCENTER = 0x02;
    public static inline var ALIGN_RIGHT = 0x04;
    public static inline var ALIGN_TOP = 0x10;
    public static inline var ALIGN_VCENTER = 0x20;
    public static inline var ALIGN_BOTTOM = 0x40;
    public static inline var ALIGN_TOP_LEFT = ALIGN_TOP | ALIGN_LEFT;
    public static inline var ALIGN_VCENTER_LEFT = ALIGN_VCENTER | ALIGN_LEFT;
    public static inline var ALIGN_BOTTOM_LEFT = ALIGN_BOTTOM | ALIGN_LEFT;
    public static inline var ALIGN_TOP_HCENTER = ALIGN_TOP | ALIGN_HCENTER;
    public static inline var ALIGN_VCENTER_HCENTER = ALIGN_VCENTER | ALIGN_HCENTER;
    public static inline var ALIGN_BOTTOM_HCENTER = ALIGN_BOTTOM | ALIGN_HCENTER;
    public static inline var ALIGN_TOP_RIGHT = ALIGN_TOP | ALIGN_RIGHT;
    public static inline var ALIGN_VCENTER_RIGHT = ALIGN_VCENTER | ALIGN_RIGHT;
    public static inline var ALIGN_BOTTOM_RIGHT = ALIGN_BOTTOM | ALIGN_RIGHT;
}

// END
