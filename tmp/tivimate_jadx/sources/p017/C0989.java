package p017;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* renamed from: ʼʻ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0989 extends AbstractC0965 implements Serializable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient Map f3968;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public transient C0963 f3969;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public transient int f3970;

    public C0989(Map map) {
        if (!map.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f3968 = map;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3256() {
        Map map = this.f3968;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f3970 = 0;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Collection m3257() {
        return (List) this.f3969.get();
    }

    @Override // p017.AbstractC0965
    /* renamed from: ﹳٴ */
    public final Map mo3247() {
        Map map = this.f3918;
        if (map != null) {
            return map;
        }
        Map map2 = this.f3968;
        Map c1008 = map2 instanceof NavigableMap ? new C1008(this, (NavigableMap) map2) : map2 instanceof SortedMap ? new C0948(this, (SortedMap) map2) : new C0959(this, map2);
        this.f3918 = c1008;
        return c1008;
    }
}
