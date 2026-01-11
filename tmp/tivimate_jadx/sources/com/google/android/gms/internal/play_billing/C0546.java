package com.google.android.gms.internal.play_billing;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.play_billing.ʿـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0546 extends LinkedHashMap {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0546 f2323;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f2324 = true;

    static {
        C0546 c0546 = new C0546();
        f2323 = c0546;
        c0546.f2324 = false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m2102(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof EnumC0583) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        Charset charset = AbstractC0634.f2471;
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
        m2103();
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
            i += m2102(entry.getValue()) ^ m2102(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        m2103();
        Charset charset = AbstractC0634.f2471;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        m2103();
        for (Object obj : map.keySet()) {
            Charset charset = AbstractC0634.f2471;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m2103();
        return super.remove(obj);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2103() {
        if (!this.f2324) {
            throw new UnsupportedOperationException();
        }
    }
}
