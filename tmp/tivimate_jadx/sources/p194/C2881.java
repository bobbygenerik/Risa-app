package p194;

import java.io.EOFException;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1476;
import p084.C1729;
import p094.C1860;
import p171.AbstractC2649;
import p171.C2619;
import p171.C2620;
import p171.C2644;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: ˎʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2881 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC2639 f10803;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f10804;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2620 f10805;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f10806;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2619 f10807;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f10808;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f10809;

    /* renamed from: ˏי, reason: contains not printable characters */
    public long f10810;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1729 f10811;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f10812;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C1476 f10813;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC2646 f10814;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f10815;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2639 f10816;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public InterfaceC2887 f10817;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f10818;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f10819;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f10820;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f10821;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2644 f10822;

    public C2881(int i) {
        this(-9223372036854775807L);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, ˊﾞ.ʼʼ] */
    public C2881(long j) {
        this.f10819 = j;
        this.f10818 = new C3732(10);
        this.f10805 = new Object();
        this.f10807 = new C2619();
        this.f10821 = -9223372036854775807L;
        this.f10811 = new C1729(1);
        C2644 c2644 = new C2644();
        this.f10822 = c2644;
        this.f10803 = c2644;
        this.f10809 = -1L;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f10814 = interfaceC2646;
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(0, 1);
        this.f10816 = mo1138;
        this.f10803 = mo1138;
        this.f10814.mo1137();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6385() {
        InterfaceC2887 interfaceC2887 = this.f10817;
        if ((interfaceC2887 instanceof C2886) && ((C2886) interfaceC2887).mo2907()) {
            long j = this.f10809;
            if (j == -1 || j == this.f10817.mo6383()) {
                return;
            }
            C2886 c2886 = (C2886) this.f10817;
            this.f10817 = new C2886(this.f10809, c2886.f10842, c2886.f10835, c2886.f10837, c2886.f10840);
            InterfaceC2646 interfaceC2646 = this.f10814;
            interfaceC2646.getClass();
            interfaceC2646.mo1133(this.f10817);
            this.f10816.getClass();
            this.f10817.mo2903();
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r9.mo4577() > (r2 - 4)) goto L12;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6386(p171.InterfaceC2622 r9) {
        /*
            r8 = this;
            ˎʼ.ﾞᴵ r0 = r8.f10817
            r1 = 1
            if (r0 == 0) goto L1b
            long r2 = r0.mo6383()
            r4 = -1
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L1b
            long r4 = r9.mo4577()
            r6 = 4
            long r2 = r2 - r6
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L1b
            goto L27
        L1b:
            ᐧˎ.ﹳᐧ r0 = r8.f10818     // Catch: java.io.EOFException -> L27
            byte[] r0 = r0.f14534     // Catch: java.io.EOFException -> L27
            r2 = 0
            r3 = 4
            boolean r9 = r9.mo4572(r0, r2, r3, r1)     // Catch: java.io.EOFException -> L27
            r9 = r9 ^ r1
            return r9
        L27:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p194.C2881.m6386(ˊﾞ.ʼᐧ):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0072, code lost:
    
        if (r3 != 1231971951) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0379  */
    /* JADX WARN: Type inference failed for: r2v54, types: [ˊﾞ.יـ] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r54, p055.C1468 r55) {
        /*
            Method dump skipped, instructions count: 1310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p194.C2881.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m6387(InterfaceC2622 interfaceC2622, boolean z) {
        int i;
        int i2;
        int m5910;
        int i3 = z ? 32768 : 131072;
        interfaceC2622.mo4600();
        if (interfaceC2622.getPosition() == 0) {
            C3732 c3732 = this.f10811.f7080;
            int i4 = 0;
            C1476 c1476 = null;
            while (true) {
                try {
                    interfaceC2622.mo4576(c3732.f14534, 0, 10);
                    c3732.m7896(0);
                    if (c3732.m7894() != 4801587) {
                        break;
                    }
                    c3732.m7900(3);
                    int m7881 = c3732.m7881();
                    int i5 = m7881 + 10;
                    if (c1476 == null) {
                        byte[] bArr = new byte[i5];
                        System.arraycopy(c3732.f14534, 0, bArr, 0, 10);
                        interfaceC2622.mo4576(bArr, 10, m7881);
                        c1476 = new C1860(null).m4809(i5, bArr);
                    } else {
                        interfaceC2622.mo4590(m7881);
                    }
                    i4 += i5;
                } catch (EOFException unused) {
                }
            }
            interfaceC2622.mo4600();
            interfaceC2622.mo4590(i4);
            this.f10813 = c1476;
            if (c1476 != null) {
                this.f10807.m5880(c1476);
            }
            i = (int) interfaceC2622.mo4577();
            if (!z) {
                interfaceC2622.mo4595(i);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i6 = i2;
        int i7 = i6;
        while (true) {
            if (!m6386(interfaceC2622)) {
                C3732 c37322 = this.f10818;
                c37322.m7896(0);
                int m7893 = c37322.m7893();
                if ((i2 == 0 || ((-128000) & m7893) == (i2 & (-128000))) && (m5910 = AbstractC2649.m5910(m7893)) != -1) {
                    i6++;
                    if (i6 != 1) {
                        if (i6 == 4) {
                            break;
                        }
                    } else {
                        this.f10805.m5882(m7893);
                        i2 = m7893;
                    }
                    interfaceC2622.mo4590(m5910 - 4);
                } else {
                    int i8 = i7 + 1;
                    if (i7 == i3) {
                        if (z) {
                            return false;
                        }
                        m6385();
                        throw new EOFException();
                    }
                    if (z) {
                        interfaceC2622.mo4600();
                        interfaceC2622.mo4590(i + i8);
                    } else {
                        interfaceC2622.mo4595(1);
                    }
                    i6 = 0;
                    i7 = i8;
                    i2 = 0;
                }
            } else if (i6 <= 0) {
                m6385();
                throw new EOFException();
            }
        }
        if (z) {
            interfaceC2622.mo4595(i + i7);
        } else {
            interfaceC2622.mo4600();
        }
        this.f10806 = i2;
        return true;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        this.f10806 = 0;
        this.f10821 = -9223372036854775807L;
        this.f10808 = 0L;
        this.f10804 = 0;
        this.f10810 = j2;
        if (this.f10817 instanceof AbstractC2885) {
            throw null;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        return m6387(interfaceC2622, true);
    }
}
