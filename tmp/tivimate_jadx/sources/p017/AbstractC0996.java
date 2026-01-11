package p017;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Map;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import p137.AbstractC2305;

/* renamed from: ʼʻ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0996 implements Map, Serializable, j$.util.Map {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient C0973 f3981;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient C0986 f3982;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient C0985 f3983;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static AbstractC0996 m3270(Map map) {
        if ((map instanceof AbstractC0996) && !(map instanceof SortedMap)) {
            return (AbstractC0996) map;
        }
        Set entrySet = map.entrySet();
        ʽﹳ r1 = new ʽﹳ(AbstractC2305.m5366(entrySet) ? entrySet.size() : 4);
        r1.ᵢˏ(entrySet);
        return r1.ˑﹳ();
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
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
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return AbstractC1004.m3297(this, obj);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return AbstractC1004.m3288(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((C0987) this).size() == 0;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        int i = ((C0987) this).f3965;
        AbstractC1004.m3282(i, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(i * 8, 1073741824L));
        sb.append('{');
        AbstractC0983 it = ((C0986) entrySet()).iterator();
        boolean z = true;
        while (true) {
            C0982 c0982 = (C0982) it;
            if (!c0982.hasNext()) {
                sb.append('}');
                return sb.toString();
            }
            Map.Entry entry = (Map.Entry) c0982.next();
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
    }

    @Override // java.util.Map
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0997 keySet() {
        C0985 c0985 = this.f3983;
        if (c0985 != null) {
            return c0985;
        }
        C0987 c0987 = (C0987) this;
        C0985 c09852 = new C0985(c0987, new C0973(c0987.f3966, 0, c0987.f3965));
        this.f3983 = c09852;
        return c09852;
    }

    @Override // java.util.Map
    /* renamed from: ˈ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0962 values() {
        C0973 c0973 = this.f3981;
        if (c0973 != null) {
            return c0973;
        }
        C0987 c0987 = (C0987) this;
        C0973 c09732 = new C0973(c0987.f3966, 1, c0987.f3965);
        this.f3981 = c09732;
        return c09732;
    }

    @Override // java.util.Map
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0997 entrySet() {
        C0986 c0986 = this.f3982;
        if (c0986 != null) {
            return c0986;
        }
        C0987 c0987 = (C0987) this;
        C0986 c09862 = new C0986(c0987, c0987.f3966, c0987.f3965);
        this.f3982 = c09862;
        return c09862;
    }
}
