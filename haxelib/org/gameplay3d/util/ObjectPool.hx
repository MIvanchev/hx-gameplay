package org.gameplay3d.util;

import haxe.FastList;

@:generic
private class Entry<T : GameplayObject>
{
    public var object:T;
    public var free:Bool;

    public function new(object)
    {
        this.object = object;
        this.free = true;
    }
}

/**
 * TODO
 */
@:generic
class ObjectPool<T : GameplayObject>
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var entries:FastList<Entry<T>>;
    var constructor:Void->T;

    /**
     * TODO
     */
    public function new(constructor:Void->T, initialCapacity:Int = 5)
    {
        if (initialCapacity < 0)
            initialCapacity = 5;

        this.entries = new FastList<Entry<T>>();
        this.constructor = constructor;

        allocate(if (initialCapacity < 0) 5 else initialCapacity);
    }

    /**
     * TODO
     */
    public function acquire()
    {
        for (entry in entries)
        {
            if (entry.free)
            {
                entry.free = false;
                return entry.object;
            }
        }

        allocate(1);
        var entry = entries.first();
        entry.free = false;
        return entry.object;
    }

    /**
     * TODO
     */
    public function release(object)
    {
        for (entry in entries)
        {
            if (entry.object == object)
            {
                entry.free = true;
                return;
            }
        }
    }

    function allocate(count = 1)
    {
        while (count-- > 0)
           entries.add(new Entry<T>(constructor()));
    }
}
