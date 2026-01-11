package p047;

import j$.util.Objects;
import p305.AbstractC3731;

/* renamed from: ʽˑ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1358 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final double f5237;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f5238;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5239;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5240;

    public C1358(int i, String str, String str2) {
        boolean z = true;
        if (i == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
            z = false;
        }
        AbstractC3731.m7857(z);
        this.f5240 = str;
        this.f5239 = i;
        this.f5238 = str2;
        this.f5237 = 0.0d;
    }

    public C1358(String str, double d) {
        this.f5240 = str;
        this.f5239 = 2;
        this.f5237 = d;
        this.f5238 = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1358)) {
            return false;
        }
        C1358 c1358 = (C1358) obj;
        return this.f5239 == c1358.f5239 && Double.compare(this.f5237, c1358.f5237) == 0 && Objects.equals(this.f5240, c1358.f5240) && Objects.equals(this.f5238, c1358.f5238);
    }

    public final int hashCode() {
        return Objects.hash(this.f5240, Integer.valueOf(this.f5239), Double.valueOf(this.f5237), this.f5238);
    }
}
