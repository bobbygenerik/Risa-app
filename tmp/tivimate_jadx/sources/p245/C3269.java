package p245;

import j$.util.Objects;
import p035.AbstractC1220;
import p229.C3125;

/* renamed from: יʻ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3269 extends AbstractC3256 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3261 f12601;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f12602;

    public C3269(int i, C3261 c3261) {
        this.f12602 = i;
        this.f12601 = c3261;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3125 m7092() {
        C3125 c3125 = new C3125(1, false);
        c3125.f11943 = null;
        c3125.f11941 = C3261.f12562;
        return c3125;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3269)) {
            return false;
        }
        C3269 c3269 = (C3269) obj;
        return c3269.f12602 == this.f12602 && c3269.f12601 == this.f12601;
    }

    public final int hashCode() {
        return Objects.hash(C3269.class, Integer.valueOf(this.f12602), this.f12601);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesGcmSiv Parameters (variant: ");
        sb.append(this.f12601);
        sb.append(", ");
        return AbstractC1220.m3782(sb, this.f12602, "-byte key)");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12601 != C3261.f12562;
    }
}
