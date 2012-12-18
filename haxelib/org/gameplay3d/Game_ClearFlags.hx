package org.gameplay3d;

class Game_ClearFlags
{
    public static inline var CLEAR_COLOR = 0x00004000; // GL_COLOR_BUFFER_BIT
    public static inline var CLEAR_DEPTH = 0x00000100; // GL_DEPTH_BUFFER_BIT,
    public static inline var CLEAR_STENCIL = 0x00000400; // GL_STENCIL_BUFFER_BIT,
    public static inline var CLEAR_COLOR_DEPTH = CLEAR_COLOR | CLEAR_DEPTH;
    public static inline var CLEAR_COLOR_STENCIL = CLEAR_COLOR | CLEAR_STENCIL;
    public static inline var CLEAR_DEPTH_STENCIL = CLEAR_DEPTH | CLEAR_STENCIL;
    public static inline var CLEAR_COLOR_DEPTH_STENCIL = CLEAR_COLOR | CLEAR_DEPTH | CLEAR_STENCIL;
}

// END
