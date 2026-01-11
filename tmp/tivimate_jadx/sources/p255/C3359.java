package p255;

import androidx.datastore.preferences.protobuf.C0025;
import j$.util.Map;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* renamed from: יـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3359 extends C3368 implements Map, j$.util.Map {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C0025 f13140;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3356 f13141;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3366 f13142;

    public C3359() {
        super(0);
    }

    public C3359(C3359 c3359) {
        super(0);
        mo4687(c3359);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C0025 c0025 = this.f13140;
        if (c0025 != null) {
            return c0025;
        }
        C0025 c00252 = new C0025(this, 2);
        this.f13140 = c00252;
        return c00252;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public final Set keySet() {
        C3366 c3366 = this.f13142;
        if (c3366 != null) {
            return c3366;
        }
        C3366 c33662 = new C3366(this);
        this.f13142 = c33662;
        return c33662;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        m7223(map.size() + this.f13167);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final Collection values() {
        C3356 c3356 = this.f13141;
        if (c3356 != null) {
            return c3356;
        }
        C3356 c33562 = new C3356(this);
        this.f13141 = c33562;
        return c33562;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m7195(Collection collection) {
        int i = this.f13167;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (!collection.contains(m7225(i2))) {
                mo4688(i2);
            }
        }
        return i != this.f13167;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m7196(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m7197(Collection collection) {
        int i = this.f13167;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i != this.f13167;
    }
}
