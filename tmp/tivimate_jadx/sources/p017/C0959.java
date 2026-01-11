package p017;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;

/* renamed from: ʼʻ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0959 extends AbstractMap {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient Map f3905;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient C1001 f3906;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3907;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient C0995 f3908;

    public C0959(C0989 c0989, Map map) {
        this.f3907 = c0989;
        this.f3905 = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        C0989 c0989 = this.f3907;
        if (this.f3905 == c0989.f3968) {
            c0989.m3256();
            return;
        }
        C0950 c0950 = new C0950(this);
        while (c0950.hasNext()) {
            c0950.next();
            c0950.remove();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f3905;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        C1001 c1001 = this.f3906;
        if (c1001 != null) {
            return c1001;
        }
        C1001 c10012 = new C1001(this);
        this.f3906 = c10012;
        return c10012;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.f3905.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.f3905;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        List list = (List) collection;
        boolean z = list instanceof RandomAccess;
        C0989 c0989 = this.f3907;
        return z ? new C1007(c0989, obj, list, null) : new C1007(c0989, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f3905.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set keySet() {
        C0989 c0989 = this.f3907;
        Set set = c0989.f3919;
        if (set != null) {
            return set;
        }
        Map map = c0989.f3968;
        Set c0994 = map instanceof NavigableMap ? new C0994(c0989, (NavigableMap) map) : map instanceof SortedMap ? new C0957(c0989, (SortedMap) map) : new C0976(c0989, map);
        c0989.f3919 = c0994;
        return c0994;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.f3905.remove(obj);
        if (collection == null) {
            return null;
        }
        C0989 c0989 = this.f3907;
        Collection m3257 = c0989.m3257();
        m3257.addAll(collection);
        c0989.f3970 -= collection.size();
        collection.clear();
        return m3257;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3905.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f3905.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        C0995 c0995 = this.f3908;
        if (c0995 != null) {
            return c0995;
        }
        C0995 c09952 = new C0995(this);
        this.f3908 = c09952;
        return c09952;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0990 m3245(Map.Entry entry) {
        Object key = entry.getKey();
        List list = (List) ((Collection) entry.getValue());
        boolean z = list instanceof RandomAccess;
        C0989 c0989 = this.f3907;
        return new C0990(key, z ? new C1007(c0989, key, list, null) : new C1007(c0989, key, list, null));
    }
}
