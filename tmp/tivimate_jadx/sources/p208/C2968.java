package p208;

import p152.AbstractC2444;
import p435.C5140;

/* renamed from: ˎᵢ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2968 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C5140 f11341 = new C5140("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C5140 f11342 = new C5140(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String[] f11343;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11344;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11345;

    public C2968(String str, String str2, String[] strArr) {
        this.f11345 = str;
        this.f11344 = str2;
        this.f11343 = strArr;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2968) && AbstractC2444.m5562(((C2968) obj).f11345, this.f11345);
    }

    public final int hashCode() {
        return this.f11345.hashCode();
    }

    public final String toString() {
        return this.f11345;
    }
}
