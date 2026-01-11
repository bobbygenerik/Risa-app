package com.google.android.gms.internal.measurement;

import java.util.Map;

/* renamed from: com.google.android.gms.internal.measurement.ʾˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0285 implements Map.Entry, Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0328 f1873;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Comparable f1874;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f1875;

    public C0285(C0328 c0328, Comparable comparable, Object obj) {
        this.f1873 = c0328;
        this.f1874 = comparable;
        this.f1875 = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f1874.compareTo(((C0285) obj).f1874);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f1874;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.f1875;
                    Object value = entry.getValue();
                    if (obj2 == null ? value == null : obj2.equals(value)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f1874;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f1875;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f1874;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f1875;
        return (obj != null ? obj.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f1873.m1579();
        Object obj2 = this.f1875;
        this.f1875 = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f1874);
        String valueOf2 = String.valueOf(this.f1875);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
