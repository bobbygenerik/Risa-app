package p425;

import p004.C0803;

/* renamed from: ﹶ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5053 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C5053 f19013 = new Object().m2923();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f19014;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f19015;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f19016;

    public C5053(C0803 c0803) {
        this.f19016 = c0803.f3423;
        this.f19015 = c0803.f3422;
        this.f19014 = c0803.f3421;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5053.class != obj.getClass()) {
            return false;
        }
        C5053 c5053 = (C5053) obj;
        return this.f19016 == c5053.f19016 && this.f19015 == c5053.f19015 && this.f19014 == c5053.f19014;
    }

    public final int hashCode() {
        return ((this.f19016 ? 1 : 0) << 2) + ((this.f19015 ? 1 : 0) << 1) + (this.f19014 ? 1 : 0);
    }
}
