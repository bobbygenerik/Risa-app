package p254;

import p012.C0881;
import p137.AbstractC2305;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3724;
import p305.C3732;

/* renamed from: יי.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3327 implements InterfaceC3333 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f12861;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f12863;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12864;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3724 f12865;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f12866;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f12867;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f12868;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3321 f12870;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f12871;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f12872;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0881 f12869 = new C0881(10, new byte[10]);

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12862 = 0;

    public C3327(InterfaceC3321 interfaceC3321) {
        this.f12870 = interfaceC3321;
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ʽ */
    public final void mo7146(int i, C3732 c3732) {
        AbstractC3731.m7868(this.f12865);
        int i2 = i & 1;
        int i3 = -1;
        int i4 = 2;
        InterfaceC3321 interfaceC3321 = this.f12870;
        if (i2 != 0) {
            int i5 = this.f12862;
            if (i5 != 0 && i5 != 1) {
                if (i5 == 2) {
                    AbstractC3731.m7850("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i5 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f12863 != -1) {
                        AbstractC3731.m7850("PesReader", "Unexpected start indicator: expected " + this.f12863 + " more bytes");
                    }
                    interfaceC3321.mo7139(c3732.f14532 == 0);
                }
            }
            this.f12862 = 1;
            this.f12864 = 0;
        }
        int i6 = i;
        while (c3732.m7904() > 0) {
            int i7 = this.f12862;
            if (i7 != 0) {
                C0881 c0881 = this.f12869;
                if (i7 != 1) {
                    if (i7 == i4) {
                        if (m7149(c3732, c0881.f3738, Math.min(10, this.f12861)) && m7149(c3732, null, this.f12861)) {
                            c0881.m3094(0);
                            this.f12871 = -9223372036854775807L;
                            if (this.f12872) {
                                c0881.m3095(4);
                                c0881.m3095(1);
                                c0881.m3095(1);
                                long m3097 = (c0881.m3097(15) << 15) | (c0881.m3097(3) << 30) | c0881.m3097(15);
                                c0881.m3095(1);
                                if (!this.f12868 && this.f12867) {
                                    c0881.m3095(4);
                                    c0881.m3095(1);
                                    c0881.m3095(1);
                                    c0881.m3095(1);
                                    this.f12865.m7831((c0881.m3097(3) << 30) | (c0881.m3097(15) << 15) | c0881.m3097(15));
                                    this.f12868 = true;
                                }
                                this.f12871 = this.f12865.m7831(m3097);
                            }
                            i6 |= this.f12866 ? 4 : 0;
                            interfaceC3321.mo7140(i6, this.f12871);
                            this.f12862 = 3;
                            this.f12864 = 0;
                        }
                    } else {
                        if (i7 != 3) {
                            throw new IllegalStateException();
                        }
                        int m7904 = c3732.m7904();
                        int i8 = this.f12863;
                        int i9 = i8 == i3 ? 0 : m7904 - i8;
                        if (i9 > 0) {
                            m7904 -= i9;
                            c3732.m7891(c3732.f14533 + m7904);
                        }
                        interfaceC3321.mo7138(c3732);
                        int i10 = this.f12863;
                        if (i10 != i3) {
                            int i11 = i10 - m7904;
                            this.f12863 = i11;
                            if (i11 == 0) {
                                interfaceC3321.mo7139(false);
                                this.f12862 = 1;
                                this.f12864 = 0;
                            }
                        }
                    }
                } else if (m7149(c3732, c0881.f3738, 9)) {
                    this.f12862 = m7150() ? 2 : 0;
                    this.f12864 = 0;
                }
            } else {
                c3732.m7900(c3732.m7904());
            }
            i3 = -1;
            i4 = 2;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m7149(C3732 c3732, byte[] bArr, int i) {
        int min = Math.min(c3732.m7904(), i - this.f12864);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c3732.m7900(min);
        } else {
            c3732.m7875(bArr, this.f12864, min);
        }
        int i2 = this.f12864 + min;
        this.f12864 = i2;
        return i2 == i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m7150() {
        C0881 c0881 = this.f12869;
        c0881.m3094(0);
        int m3097 = c0881.m3097(24);
        if (m3097 != 1) {
            AbstractC2305.m5373(m3097, "Unexpected start code prefix: ", "PesReader");
            this.f12863 = -1;
            return false;
        }
        c0881.m3095(8);
        int m30972 = c0881.m3097(16);
        c0881.m3095(5);
        this.f12866 = c0881.m3112();
        c0881.m3095(2);
        this.f12872 = c0881.m3112();
        this.f12867 = c0881.m3112();
        c0881.m3095(6);
        int m30973 = c0881.m3097(8);
        this.f12861 = m30973;
        if (m30972 == 0) {
            this.f12863 = -1;
        } else {
            int i = (m30972 - 3) - m30973;
            this.f12863 = i;
            if (i < 0) {
                AbstractC3731.m7850("PesReader", "Found negative packet payload size: " + this.f12863);
                this.f12863 = -1;
            }
        }
        return true;
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ⁱˊ */
    public final void mo7147() {
        this.f12862 = 0;
        this.f12864 = 0;
        this.f12868 = false;
        this.f12870.mo7141();
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ﹳٴ */
    public final void mo7148(C3724 c3724, InterfaceC2646 interfaceC2646, C3339 c3339) {
        this.f12865 = c3724;
        this.f12870.mo7142(interfaceC2646, c3339);
    }
}
