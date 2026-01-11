package p254;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p171.C2637;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: יי.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3323 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12827;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3347 f12829 = new C3347(0, 1, null, "audio/ac4");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f12828 = new C3732(16384);

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f12829.mo7142(interfaceC2646, new C3339(0, 1));
        interfaceC2646.mo1137();
        interfaceC2646.mo1133(new C2637(-9223372036854775807L));
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        C3732 c3732 = this.f12828;
        int read = interfaceC2622.read(c3732.f14534, 0, 16384);
        if (read == -1) {
            return -1;
        }
        c3732.m7896(0);
        c3732.m7891(read);
        boolean z = this.f12827;
        C3347 c3347 = this.f12829;
        if (!z) {
            c3347.f13077 = 0L;
            this.f12827 = true;
        }
        c3347.mo7138(c3732);
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
        this.f12827 = false;
        this.f12829.mo7141();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
    
        return false;
     */
    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2910(p171.InterfaceC2622 r15) {
        /*
            r14 = this;
            ᐧˎ.ﹳᐧ r0 = new ᐧˎ.ﹳᐧ
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = r2
        L9:
            byte[] r4 = r0.f14534
            r5 = r15
            ˊﾞ.ﾞʻ r5 = (p171.C2651) r5
            r5.mo4572(r4, r2, r1, r2)
            r0.m7896(r2)
            int r4 = r0.m7894()
            r6 = 4801587(0x494433, float:6.728456E-39)
            r7 = 3
            if (r4 == r6) goto L90
            r5.f10070 = r2
            r5.m5932(r3, r2)
            r15 = r2
            r1 = r3
        L25:
            byte[] r4 = r0.f14534
            r6 = 7
            r5.mo4572(r4, r2, r6, r2)
            r0.m7896(r2)
            int r4 = r0.m7895()
            r8 = 44096(0xac40, float:6.1792E-41)
            r9 = 44097(0xac41, float:6.1793E-41)
            if (r4 == r8) goto L4c
            if (r4 == r9) goto L4c
            r5.f10070 = r2
            int r1 = r1 + 1
            int r15 = r1 - r3
            r4 = 8192(0x2000, float:1.148E-41)
            if (r15 < r4) goto L47
            goto L89
        L47:
            r5.m5932(r1, r2)
            r15 = r2
            goto L25
        L4c:
            r8 = 1
            int r15 = r15 + r8
            r10 = 4
            if (r15 < r10) goto L52
            return r8
        L52:
            byte[] r8 = r0.f14534
            int r11 = r8.length
            r12 = -1
            if (r11 >= r6) goto L5a
            r11 = r12
            goto L87
        L5a:
            r11 = 2
            r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 8
            r13 = r8[r7]
            r13 = r13 & 255(0xff, float:3.57E-43)
            r11 = r11 | r13
            r13 = 65535(0xffff, float:9.1834E-41)
            if (r11 != r13) goto L81
            r10 = r8[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            int r10 = r10 << 16
            r11 = 5
            r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 8
            r10 = r10 | r11
            r11 = 6
            r8 = r8[r11]
            r8 = r8 & 255(0xff, float:3.57E-43)
            r11 = r10 | r8
            goto L82
        L81:
            r6 = r10
        L82:
            if (r4 != r9) goto L86
            int r6 = r6 + 2
        L86:
            int r11 = r11 + r6
        L87:
            if (r11 != r12) goto L8a
        L89:
            return r2
        L8a:
            int r11 = r11 + (-7)
            r5.m5932(r11, r2)
            goto L25
        L90:
            r0.m7900(r7)
            int r4 = r0.m7881()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.m5932(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3323.mo2910(ˊﾞ.ʼᐧ):boolean");
    }
}
