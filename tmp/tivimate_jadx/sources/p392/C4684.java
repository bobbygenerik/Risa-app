package p392;

import j$.util.Objects;
import p305.AbstractC3731;
import p420.C4987;

/* renamed from: ⁱי.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4684 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f17652;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f17653;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean f17654;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f17655;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f17656;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f17657;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f17658;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f17659;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4987 f17660;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f17661;

    public C4684(C4987 c4987, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6 = true;
        AbstractC3731.m7849(!z5 || z3);
        AbstractC3731.m7849(!z4 || z3);
        if (z2 && (z3 || z4 || z5)) {
            z6 = false;
        }
        AbstractC3731.m7849(z6);
        this.f17660 = c4987;
        this.f17659 = j;
        this.f17653 = j2;
        this.f17655 = j3;
        this.f17656 = j4;
        this.f17661 = z;
        this.f17657 = z2;
        this.f17658 = z3;
        this.f17652 = z4;
        this.f17654 = z5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C4684.class == obj.getClass()) {
            C4684 c4684 = (C4684) obj;
            if (this.f17659 == c4684.f17659 && this.f17653 == c4684.f17653 && this.f17655 == c4684.f17655 && this.f17656 == c4684.f17656 && this.f17661 == c4684.f17661 && this.f17657 == c4684.f17657 && this.f17658 == c4684.f17658 && this.f17652 == c4684.f17652 && this.f17654 == c4684.f17654 && Objects.equals(this.f17660, c4684.f17660)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f17660.hashCode() + 527) * 31) + ((int) this.f17659)) * 31) + ((int) this.f17653)) * 31) + ((int) this.f17655)) * 31) + ((int) this.f17656)) * 31) + (this.f17661 ? 1 : 0)) * 31) + (this.f17657 ? 1 : 0)) * 31) + (this.f17658 ? 1 : 0)) * 31) + (this.f17652 ? 1 : 0)) * 31) + (this.f17654 ? 1 : 0);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4684 m9384(long j) {
        if (j == this.f17659) {
            return this;
        }
        return new C4684(this.f17660, j, this.f17653, this.f17655, this.f17656, this.f17661, this.f17657, this.f17658, this.f17652, this.f17654);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4684 m9385(long j) {
        if (j == this.f17653) {
            return this;
        }
        return new C4684(this.f17660, this.f17659, j, this.f17655, this.f17656, this.f17661, this.f17657, this.f17658, this.f17652, this.f17654);
    }
}
