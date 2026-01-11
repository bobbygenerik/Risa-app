package p104;

import androidx.media3.common.ParserException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.Arrays;
import java.util.List;
import p012.C0881;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1468;
import p055.C1476;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p171.C2635;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2626;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;
import p377.C4539;
import p411.AbstractC4892;
import ʻʿ.ˈ;
import ﹶﾞ.ⁱי;

/* renamed from: ˆˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1919 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C2635 f7634;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f7636;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f7638;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC2646 f7639;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f7640;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f7642;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1476 f7643;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C1920 f7646;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2639 f7647;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f7645 = new byte[42];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f7644 = new C3732(0, new byte[32768]);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f7635 = false;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1468 f7637 = new Object();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f7641 = 0;

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f7639 = interfaceC2646;
        this.f7647 = interfaceC2646.mo1138(0, 1);
        interfaceC2646.mo1137();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        C2635 c2635;
        int i;
        InterfaceC2626 c2637;
        long j;
        long j2;
        boolean z;
        int i2 = this.f7641;
        if (i2 == 0) {
            boolean z2 = !this.f7635;
            interfaceC2622.mo4600();
            long mo4577 = interfaceC2622.mo4577();
            C1476 m5902 = AbstractC2649.m5902(interfaceC2622, z2);
            interfaceC2622.mo4595((int) (interfaceC2622.mo4577() - mo4577));
            this.f7643 = m5902;
            this.f7641 = 1;
            return 0;
        }
        byte[] bArr = this.f7645;
        if (i2 == 1) {
            interfaceC2622.mo4576(bArr, 0, bArr.length);
            interfaceC2622.mo4600();
            this.f7641 = 2;
            return 0;
        }
        int i3 = 4;
        int i4 = 3;
        if (i2 == 2) {
            C3732 c3732 = new C3732(4);
            interfaceC2622.readFully(c3732.f14534, 0, 4);
            if (c3732.m7880() != 1716281667) {
                throw ParserException.m741(null, "Failed to read FLAC stream marker.");
            }
            this.f7641 = 3;
            return 0;
        }
        int i5 = 6;
        if (i2 == 3) {
            int i6 = 0;
            C2635 c26352 = this.f7634;
            boolean z3 = false;
            while (!z3) {
                interfaceC2622.mo4600();
                byte[] bArr2 = new byte[i3];
                C0881 c0881 = new C0881(i3, bArr2);
                int i7 = i6;
                interfaceC2622.mo4576(bArr2, i7, i3);
                boolean m3112 = c0881.m3112();
                int m3097 = c0881.m3097(r10);
                int m30972 = c0881.m3097(24) + i3;
                if (m3097 == 0) {
                    byte[] bArr3 = new byte[38];
                    interfaceC2622.readFully(bArr3, i7, 38);
                    c26352 = new C2635(i3, bArr3);
                } else {
                    if (c26352 == null) {
                        throw new IllegalArgumentException();
                    }
                    C1476 c1476 = c26352.f9998;
                    if (m3097 == i4) {
                        C3732 c37322 = new C3732(m30972);
                        interfaceC2622.readFully(c37322.f14534, i7, m30972);
                        c26352 = new C2635(c26352.f9997, c26352.f9996, c26352.f9989, c26352.f9991, c26352.f9992, c26352.f9994, c26352.f9995, c26352.f9990, AbstractC2649.m5909(c37322), c26352.f9998);
                    } else {
                        if (m3097 == i3) {
                            C3732 c37323 = new C3732(m30972);
                            interfaceC2622.readFully(c37323.f14534, 0, m30972);
                            c37323.m7900(i3);
                            C1476 m5907 = AbstractC2649.m5907(Arrays.asList((String[]) AbstractC2649.m5903(c37323, false, false).ᴵˊ));
                            if (c1476 != null) {
                                m5907 = c1476.m4281(m5907);
                            }
                            c2635 = new C2635(c26352.f9997, c26352.f9996, c26352.f9989, c26352.f9991, c26352.f9992, c26352.f9994, c26352.f9995, c26352.f9990, c26352.f9993, m5907);
                        } else if (m3097 == i5) {
                            C3732 c37324 = new C3732(m30972);
                            interfaceC2622.readFully(c37324.f14534, 0, m30972);
                            c37324.m7900(4);
                            C1476 c14762 = new C1476(AbstractC0993.m3260(C4539.m9114(c37324)));
                            if (c1476 != null) {
                                c14762 = c1476.m4281(c14762);
                            }
                            c2635 = new C2635(c26352.f9997, c26352.f9996, c26352.f9989, c26352.f9991, c26352.f9992, c26352.f9994, c26352.f9995, c26352.f9990, c26352.f9993, c14762);
                        } else {
                            interfaceC2622.mo4595(m30972);
                        }
                        c26352 = c2635;
                    }
                }
                String str = AbstractC3712.f14481;
                this.f7634 = c26352;
                z3 = m3112;
                i3 = 4;
                i4 = 3;
                r10 = 7;
                i5 = 6;
                i6 = 0;
            }
            this.f7634.getClass();
            this.f7636 = Math.max(this.f7634.f9989, 6);
            C1495 m5893 = this.f7634.m5893(bArr, this.f7643);
            InterfaceC2639 interfaceC2639 = this.f7647;
            C1490 m4300 = m5893.m4300();
            m4300.f5886 = AbstractC1464.m4251("audio/flac");
            AbstractC4892.m9687(m4300, interfaceC2639);
            InterfaceC2639 interfaceC26392 = this.f7647;
            this.f7634.m5894();
            interfaceC26392.getClass();
            this.f7641 = 4;
            return 0;
        }
        long j3 = 0;
        if (i2 == 4) {
            interfaceC2622.mo4600();
            C3732 c37325 = new C3732(2);
            interfaceC2622.mo4576(c37325.f14534, 0, 2);
            int m7895 = c37325.m7895();
            if ((m7895 >> 2) != 16382) {
                interfaceC2622.mo4600();
                throw ParserException.m741(null, "First frame does not start with sync code.");
            }
            interfaceC2622.mo4600();
            this.f7640 = m7895;
            InterfaceC2646 interfaceC2646 = this.f7639;
            String str2 = AbstractC3712.f14481;
            long position = interfaceC2622.getPosition();
            long length = interfaceC2622.getLength();
            this.f7634.getClass();
            C2635 c26353 = this.f7634;
            ⁱי r3 = c26353.f9993;
            if (r3 != null && ((long[]) r3.ᴵˊ).length > 0) {
                c2637 = new C2637(c26353, position, 0);
                i = 0;
            } else if (length == -1 || c26353.f9990 <= 0) {
                i = 0;
                c2637 = new C2637(c26353.m5894());
            } else {
                int i8 = this.f7640;
                int i9 = c26353.f9989;
                ˈ r9 = new ˈ(17, c26353);
                ʽﹳ r10 = new ʽﹳ(c26353, i8);
                long m5894 = c26353.m5894();
                long j4 = c26353.f9990;
                int i10 = c26353.f9991;
                if (i10 > 0) {
                    i = 0;
                    j = ((i10 + i9) / 2) + 1;
                } else {
                    i = 0;
                    int i11 = c26353.f9997;
                    j = 64 + (((((i11 != c26353.f9996 || i11 <= 0) ? 4096L : i11) * c26353.f9994) * c26353.f9995) / 8);
                }
                C1920 c1920 = new C1920(r9, r10, m5894, j4, position, length, j, Math.max(6, i9));
                this.f7646 = c1920;
                c2637 = c1920.f7651;
            }
            interfaceC2646.mo1133(c2637);
            this.f7641 = 5;
            return i;
        }
        if (i2 != 5) {
            throw new IllegalStateException();
        }
        this.f7647.getClass();
        this.f7634.getClass();
        C1920 c19202 = this.f7646;
        if (c19202 != null && c19202.f7648 != null) {
            return c19202.m4860(interfaceC2622, c1468);
        }
        if (this.f7642 == -1) {
            C2635 c26354 = this.f7634;
            interfaceC2622.mo4600();
            interfaceC2622.mo4590(1);
            byte[] bArr4 = new byte[1];
            interfaceC2622.mo4576(bArr4, 0, 1);
            boolean z4 = (bArr4[0] & 1) == 1;
            interfaceC2622.mo4590(2);
            r10 = z4 ? 7 : 6;
            C3732 c37326 = new C3732(r10);
            byte[] bArr5 = c37326.f14534;
            int i12 = 0;
            while (i12 < r10) {
                int mo4578 = interfaceC2622.mo4578(bArr5, i12, r10 - i12);
                if (mo4578 == -1) {
                    break;
                }
                i12 += mo4578;
            }
            c37326.m7891(i12);
            interfaceC2622.mo4600();
            try {
                long m7887 = c37326.m7887();
                if (!z4) {
                    m7887 *= c26354.f9996;
                }
                j3 = m7887;
            } catch (NumberFormatException unused) {
                r3 = false;
            }
            if (!r3) {
                throw ParserException.m741(null, null);
            }
            this.f7642 = j3;
        } else {
            C3732 c37327 = this.f7644;
            int i13 = c37327.f14532;
            if (i13 < 32768) {
                int read = interfaceC2622.read(c37327.f14534, i13, 32768 - i13);
                r3 = read == -1;
                if (!r3) {
                    c37327.m7891(i13 + read);
                } else if (c37327.m7904() == 0) {
                    long j5 = this.f7642 * 1000000;
                    C2635 c26355 = this.f7634;
                    String str3 = AbstractC3712.f14481;
                    this.f7647.mo4112(j5 / c26355.f9992, 1, this.f7638, 0, null);
                    return -1;
                }
            } else {
                r3 = false;
            }
            int i14 = c37327.f14533;
            int i15 = this.f7638;
            int i16 = this.f7636;
            if (i15 < i16) {
                c37327.m7900(Math.min(i16 - i15, c37327.m7904()));
            }
            this.f7634.getClass();
            int i17 = c37327.f14533;
            while (true) {
                int i18 = c37327.f14532 - 16;
                C1468 c14682 = this.f7637;
                if (i17 <= i18) {
                    c37327.m7896(i17);
                    if (AbstractC2649.m5911(c37327, this.f7634, this.f7640, c14682)) {
                        c37327.m7896(i17);
                        j2 = c14682.f5751;
                        break;
                    }
                    i17++;
                } else {
                    if (r3) {
                        while (true) {
                            int i19 = c37327.f14532;
                            if (i17 > i19 - this.f7636) {
                                c37327.m7896(i19);
                                break;
                            }
                            c37327.m7896(i17);
                            try {
                                z = AbstractC2649.m5911(c37327, this.f7634, this.f7640, c14682);
                            } catch (IndexOutOfBoundsException unused2) {
                                z = false;
                            }
                            if (c37327.f14533 > c37327.f14532) {
                                z = false;
                            }
                            if (z) {
                                c37327.m7896(i17);
                                j2 = c14682.f5751;
                                break;
                            }
                            i17++;
                        }
                    } else {
                        c37327.m7896(i17);
                    }
                    j2 = -1;
                }
            }
            int i20 = c37327.f14533 - i14;
            c37327.m7896(i14);
            this.f7647.mo4109(i20, c37327);
            int i21 = this.f7638 + i20;
            this.f7638 = i21;
            if (j2 != -1) {
                long j6 = this.f7642 * 1000000;
                C2635 c26356 = this.f7634;
                String str4 = AbstractC3712.f14481;
                this.f7647.mo4112(j6 / c26356.f9992, 1, i21, 0, null);
                this.f7638 = 0;
                this.f7642 = j2;
            }
            int length2 = c37327.f14534.length - c37327.f14532;
            if (c37327.m7904() < 16 && length2 < 16) {
                int m7904 = c37327.m7904();
                byte[] bArr6 = c37327.f14534;
                System.arraycopy(bArr6, c37327.f14533, bArr6, 0, m7904);
                c37327.m7896(0);
                c37327.m7891(m7904);
            }
        }
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
        if (j == 0) {
            this.f7641 = 0;
        } else {
            C1920 c1920 = this.f7646;
            if (c1920 != null) {
                c1920.m4859(j2);
            }
        }
        this.f7642 = j2 != 0 ? -1L : 0L;
        this.f7638 = 0;
        this.f7644.m7886(0);
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        AbstractC2649.m5902(interfaceC2622, false);
        C3732 c3732 = new C3732(4);
        ((C2651) interfaceC2622).mo4572(c3732.f14534, 0, 4, false);
        return c3732.m7880() == 1716281667;
    }
}
