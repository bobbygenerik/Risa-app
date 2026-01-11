package p203;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p171.C2644;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.C3732;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˎـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2917 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f11019;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C2916 f11020;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f11022;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f11024;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C2918 f11025;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2915 f11026;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f11027;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f11028;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f11029;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f11030;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f11033;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2646 f11034;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f11032 = new C3732(4);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f11031 = new C3732(9);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f11021 = new C3732(11);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3732 f11023 = new C3732();

    /* JADX WARN: Type inference failed for: r0v4, types: [ʽⁱ.ᵎﹶ, ˎـ.ʽ] */
    public C2917() {
        ?? r0 = new ᵎﹶ(new C2644());
        r0.f11012 = -9223372036854775807L;
        r0.f11010 = new long[0];
        r0.f11011 = new long[0];
        this.f11026 = r0;
        this.f11028 = 1;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f11034 = interfaceC2646;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 m6445(InterfaceC2622 interfaceC2622) {
        int i = this.f11033;
        C3732 c3732 = this.f11023;
        byte[] bArr = c3732.f14534;
        if (i > bArr.length) {
            c3732.m7897(0, new byte[Math.max(bArr.length * 2, i)]);
        } else {
            c3732.m7896(0);
        }
        c3732.m7891(this.f11033);
        interfaceC2622.readFully(c3732.f14534, 0, this.f11033);
        return c3732;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v5, types: [ˎـ.ﹳٴ, ʽⁱ.ᵎﹶ] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r29, p055.C1468 r30) {
        /*
            Method dump skipped, instructions count: 1119
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p203.C2917.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
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
            this.f11028 = 1;
            this.f11030 = false;
        } else {
            this.f11028 = 3;
        }
        this.f11022 = 0;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        C3732 c3732 = this.f11032;
        C2651 c2651 = (C2651) interfaceC2622;
        c2651.mo4572(c3732.f14534, 0, 3, false);
        c3732.m7896(0);
        if (c3732.m7894() == 4607062) {
            c2651.mo4572(c3732.f14534, 0, 2, false);
            c3732.m7896(0);
            if ((c3732.m7895() & 250) == 0) {
                c2651.mo4572(c3732.f14534, 0, 4, false);
                c3732.m7896(0);
                int m7893 = c3732.m7893();
                c2651.f10070 = 0;
                c2651.m5932(m7893, false);
                c2651.mo4572(c3732.f14534, 0, 4, false);
                c3732.m7896(0);
                if (c3732.m7893() == 0) {
                    return true;
                }
            }
        }
        return false;
    }
}
