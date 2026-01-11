package p254;

import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.C2620;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: יי.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3325 implements InterfaceC3321 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f12836;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f12837;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f12838;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f12839;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f12840;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f12841;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f12842;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f12843;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f12844;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f12845 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2620 f12846;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f12847;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f12848;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2639 f12849;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ˊﾞ.ʼʼ] */
    public C3325(int i, String str, String str2) {
        C3732 c3732 = new C3732(4);
        this.f12847 = c3732;
        c3732.f14534[0] = -1;
        this.f12846 = new Object();
        this.f12844 = -9223372036854775807L;
        this.f12837 = str;
        this.f12839 = i;
        this.f12841 = str2;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    public final void mo7138(C3732 c3732) {
        AbstractC3731.m7868(this.f12849);
        while (c3732.m7904() > 0) {
            int i = this.f12845;
            C3732 c37322 = this.f12847;
            if (i == 0) {
                byte[] bArr = c3732.f14534;
                int i2 = c3732.f14533;
                int i3 = c3732.f14532;
                while (true) {
                    if (i2 >= i3) {
                        c3732.m7896(i3);
                        break;
                    }
                    byte b = bArr[i2];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.f12842 && (b & 224) == 224;
                    this.f12842 = z;
                    if (z2) {
                        c3732.m7896(i2 + 1);
                        this.f12842 = false;
                        c37322.f14534[1] = bArr[i2];
                        this.f12836 = 2;
                        this.f12845 = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(c3732.m7904(), 4 - this.f12836);
                c3732.m7875(c37322.f14534, this.f12836, min);
                int i4 = this.f12836 + min;
                this.f12836 = i4;
                if (i4 >= 4) {
                    c37322.m7896(0);
                    int m7893 = c37322.m7893();
                    C2620 c2620 = this.f12846;
                    if (c2620.m5882(m7893)) {
                        this.f12840 = c2620.f9929;
                        if (!this.f12838) {
                            this.f12848 = (c2620.f9931 * 1000000) / c2620.f9925;
                            C1490 c1490 = new C1490();
                            c1490.f5884 = this.f12843;
                            c1490.f5886 = AbstractC1464.m4251(this.f12841);
                            c1490.f5861 = AbstractC1464.m4251((String) c2620.f9928);
                            c1490.f5877 = 4096;
                            c1490.f5873 = c2620.f9926;
                            c1490.f5864 = c2620.f9925;
                            c1490.f5859 = this.f12837;
                            c1490.f5887 = this.f12839;
                            this.f12849.mo4108(new C1495(c1490));
                            this.f12838 = true;
                        }
                        c37322.m7896(0);
                        this.f12849.mo4109(4, c37322);
                        this.f12845 = 2;
                    } else {
                        this.f12836 = 0;
                        this.f12845 = 1;
                    }
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                int min2 = Math.min(c3732.m7904(), this.f12840 - this.f12836);
                this.f12849.mo4109(min2, c3732);
                int i5 = this.f12836 + min2;
                this.f12836 = i5;
                if (i5 >= this.f12840) {
                    AbstractC3731.m7857(this.f12844 != -9223372036854775807L);
                    this.f12849.mo4112(this.f12844, 1, this.f12840, 0, null);
                    this.f12844 += this.f12848;
                    this.f12836 = 0;
                    this.f12845 = 0;
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
        this.f12844 = j;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        this.f12845 = 0;
        this.f12836 = 0;
        this.f12842 = false;
        this.f12844 = -9223372036854775807L;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f12843 = c3339.f12987;
        c3339.m7158();
        this.f12849 = interfaceC2646.mo1138(c3339.f12986, 1);
    }
}
