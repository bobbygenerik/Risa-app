package p135;

import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import ˈˋ.ʾˊ;

/* renamed from: ˉʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2217 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f8685;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8686;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f8687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f8688;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8689;

    public C2217(long j, long j2, long j3, long j4, long j5) {
        this.f8689 = j;
        this.f8688 = j2;
        this.f8685 = j3;
        this.f8686 = j4;
        this.f8687 = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2217.class == obj.getClass()) {
            C2217 c2217 = (C2217) obj;
            if (this.f8689 == c2217.f8689 && this.f8688 == c2217.f8688 && this.f8685 == c2217.f8685 && this.f8686 == c2217.f8686 && this.f8687 == c2217.f8687) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ʾˊ.ʾᵎ(this.f8687) + ((ʾˊ.ʾᵎ(this.f8686) + ((ʾˊ.ʾᵎ(this.f8685) + ((ʾˊ.ʾᵎ(this.f8688) + ((ʾˊ.ʾᵎ(this.f8689) + 527) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f8689 + ", photoSize=" + this.f8688 + ", photoPresentationTimestampUs=" + this.f8685 + ", videoStartPosition=" + this.f8686 + ", videoSize=" + this.f8687;
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
