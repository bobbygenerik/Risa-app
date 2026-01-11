package p017;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: ʼʻ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0948 extends C0959 implements SortedMap {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3888;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public SortedSet f3889;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0948(C0989 c0989, SortedMap sortedMap) {
        super(c0989, sortedMap);
        this.f3888 = c0989;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return mo3231().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return mo3231().firstKey();
    }

    @Override // java.util.SortedMap
    public SortedMap headMap(Object obj) {
        return new C0948(this.f3888, mo3231().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return mo3231().lastKey();
    }

    @Override // java.util.SortedMap
    public SortedMap subMap(Object obj, Object obj2) {
        return new C0948(this.f3888, mo3231().subMap(obj, obj2));
    }

    @Override // java.util.SortedMap
    public SortedMap tailMap(Object obj) {
        return new C0948(this.f3888, mo3231().tailMap(obj));
    }

    @Override // p017.C0959, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f3889;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet mo3232 = mo3232();
        this.f3889 = mo3232;
        return mo3232;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public SortedMap mo3231() {
        return (SortedMap) this.f3905;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public SortedSet mo3232() {
        return new C0957(this.f3888, mo3231());
    }
}
