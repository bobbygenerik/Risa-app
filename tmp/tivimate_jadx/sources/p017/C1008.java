package p017;

import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: ʼʻ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1008 extends C0948 implements NavigableMap {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f4003;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1008(C0989 c0989, NavigableMap navigableMap) {
        super(c0989, navigableMap);
        this.f4003 = c0989;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = mo3231().ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return m3245(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return mo3231().ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new C1008(this.f4003, mo3231().descendingMap());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = mo3231().firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return m3245(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = mo3231().floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return m3245(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return mo3231().floorKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new C1008(this.f4003, mo3231().headMap(obj, z));
    }

    @Override // p017.C0948, java.util.SortedMap
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = mo3231().higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return m3245(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return mo3231().higherKey(obj);
    }

    @Override // p017.C0948, p017.C0959, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public final Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = mo3231().lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return m3245(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = mo3231().lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return m3245(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return mo3231().lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return m3301(((C1001) entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return m3301(((C1001) ((C0959) descendingMap()).entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new C1008(this.f4003, mo3231().subMap(obj, z, obj2, z2));
    }

    @Override // p017.C0948, java.util.SortedMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new C1008(this.f4003, mo3231().tailMap(obj, z));
    }

    @Override // p017.C0948, java.util.SortedMap
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // p017.C0948
    /* renamed from: ʽ */
    public final SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0990 m3301(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        Collection m3257 = this.f4003.m3257();
        m3257.addAll((Collection) entry.getValue());
        it.remove();
        return new C0990(entry.getKey(), DesugarCollections.unmodifiableList((List) m3257));
    }

    @Override // p017.C0948
    /* renamed from: ⁱˊ */
    public final SortedSet mo3232() {
        return new C0994(this.f4003, mo3231());
    }

    @Override // p017.C0948
    /* renamed from: ﾞᴵ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final NavigableMap mo3231() {
        return (NavigableMap) ((SortedMap) this.f3905);
    }
}
