package com.google.android.gms.internal.play_billing;

import j$.util.Map;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import p307.AbstractC3740;

/* renamed from: com.google.android.gms.internal.play_billing.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0523 implements Map, Serializable, j$.util.Map {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient C0533 f2288;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient C0540 f2289;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient C0613 f2290;

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
        C0533 c0533 = this.f2288;
        if (c0533 == null) {
            C0558 c0558 = (C0558) this;
            C0533 c05332 = new C0533(c0558.f2346, 1, c0558.f2345);
            this.f2288 = c05332;
            c0533 = c05332;
        }
        return c0533.contains(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C0540 c0540 = this.f2289;
        if (c0540 != null) {
            return c0540;
        }
        C0558 c0558 = (C0558) this;
        C0540 c05402 = new C0540(c0558, c0558.f2346, c0558.f2345);
        this.f2289 = c05402;
        return c05402;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
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
        C0540 c0540 = this.f2289;
        if (c0540 == null) {
            C0558 c0558 = (C0558) this;
            C0540 c05402 = new C0540(c0558, c0558.f2346, c0558.f2345);
            this.f2289 = c05402;
            c0540 = c05402;
        }
        Iterator it = c0540.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((C0558) this).size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        C0613 c0613 = this.f2290;
        if (c0613 != null) {
            return c0613;
        }
        C0558 c0558 = (C0558) this;
        C0613 c06132 = new C0613(c0558, new C0533(c0558.f2346, 0, c0558.f2345));
        this.f2290 = c06132;
        return c06132;
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
        int i = ((C0558) this).f2345;
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "size cannot be negative but was: "));
        }
        StringBuilder sb = new StringBuilder((int) Math.min(i * 8, 1073741824L));
        sb.append('{');
        Iterator it = ((C0540) entrySet()).iterator();
        boolean z = true;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        C0533 c0533 = this.f2288;
        if (c0533 != null) {
            return c0533;
        }
        C0558 c0558 = (C0558) this;
        C0533 c05332 = new C0533(c0558.f2346, 1, c0558.f2345);
        this.f2288 = c05332;
        return c05332;
    }
}
