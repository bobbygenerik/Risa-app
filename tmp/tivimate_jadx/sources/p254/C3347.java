package p254;

import j$.util.Objects;
import p012.C0881;
import p012.C0888;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p171.C2648;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: יי.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3347 implements InterfaceC3321 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f13072;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f13073;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f13074;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f13075;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C1495 f13076;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f13077;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f13078;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f13079;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f13080;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f13081;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2639 f13082;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0881 f13083;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13084;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f13085;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f13086;

    public C3347(int i, int i2, String str, String str2) {
        this.f13084 = i2;
        switch (i2) {
            case 1:
                C0881 c0881 = new C0881(16, new byte[16]);
                this.f13083 = c0881;
                this.f13073 = new C3732(c0881.f3738);
                this.f13072 = 0;
                this.f13074 = 0;
                this.f13079 = false;
                this.f13077 = -9223372036854775807L;
                this.f13075 = str;
                this.f13078 = i;
                this.f13086 = str2;
                return;
            default:
                C0881 c08812 = new C0881(128, new byte[128]);
                this.f13083 = c08812;
                this.f13073 = new C3732(c08812.f3738);
                this.f13072 = 0;
                this.f13077 = -9223372036854775807L;
                this.f13075 = str;
                this.f13078 = i;
                this.f13086 = str2;
                return;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3347(String str) {
        this(0, 0, null, str);
        this.f13084 = 0;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m7162(boolean z) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m7163(boolean z) {
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    public final void mo7138(C3732 c3732) {
        switch (this.f13084) {
            case 0:
                AbstractC3731.m7868(this.f13082);
                while (c3732.m7904() > 0) {
                    int i = this.f13072;
                    C3732 c37322 = this.f13073;
                    if (i == 0) {
                        while (true) {
                            if (c3732.m7904() <= 0) {
                                break;
                            }
                            if (this.f13079) {
                                int m7874 = c3732.m7874();
                                if (m7874 == 119) {
                                    this.f13079 = false;
                                    this.f13072 = 1;
                                    byte[] bArr = c37322.f14534;
                                    bArr[0] = 11;
                                    bArr[1] = 119;
                                    this.f13074 = 2;
                                } else {
                                    this.f13079 = m7874 == 11;
                                }
                            } else {
                                this.f13079 = c3732.m7874() == 11;
                            }
                        }
                    } else if (i == 1) {
                        byte[] bArr2 = c37322.f14534;
                        int min = Math.min(c3732.m7904(), 128 - this.f13074);
                        c3732.m7875(bArr2, this.f13074, min);
                        int i2 = this.f13074 + min;
                        this.f13074 = i2;
                        if (i2 == 128) {
                            C0881 c0881 = this.f13083;
                            c0881.m3094(0);
                            C2648 m5913 = AbstractC2649.m5913(c0881);
                            int i3 = m5913.f10041;
                            int i4 = m5913.f10039;
                            int i5 = m5913.f10036;
                            String str = m5913.f10040;
                            C1495 c1495 = this.f13076;
                            if (c1495 == null || i5 != c1495.f5916 || i4 != c1495.f5923 || !Objects.equals(str, c1495.f5930)) {
                                C1490 c1490 = new C1490();
                                c1490.f5884 = this.f13080;
                                c1490.f5886 = AbstractC1464.m4251(this.f13086);
                                c1490.f5861 = AbstractC1464.m4251(str);
                                c1490.f5873 = i5;
                                c1490.f5864 = i4;
                                c1490.f5859 = this.f13075;
                                c1490.f5887 = this.f13078;
                                c1490.f5850 = i3;
                                if ("audio/ac3".equals(str)) {
                                    c1490.f5880 = i3;
                                }
                                C1495 c14952 = new C1495(c1490);
                                this.f13076 = c14952;
                                this.f13082.mo4108(c14952);
                            }
                            this.f13081 = m5913.f10037;
                            this.f13085 = (m5913.f10038 * 1000000) / this.f13076.f5923;
                            c37322.m7896(0);
                            this.f13082.mo4109(128, c37322);
                            this.f13072 = 2;
                        }
                    } else if (i == 2) {
                        int min2 = Math.min(c3732.m7904(), this.f13081 - this.f13074);
                        this.f13082.mo4109(min2, c3732);
                        int i6 = this.f13074 + min2;
                        this.f13074 = i6;
                        if (i6 == this.f13081) {
                            AbstractC3731.m7857(this.f13077 != -9223372036854775807L);
                            this.f13082.mo4112(this.f13077, 1, this.f13081, 0, null);
                            this.f13077 += this.f13085;
                            this.f13072 = 0;
                        }
                    }
                }
                return;
            default:
                AbstractC3731.m7868(this.f13082);
                while (c3732.m7904() > 0) {
                    int i7 = this.f13072;
                    C3732 c37323 = this.f13073;
                    if (i7 == 0) {
                        while (c3732.m7904() > 0) {
                            if (this.f13079) {
                                int m78742 = c3732.m7874();
                                this.f13079 = m78742 == 172;
                                if (m78742 == 64 || m78742 == 65) {
                                    boolean z = m78742 == 65;
                                    this.f13072 = 1;
                                    byte[] bArr3 = c37323.f14534;
                                    bArr3[0] = -84;
                                    bArr3[1] = (byte) (z ? 65 : 64);
                                    this.f13074 = 2;
                                }
                            } else {
                                this.f13079 = c3732.m7874() == 172;
                            }
                        }
                    } else if (i7 == 1) {
                        byte[] bArr4 = c37323.f14534;
                        int min3 = Math.min(c3732.m7904(), 16 - this.f13074);
                        c3732.m7875(bArr4, this.f13074, min3);
                        int i8 = this.f13074 + min3;
                        this.f13074 = i8;
                        if (i8 == 16) {
                            C0881 c08812 = this.f13083;
                            c08812.m3094(0);
                            C0888 m5905 = AbstractC2649.m5905(c08812);
                            int i9 = m5905.f3755;
                            C1495 c14953 = this.f13076;
                            if (c14953 == null || 2 != c14953.f5916 || i9 != c14953.f5923 || !"audio/ac4".equals(c14953.f5930)) {
                                C1490 c14902 = new C1490();
                                c14902.f5884 = this.f13080;
                                c14902.f5886 = AbstractC1464.m4251(this.f13086);
                                c14902.f5861 = AbstractC1464.m4251("audio/ac4");
                                c14902.f5873 = 2;
                                c14902.f5864 = i9;
                                c14902.f5859 = this.f13075;
                                c14902.f5887 = this.f13078;
                                C1495 c14954 = new C1495(c14902);
                                this.f13076 = c14954;
                                this.f13082.mo4108(c14954);
                            }
                            this.f13081 = m5905.f3754;
                            this.f13085 = (m5905.f3753 * 1000000) / this.f13076.f5923;
                            c37323.m7896(0);
                            this.f13082.mo4109(16, c37323);
                            this.f13072 = 2;
                        }
                    } else if (i7 == 2) {
                        int min4 = Math.min(c3732.m7904(), this.f13081 - this.f13074);
                        this.f13082.mo4109(min4, c3732);
                        int i10 = this.f13074 + min4;
                        this.f13074 = i10;
                        if (i10 == this.f13081) {
                            AbstractC3731.m7857(this.f13077 != -9223372036854775807L);
                            this.f13082.mo4112(this.f13077, 1, this.f13081, 0, null);
                            this.f13077 += this.f13085;
                            this.f13072 = 0;
                        }
                    }
                }
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
        int i = this.f13084;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        switch (this.f13084) {
            case 0:
                this.f13077 = j;
                return;
            default:
                this.f13077 = j;
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        switch (this.f13084) {
            case 0:
                this.f13072 = 0;
                this.f13074 = 0;
                this.f13079 = false;
                this.f13077 = -9223372036854775807L;
                return;
            default:
                this.f13072 = 0;
                this.f13074 = 0;
                this.f13079 = false;
                this.f13077 = -9223372036854775807L;
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        switch (this.f13084) {
            case 0:
                c3339.m7159();
                c3339.m7158();
                this.f13080 = c3339.f12987;
                c3339.m7158();
                this.f13082 = interfaceC2646.mo1138(c3339.f12986, 1);
                return;
            default:
                c3339.m7159();
                c3339.m7158();
                this.f13080 = c3339.f12987;
                c3339.m7158();
                this.f13082 = interfaceC2646.mo1138(c3339.f12986, 1);
                return;
        }
    }
}
