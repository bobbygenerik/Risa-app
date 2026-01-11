package p012;

import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import ˈˋ.ʾˊ;

/* renamed from: ʻᴵ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0899 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f3793;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f3794;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f3795;

    public C0899(long j, long j2, long j3) {
        this.f3795 = j;
        this.f3794 = j2;
        this.f3793 = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0899)) {
            return false;
        }
        C0899 c0899 = (C0899) obj;
        return this.f3795 == c0899.f3795 && this.f3794 == c0899.f3794 && this.f3793 == c0899.f3793;
    }

    public final int hashCode() {
        return ʾˊ.ʾᵎ(this.f3793) + ((ʾˊ.ʾᵎ(this.f3794) + ((ʾˊ.ʾᵎ(this.f3795) + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.f3795 + ", modification time=" + this.f3794 + ", timescale=" + this.f3793;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
