package p171;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1468;
import p055.C1490;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˊﾞ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2624 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f9939;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f9940;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f9941;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC2639 f9942;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f9943;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9944;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2646 f9945;

    public C2624(int i, int i2, String str) {
        this.f9944 = i;
        this.f9943 = i2;
        this.f9939 = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [ˊﾞ.ʾˋ, java.lang.Object] */
    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f9945 = interfaceC2646;
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(1024, 4);
        this.f9942 = mo1138;
        C1490 c1490 = new C1490();
        String str = this.f9939;
        c1490.f5886 = AbstractC1464.m4251(str);
        c1490.f5861 = AbstractC1464.m4251(str);
        AbstractC4892.m9687(c1490, mo1138);
        this.f9945.mo1137();
        this.f9945.mo1133(new Object());
        this.f9941 = 1;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        int i = this.f9941;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        InterfaceC2639 interfaceC2639 = this.f9942;
        interfaceC2639.getClass();
        int mo4107 = interfaceC2639.mo4107(interfaceC2622, 1024, true);
        if (mo4107 != -1) {
            this.f9940 += mo4107;
            return 0;
        }
        this.f9941 = 2;
        this.f9942.mo4112(0L, 1, this.f9940, 0, null);
        this.f9940 = 0;
        return 0;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        if (j == 0 || this.f9941 == 1) {
            this.f9941 = 1;
            this.f9940 = 0;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        int i = this.f9943;
        int i2 = this.f9944;
        AbstractC3731.m7857((i2 == -1 || i == -1) ? false : true);
        C3732 c3732 = new C3732(i);
        ((C2651) interfaceC2622).mo4572(c3732.f14534, 0, i, false);
        return c3732.m7895() == i2;
    }
}
