package p254;

import java.util.Arrays;
import java.util.Collections;
import p012.C0881;
import p027.C1099;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p171.C2644;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: יי.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3336 implements InterfaceC3321 {

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static final byte[] f12944 = {73, 68, 51};

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public InterfaceC2639 f12945;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC2639 f12946;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f12951;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f12952;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f12954;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f12955;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public long f12957;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f12959;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f12960;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2639 f12961;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f12962;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f12964;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f12965;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f12967;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0881 f12963 = new C0881(7, new byte[7]);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f12948 = new C3732(Arrays.copyOf(f12944, 10));

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f12953 = -1;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f12947 = -1;

    /* renamed from: יـ, reason: contains not printable characters */
    public long f12956 = -9223372036854775807L;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public long f12949 = -9223372036854775807L;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f12950 = 0;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f12958 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f12966 = 256;

    public C3336(int i, String str, String str2, boolean z) {
        this.f12964 = z;
        this.f12951 = str;
        this.f12955 = i;
        this.f12967 = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    public final void mo7138(C3732 c3732) {
        int i;
        int i2;
        byte b;
        char c;
        ?? r4;
        int i3;
        char c2;
        int i4;
        char c3;
        int i5;
        this.f12961.getClass();
        String str = AbstractC3712.f14481;
        while (c3732.m7904() > 0) {
            int i6 = this.f12950;
            char c4 = 65535;
            C3732 c37322 = this.f12948;
            int i7 = 3;
            C0881 c0881 = this.f12963;
            int i8 = 0;
            int i9 = 4;
            int i10 = 1;
            if (i6 == 0) {
                byte[] bArr = c3732.f14534;
                int i11 = c3732.f14533;
                int i12 = c3732.f14532;
                while (true) {
                    if (i11 >= i12) {
                        c3732.m7896(i11);
                        break;
                    }
                    i = i11 + 1;
                    i2 = i7;
                    b = bArr[i11];
                    int i13 = b & 255;
                    if (this.f12966 != 512 || (((65280 | ((((byte) i13) & 255) == true ? 1 : 0)) == true ? 1 : 0) & 65526) != 65520) {
                        c = c4;
                        r4 = i10;
                    } else {
                        if (this.f12960) {
                            break;
                        }
                        int i14 = i11 - 1;
                        c3732.m7896(i11);
                        byte[] bArr2 = c0881.f3738;
                        if (c3732.m7904() >= i10) {
                            c3732.m7875(bArr2, i8, i10);
                            c0881.m3094(i9);
                            int m3097 = c0881.m3097(i10);
                            int i15 = this.f12953;
                            if (i15 == -1 || m3097 == i15) {
                                if (this.f12947 != -1) {
                                    byte[] bArr3 = c0881.f3738;
                                    if (c3732.m7904() < i10) {
                                        break;
                                    }
                                    c3732.m7875(bArr3, i8, i10);
                                    c0881.m3094(2);
                                    i5 = 4;
                                    if (c0881.m3097(4) == this.f12947) {
                                        c3732.m7896(i);
                                    }
                                } else {
                                    i5 = 4;
                                }
                                byte[] bArr4 = c0881.f3738;
                                if (c3732.m7904() >= i5) {
                                    c3732.m7875(bArr4, i8, i5);
                                    c0881.m3094(14);
                                    int m30972 = c0881.m3097(13);
                                    if (m30972 >= 7) {
                                        byte[] bArr5 = c3732.f14534;
                                        int i16 = c3732.f14532;
                                        int i17 = i14 + m30972;
                                        if (i17 < i16) {
                                            byte b2 = bArr5[i17];
                                            c = 65535;
                                            if (b2 != -1) {
                                                if (b2 == 73) {
                                                    int i18 = i17 + 1;
                                                    if (i18 != i16) {
                                                        if (bArr5[i18] == 68) {
                                                            int i19 = i17 + 2;
                                                            if (i19 != i16) {
                                                                if (bArr5[i19] == 51) {
                                                                    break;
                                                                }
                                                            } else {
                                                                break;
                                                            }
                                                        }
                                                    } else {
                                                        break;
                                                    }
                                                }
                                            } else {
                                                int i20 = i17 + 1;
                                                if (i20 != i16) {
                                                    byte b3 = bArr5[i20];
                                                    if ((((65280 | ((b3 & 255) == true ? 1 : 0)) == true ? 1 : 0) & 65526) == 65520 && ((b3 & 8) >> 3) == m3097) {
                                                        break;
                                                    }
                                                } else {
                                                    break;
                                                }
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                c = 65535;
                            }
                            r4 = true;
                        }
                        c = 65535;
                        r4 = true;
                    }
                    int i21 = this.f12966;
                    int i22 = i13 | i21;
                    if (i22 == 329) {
                        i3 = 3;
                        c2 = 256;
                        i4 = 0;
                        c3 = 2;
                        this.f12966 = 768;
                    } else if (i22 == 511) {
                        i3 = 3;
                        c2 = 256;
                        i4 = 0;
                        c3 = 2;
                        this.f12966 = 512;
                    } else if (i22 == 836) {
                        i3 = 3;
                        c2 = 256;
                        i4 = 0;
                        c3 = 2;
                        this.f12966 = 1024;
                    } else {
                        if (i22 == 1075) {
                            this.f12950 = 2;
                            this.f12958 = 3;
                            this.f12954 = 0;
                            c37322.m7896(0);
                            c3732.m7896(i);
                            break;
                        }
                        c2 = 256;
                        if (i21 != 256) {
                            this.f12966 = 256;
                            i3 = 3;
                            i4 = 0;
                            c3 = 2;
                            i10 = r4;
                            c4 = c;
                            i9 = 4;
                            i8 = i4;
                            i7 = i3;
                        } else {
                            i3 = 3;
                            i4 = 0;
                            c3 = 2;
                        }
                    }
                    i11 = i;
                    i10 = r4;
                    c4 = c;
                    i9 = 4;
                    i8 = i4;
                    i7 = i3;
                }
                this.f12962 = (b & 8) >> 3;
                this.f12952 = (b & 1) == 0;
                if (this.f12960) {
                    this.f12950 = i2;
                    this.f12958 = 0;
                } else {
                    this.f12950 = 1;
                    this.f12958 = 0;
                }
                c3732.m7896(i);
            } else if (i6 != 1) {
                if (i6 == 2) {
                    byte[] bArr6 = c37322.f14534;
                    int min = Math.min(c3732.m7904(), 10 - this.f12958);
                    c3732.m7875(bArr6, this.f12958, min);
                    int i23 = this.f12958 + min;
                    this.f12958 = i23;
                    if (i23 == 10) {
                        this.f12946.mo4109(10, c37322);
                        c37322.m7896(6);
                        InterfaceC2639 interfaceC2639 = this.f12946;
                        int m7881 = c37322.m7881() + 10;
                        this.f12950 = 4;
                        this.f12958 = 10;
                        this.f12945 = interfaceC2639;
                        this.f12957 = 0L;
                        this.f12954 = m7881;
                    }
                } else if (i6 == 3) {
                    int i24 = this.f12952 ? 7 : 5;
                    byte[] bArr7 = c0881.f3738;
                    int min2 = Math.min(c3732.m7904(), i24 - this.f12958);
                    c3732.m7875(bArr7, this.f12958, min2);
                    int i25 = this.f12958 + min2;
                    this.f12958 = i25;
                    if (i25 == i24) {
                        c0881.m3094(0);
                        if (this.f12965) {
                            c0881.m3095(10);
                        } else {
                            int m30973 = c0881.m3097(2) + 1;
                            if (m30973 != 2) {
                                AbstractC3731.m7850("AdtsReader", "Detected audio object type: " + m30973 + ", but assuming AAC LC.");
                                m30973 = 2;
                            }
                            c0881.m3095(5);
                            byte[] m5924 = AbstractC2649.m5924(m30973, this.f12947, c0881.m3097(3));
                            C1099 m5922 = AbstractC2649.m5922(new C0881(2, m5924), false);
                            C1490 c1490 = new C1490();
                            c1490.f5884 = this.f12959;
                            c1490.f5886 = AbstractC1464.m4251(this.f12967);
                            c1490.f5861 = AbstractC1464.m4251("audio/mp4a-latm");
                            c1490.f5857 = m5922.f4289;
                            c1490.f5873 = m5922.f4290;
                            c1490.f5864 = m5922.f4291;
                            c1490.f5851 = Collections.singletonList(m5924);
                            c1490.f5859 = this.f12951;
                            c1490.f5887 = this.f12955;
                            C1495 c1495 = new C1495(c1490);
                            this.f12956 = 1024000000 / c1495.f5923;
                            this.f12961.mo4108(c1495);
                            this.f12965 = true;
                        }
                        c0881.m3095(4);
                        int m30974 = c0881.m3097(13);
                        int i26 = m30974 - 7;
                        if (this.f12952) {
                            i26 = m30974 - 9;
                        }
                        InterfaceC2639 interfaceC26392 = this.f12961;
                        long j = this.f12956;
                        this.f12950 = 4;
                        this.f12958 = 0;
                        this.f12945 = interfaceC26392;
                        this.f12957 = j;
                        this.f12954 = i26;
                    }
                } else {
                    if (i6 != 4) {
                        throw new IllegalStateException();
                    }
                    int min3 = Math.min(c3732.m7904(), this.f12954 - this.f12958);
                    this.f12945.mo4109(min3, c3732);
                    int i27 = this.f12958 + min3;
                    this.f12958 = i27;
                    if (i27 == this.f12954) {
                        AbstractC3731.m7857(this.f12949 != -9223372036854775807L);
                        this.f12945.mo4112(this.f12949, 1, this.f12954, 0, null);
                        this.f12949 += this.f12957;
                        this.f12950 = 0;
                        this.f12958 = 0;
                        this.f12966 = 256;
                    }
                }
            } else if (c3732.m7904() != 0) {
                c0881.f3738[0] = c3732.f14534[c3732.f14533];
                c0881.m3094(2);
                int m30975 = c0881.m3097(4);
                int i28 = this.f12947;
                if (i28 == -1 || m30975 == i28) {
                    if (!this.f12960) {
                        this.f12960 = true;
                        this.f12953 = this.f12962;
                        this.f12947 = m30975;
                    }
                    this.f12950 = 3;
                    this.f12958 = 0;
                } else {
                    this.f12960 = false;
                    this.f12950 = 0;
                    this.f12958 = 0;
                    this.f12966 = 256;
                }
            }
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        this.f12949 = j;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        this.f12949 = -9223372036854775807L;
        this.f12960 = false;
        this.f12950 = 0;
        this.f12958 = 0;
        this.f12966 = 256;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f12959 = c3339.f12987;
        c3339.m7158();
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(c3339.f12986, 1);
        this.f12961 = mo1138;
        this.f12945 = mo1138;
        if (!this.f12964) {
            this.f12946 = new C2644();
            return;
        }
        c3339.m7159();
        c3339.m7158();
        InterfaceC2639 mo11382 = interfaceC2646.mo1138(c3339.f12986, 5);
        this.f12946 = mo11382;
        C1490 c1490 = new C1490();
        c3339.m7158();
        c1490.f5884 = c3339.f12987;
        c1490.f5886 = AbstractC1464.m4251(this.f12967);
        c1490.f5861 = AbstractC1464.m4251("application/id3");
        AbstractC4892.m9687(c1490, mo11382);
    }
}
