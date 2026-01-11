package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import p017.AbstractC0997;

/* renamed from: com.google.android.gms.internal.measurement.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0484 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final AbstractC0997 f2243 = AbstractC0997.m3275(3, "_syn", "_err", "_el");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f2244;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f2245;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f2246;

    public C0484(String str, long j, HashMap hashMap) {
        this.f2246 = str;
        this.f2245 = j;
        HashMap hashMap2 = new HashMap();
        this.f2244 = hashMap2;
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Object m1936(Object obj, Object obj2, String str) {
        if (f2243.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0484)) {
            return false;
        }
        C0484 c0484 = (C0484) obj;
        if (this.f2245 == c0484.f2245 && this.f2246.equals(c0484.f2246)) {
            return this.f2244.equals(c0484.f2244);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f2246.hashCode() * 31;
        long j = this.f2245;
        return this.f2244.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.f2246;
        String obj = this.f2244.toString();
        int length = String.valueOf(str).length();
        long j = this.f2245;
        StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(j).length() + 9 + obj.length() + 1);
        sb.append("Event{name='");
        sb.append(str);
        sb.append("', timestamp=");
        sb.append(j);
        sb.append(", params=");
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0484 clone() {
        return new C0484(this.f2246, this.f2245, new HashMap(this.f2244));
    }
}
