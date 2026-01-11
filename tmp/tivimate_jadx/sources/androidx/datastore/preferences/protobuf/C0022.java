package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0022 implements Map.Entry, Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0062 f406;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Comparable f407;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f408;

    public C0022(C0062 c0062, Comparable comparable, Object obj) {
        this.f406 = c0062;
        this.f407 = comparable;
        this.f408 = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f407.compareTo(((C0022) obj).f407);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f407;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.f408;
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
    public final Object getKey() {
        return this.f407;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f408;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f407;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f408;
        return (obj != null ? obj.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f406.m377();
        Object obj2 = this.f408;
        this.f408 = obj;
        return obj2;
    }

    public final String toString() {
        return this.f407 + "=" + this.f408;
    }
}
