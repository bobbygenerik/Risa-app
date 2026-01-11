package p079;

import java.util.List;
import p004.C0795;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p135.C2217;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: ʿʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1685 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1681 f6838;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6839;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C0795 f6840;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f6841;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f6842;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2217 f6843;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2622 f6844;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2646 f6845;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f6846 = new C3732(2);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f6847 = -1;

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f6845 = interfaceC2646;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4604() {
        InterfaceC2646 interfaceC2646 = this.f6845;
        interfaceC2646.getClass();
        interfaceC2646.mo1137();
        this.f6845.mo1133(new C2637(-9223372036854775807L));
        this.f6839 = 6;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0179  */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r26, p055.C1468 r27) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p079.C1685.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
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
        if (j == 0) {
            this.f6839 = 0;
            this.f6840 = null;
        } else if (this.f6839 == 5) {
            C0795 c0795 = this.f6840;
            c0795.getClass();
            c0795.mo2908(j, j2);
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
        C0795 c0795 = this.f6840;
        if (c0795 != null) {
            c0795.getClass();
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        C2651 c2651 = (C2651) interfaceC2622;
        C3732 c3732 = this.f6846;
        c3732.m7886(2);
        c2651.mo4572(c3732.f14534, 0, 2, false);
        if (c3732.m7895() == 65496) {
            c3732.m7886(2);
            c2651.mo4572(c3732.f14534, 0, 2, false);
            int m7895 = c3732.m7895();
            this.f6841 = m7895;
            if (m7895 == 65504) {
                c3732.m7886(2);
                c2651.mo4572(c3732.f14534, 0, 2, false);
                c2651.m5932(c3732.m7895() - 2, false);
                c3732.m7886(2);
                c2651.mo4572(c3732.f14534, 0, 2, false);
                this.f6841 = c3732.m7895();
            }
            if (this.f6841 == 65505) {
                return true;
            }
        }
        return false;
    }
}
