package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.measurement.ᵎﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0454 extends LinkedHashMap {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0454 f2205;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f2206 = true;

    static {
        C0454 c0454 = new C0454();
        f2205 = c0454;
        c0454.f2206 = false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m1885(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof InterfaceC0361) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        Charset charset = AbstractC0405.f2135;
        int i = length;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m1886();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return isEmpty() ? Collections.EMPTY_SET : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : entrySet()) {
            i += m1885(entry.getValue()) ^ m1885(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        m1886();
        Charset charset = AbstractC0405.f2135;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        m1886();
        for (Object obj : map.keySet()) {
            Charset charset = AbstractC0405.f2135;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m1886();
        return super.remove(obj);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1886() {
        if (!this.f2206) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.LinkedHashMap, com.google.android.gms.internal.measurement.ᵎﾞ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0454 m1887() {
        if (isEmpty()) {
            return new C0454();
        }
        ?? linkedHashMap = new LinkedHashMap(this);
        linkedHashMap.f2206 = true;
        return linkedHashMap;
    }
}
