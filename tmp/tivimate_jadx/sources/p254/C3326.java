package p254;

import android.util.SparseArray;
import java.util.List;
import p012.C0881;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p104.C1920;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3724;
import p305.C3732;
import p404.C4790;

/* renamed from: יי.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3326 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1920 f12850;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public InterfaceC2646 f12852;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f12854;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f12855;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f12856;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f12857;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f12860;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3724 f12859 = new C3724(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f12851 = new C3732(4096);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final SparseArray f12858 = new SparseArray();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3320 f12853 = new C3320();

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f12852 = interfaceC2646;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r5v8, types: [ˊﾞ.ᵎﹶ, java.lang.Object] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        int i;
        int i2;
        long j;
        InterfaceC3321 interfaceC3321;
        long j2;
        AbstractC3731.m7868(this.f12852);
        long length = interfaceC2622.getLength();
        int i3 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j3 = -9223372036854775807L;
        C3320 c3320 = this.f12853;
        if (i3 != 0 && !c3320.f12800) {
            C3724 c3724 = c3320.f12806;
            C3732 c3732 = c3320.f12805;
            if (!c3320.f12802) {
                long length2 = interfaceC2622.getLength();
                int min = (int) Math.min(20000L, length2);
                long j4 = length2 - min;
                if (interfaceC2622.getPosition() != j4) {
                    c1468.f5751 = j4;
                    return 1;
                }
                c3732.m7886(min);
                interfaceC2622.mo4600();
                interfaceC2622.mo4576(c3732.f14534, 0, min);
                int i4 = c3732.f14533;
                int i5 = c3732.f14532 - 4;
                while (true) {
                    if (i5 < i4) {
                        break;
                    }
                    if (C3320.m7144(i5, c3732.f14534) == 442) {
                        c3732.m7896(i5 + 4);
                        long m7143 = C3320.m7143(c3732);
                        if (m7143 != -9223372036854775807L) {
                            j3 = m7143;
                            break;
                        }
                    }
                    i5--;
                }
                c3320.f12803 = j3;
                c3320.f12802 = true;
                return 0;
            }
            if (c3320.f12803 == -9223372036854775807L) {
                c3320.m7145(interfaceC2622);
                return 0;
            }
            if (c3320.f12801) {
                long j5 = c3320.f12807;
                if (j5 == -9223372036854775807L) {
                    c3320.m7145(interfaceC2622);
                    return 0;
                }
                c3320.f12804 = c3724.m7826(c3320.f12803) - c3724.m7831(j5);
                c3320.m7145(interfaceC2622);
                return 0;
            }
            int min2 = (int) Math.min(20000L, interfaceC2622.getLength());
            long j6 = 0;
            if (interfaceC2622.getPosition() != j6) {
                c1468.f5751 = j6;
                return 1;
            }
            c3732.m7886(min2);
            interfaceC2622.mo4600();
            interfaceC2622.mo4576(c3732.f14534, 0, min2);
            int i6 = c3732.f14533;
            int i7 = c3732.f14532;
            while (true) {
                if (i6 >= i7 - 3) {
                    j2 = -9223372036854775807L;
                    break;
                }
                if (C3320.m7144(i6, c3732.f14534) == 442) {
                    c3732.m7896(i6 + 4);
                    long m71432 = C3320.m7143(c3732);
                    if (m71432 != -9223372036854775807L) {
                        j2 = m71432;
                        break;
                    }
                }
                i6++;
            }
            c3320.f12807 = j2;
            c3320.f12801 = true;
            return 0;
        }
        if (this.f12855) {
            i = i3;
            i2 = 4;
        } else {
            this.f12855 = true;
            long j7 = c3320.f12804;
            if (j7 != -9223372036854775807L) {
                i = i3;
                i2 = 4;
                C1920 c1920 = new C1920(new Object(), new C4790(c3320.f12806), j7, j7 + 1, 0L, length, 188L, 1000);
                this.f12850 = c1920;
                this.f12852.mo1133(c1920.f7651);
            } else {
                i = i3;
                i2 = 4;
                this.f12852.mo1133(new C2637(j7));
            }
        }
        C1920 c19202 = this.f12850;
        if (c19202 != null && c19202.f7648 != null) {
            return c19202.m4860(interfaceC2622, c1468);
        }
        interfaceC2622.mo4600();
        long mo4577 = i != 0 ? length - interfaceC2622.mo4577() : -1L;
        if (mo4577 != -1 && mo4577 < 4) {
            return -1;
        }
        C3732 c37322 = this.f12851;
        if (!interfaceC2622.mo4572(c37322.f14534, 0, i2, true)) {
            return -1;
        }
        c37322.m7896(0);
        int m7893 = c37322.m7893();
        if (m7893 == 441) {
            return -1;
        }
        if (m7893 == 442) {
            interfaceC2622.mo4576(c37322.f14534, 0, 10);
            c37322.m7896(9);
            interfaceC2622.mo4595((c37322.m7874() & 7) + 14);
            return 0;
        }
        if (m7893 == 443) {
            interfaceC2622.mo4576(c37322.f14534, 0, 2);
            c37322.m7896(0);
            interfaceC2622.mo4595(c37322.m7895() + 6);
            return 0;
        }
        if (((m7893 & (-256)) >> 8) != 1) {
            interfaceC2622.mo4595(1);
            return 0;
        }
        int i8 = m7893 & 255;
        SparseArray sparseArray = this.f12858;
        C3346 c3346 = (C3346) sparseArray.get(i8);
        if (!this.f12854) {
            if (c3346 == null) {
                if (i8 == 189) {
                    interfaceC3321 = new C3347("video/mp2p");
                    this.f12860 = true;
                    this.f12857 = interfaceC2622.getPosition();
                } else if ((m7893 & 224) == 192) {
                    interfaceC3321 = new C3325(0, null, "video/mp2p");
                    this.f12860 = true;
                    this.f12857 = interfaceC2622.getPosition();
                } else if ((m7893 & 240) == 224) {
                    interfaceC3321 = new C3340(null, "video/mp2p");
                    this.f12856 = true;
                    this.f12857 = interfaceC2622.getPosition();
                } else {
                    interfaceC3321 = null;
                }
                if (interfaceC3321 != null) {
                    interfaceC3321.mo7142(this.f12852, new C3339(i8, 256));
                    c3346 = new C3346(interfaceC3321, this.f12859);
                    sparseArray.put(i8, c3346);
                }
            }
            if (interfaceC2622.getPosition() > ((this.f12860 && this.f12856) ? this.f12857 + 8192 : 1048576L)) {
                this.f12854 = true;
                this.f12852.mo1137();
            }
        }
        interfaceC2622.mo4576(c37322.f14534, 0, 2);
        c37322.m7896(0);
        int m7895 = c37322.m7895() + 6;
        if (c3346 == null) {
            interfaceC2622.mo4595(m7895);
            return 0;
        }
        c37322.m7886(m7895);
        interfaceC2622.readFully(c37322.f14534, 0, m7895);
        c37322.m7896(6);
        InterfaceC3321 interfaceC33212 = c3346.f13070;
        C0881 c0881 = c3346.f13065;
        c37322.m7875(c0881.f3738, 0, 3);
        c0881.m3094(0);
        c0881.m3095(8);
        c3346.f13066 = c0881.m3112();
        c3346.f13067 = c0881.m3112();
        c0881.m3095(6);
        c37322.m7875(c0881.f3738, 0, c0881.m3097(8));
        c0881.m3094(0);
        C3724 c37242 = c3346.f13069;
        c3346.f13068 = 0L;
        if (c3346.f13066) {
            c0881.m3095(4);
            c0881.m3095(1);
            c0881.m3095(1);
            long m3097 = (c0881.m3097(3) << 30) | (c0881.m3097(15) << 15) | c0881.m3097(15);
            c0881.m3095(1);
            if (c3346.f13071 || !c3346.f13067) {
                j = m3097;
            } else {
                c0881.m3095(4);
                c0881.m3095(1);
                c0881.m3095(1);
                c0881.m3095(1);
                c37242.m7831((c0881.m3097(15) << 15) | (c0881.m3097(3) << 30) | c0881.m3097(15));
                c3346.f13071 = true;
                j = m3097;
            }
            c3346.f13068 = c37242.m7831(j);
        }
        interfaceC33212.mo7140(4, c3346.f13068);
        interfaceC33212.mo7138(c37322);
        interfaceC33212.mo7139(false);
        c37322.m7891(c37322.f14534.length);
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
        C3724 c3724 = this.f12859;
        boolean z = c3724.m7828() == -9223372036854775807L;
        if (!z) {
            long m7827 = c3724.m7827();
            z = (m7827 == -9223372036854775807L || m7827 == 0 || m7827 == j2) ? false : true;
        }
        if (z) {
            c3724.m7829(j2);
        }
        C1920 c1920 = this.f12850;
        if (c1920 != null) {
            c1920.m4859(j2);
        }
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.f12858;
            if (i >= sparseArray.size()) {
                return;
            }
            C3346 c3346 = (C3346) sparseArray.valueAt(i);
            c3346.f13071 = false;
            c3346.f13070.mo7141();
            i++;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        byte[] bArr = new byte[14];
        C2651 c2651 = (C2651) interfaceC2622;
        c2651.mo4572(bArr, 0, 14, false);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            c2651.m5932(bArr[13] & 7, false);
            c2651.mo4572(bArr, 0, 3, false);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                return true;
            }
        }
        return false;
    }
}
