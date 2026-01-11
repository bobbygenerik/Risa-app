package p254;

import com.parse.ٴʼ;
import java.util.Collections;
import p012.AbstractC0903;
import p012.C0882;
import p012.C0896;
import p012.C0898;
import p055.AbstractC1464;
import p055.C1446;
import p055.C1490;
import p055.C1495;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p179.C2697;
import p305.AbstractC3712;
import p305.AbstractC3715;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: יי.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3337 implements InterfaceC3321 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC2639 f12969;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3349 f12971;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f12973;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f12978;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ٴʼ f12979;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f12980;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean[] f12981 = new boolean[3];

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2697 f12975 = new C2697(32);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2697 f12977 = new C2697(33);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2697 f12968 = new C2697(34);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2697 f12970 = new C2697(39);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C2697 f12974 = new C2697(40);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f12972 = -9223372036854775807L;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C3732 f12976 = new C3732();

    public C3337(ٴʼ r3) {
        this.f12979 = r3;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    public final void mo7138(C3732 c3732) {
        int i;
        AbstractC3731.m7868(this.f12969);
        String str = AbstractC3712.f14481;
        while (c3732.m7904() > 0) {
            int i2 = c3732.f14533;
            int i3 = c3732.f14532;
            byte[] bArr = c3732.f14534;
            this.f12980 += c3732.m7904();
            this.f12969.mo4109(c3732.m7904(), c3732);
            while (i2 < i3) {
                int m3166 = AbstractC0903.m3166(bArr, i2, i3, this.f12981);
                if (m3166 == i3) {
                    m7155(bArr, i2, i3);
                    return;
                }
                int i4 = (bArr[m3166 + 3] & 126) >> 1;
                if (m3166 <= 0 || bArr[m3166 - 1] != 0) {
                    i = 3;
                } else {
                    m3166--;
                    i = 4;
                }
                int i5 = m3166;
                int i6 = i;
                int i7 = i5 - i2;
                if (i7 > 0) {
                    m7155(bArr, i2, i5);
                }
                int i8 = i3 - i5;
                long j = this.f12980 - i8;
                m7157(i8, i7 < 0 ? -i7 : 0, j, this.f12972);
                m7156(i8, i4, j, this.f12972);
                i2 = i5 + i6;
            }
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
        AbstractC3731.m7868(this.f12969);
        String str = AbstractC3712.f14481;
        if (z) {
            ((C0882) this.f12979.ˈٴ).m3116(0);
            m7157(0, 0, this.f12980, this.f12972);
            m7156(0, 48, this.f12980, this.f12972);
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        this.f12972 = j;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7155(byte[] bArr, int i, int i2) {
        C3349 c3349 = this.f12971;
        if (c3349.f13102) {
            int i3 = c3349.f13093;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                c3349.f13097 = (bArr[i4] & 128) != 0;
                c3349.f13102 = false;
            } else {
                c3349.f13093 = (i2 - i) + i3;
            }
        }
        if (!this.f12973) {
            this.f12975.m6069(bArr, i, i2);
            this.f12977.m6069(bArr, i, i2);
            this.f12968.m6069(bArr, i, i2);
        }
        this.f12970.m6069(bArr, i, i2);
        this.f12974.m6069(bArr, i, i2);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7156(int i, int i2, long j, long j2) {
        C3349 c3349 = this.f12971;
        boolean z = this.f12973;
        c3349.f13097 = false;
        c3349.f13098 = false;
        c3349.f13095 = j2;
        c3349.f13093 = 0;
        c3349.f13099 = j;
        if (i2 >= 32 && i2 != 40) {
            if (c3349.f13090 && !c3349.f13092) {
                if (z) {
                    c3349.m7164(i);
                }
                c3349.f13090 = false;
            }
            if ((32 <= i2 && i2 <= 35) || i2 == 39) {
                c3349.f13098 = !c3349.f13092;
                c3349.f13092 = true;
            }
        }
        boolean z2 = i2 >= 16 && i2 <= 21;
        c3349.f13091 = z2;
        c3349.f13102 = z2 || i2 <= 9;
        if (!this.f12973) {
            this.f12975.m6067(i2);
            this.f12977.m6067(i2);
            this.f12968.m6067(i2);
        }
        this.f12970.m6067(i2);
        this.f12974.m6067(i2);
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        this.f12980 = 0L;
        this.f12972 = -9223372036854775807L;
        AbstractC0903.m3167(this.f12981);
        this.f12975.m6066();
        this.f12977.m6066();
        this.f12968.m6066();
        this.f12970.m6066();
        this.f12974.m6066();
        ((C0882) this.f12979.ˈٴ).m3116(0);
        C3349 c3349 = this.f12971;
        if (c3349 != null) {
            c3349.f13102 = false;
            c3349.f13097 = false;
            c3349.f13098 = false;
            c3349.f13090 = false;
            c3349.f13092 = false;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7157(int i, int i2, long j, long j2) {
        C0882 c0882 = (C0882) this.f12979.ˈٴ;
        C3349 c3349 = this.f12971;
        boolean z = this.f12973;
        if (c3349.f13092 && c3349.f13097) {
            c3349.f13094 = c3349.f13091;
            c3349.f13092 = false;
        } else if (c3349.f13098 || c3349.f13097) {
            if (z && c3349.f13090) {
                c3349.m7164(i + ((int) (j - c3349.f13099)));
            }
            c3349.f13096 = c3349.f13099;
            c3349.f13101 = c3349.f13095;
            c3349.f13094 = c3349.f13091;
            c3349.f13090 = true;
        }
        if (!this.f12973) {
            C2697 c2697 = this.f12975;
            c2697.m6065(i2);
            C2697 c26972 = this.f12977;
            c26972.m6065(i2);
            C2697 c26973 = this.f12968;
            c26973.m6065(i2);
            if (c2697.f10271 && c26972.f10271 && c26973.f10271) {
                String str = this.f12978;
                int i3 = c2697.f10272;
                byte[] bArr = new byte[c26972.f10272 + i3 + c26973.f10272];
                System.arraycopy((byte[]) c2697.f10275, 0, bArr, 0, i3);
                System.arraycopy((byte[]) c26972.f10275, 0, bArr, c2697.f10272, c26972.f10272);
                System.arraycopy((byte[]) c26973.f10275, 0, bArr, c2697.f10272 + c26972.f10272, c26973.f10272);
                C0898 m3165 = AbstractC0903.m3165((byte[]) c26972.f10275, 3, c26972.f10272, null);
                C0896 c0896 = m3165.f3789;
                String m7814 = c0896 != null ? AbstractC3715.m7814(c0896.f3776, c0896.f3775, c0896.f3772, c0896.f3773, c0896.f3774, c0896.f3777) : null;
                C1490 c1490 = new C1490();
                c1490.f5884 = str;
                c1490.f5886 = AbstractC1464.m4251("video/mp2t");
                c1490.f5861 = AbstractC1464.m4251("video/hevc");
                c1490.f5857 = m7814;
                c1490.f5865 = m3165.f3785;
                c1490.f5854 = m3165.f3792;
                c1490.f5848 = m3165.f3787;
                c1490.f5868 = m3165.f3788;
                c1490.f5853 = new C1446(m3165.f3786, m3165.f3791, m3165.f3784, null, m3165.f3781 + 8, m3165.f3783 + 8);
                c1490.f5882 = m3165.f3780;
                c1490.f5862 = m3165.f3782;
                c1490.f5860 = m3165.f3790 + 1;
                c1490.f5851 = Collections.singletonList(bArr);
                C1495 c1495 = new C1495(c1490);
                this.f12969.mo4108(c1495);
                int i4 = c1495.f5902;
                if (i4 == -1) {
                    throw new IllegalStateException();
                }
                c0882.m3114(i4);
                this.f12973 = true;
            }
        }
        C2697 c26974 = this.f12970;
        boolean m6065 = c26974.m6065(i2);
        C3732 c3732 = this.f12976;
        if (m6065) {
            c3732.m7897(AbstractC0903.m3161(c26974.f10272, (byte[]) c26974.f10275), (byte[]) c26974.f10275);
            c3732.m7900(5);
            c0882.m3136(j2, c3732);
        }
        C2697 c26975 = this.f12974;
        if (c26975.m6065(i2)) {
            c3732.m7897(AbstractC0903.m3161(c26975.f10272, (byte[]) c26975.f10275), (byte[]) c26975.f10275);
            c3732.m7900(5);
            c0882.m3136(j2, c3732);
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f12978 = c3339.f12987;
        c3339.m7158();
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(c3339.f12986, 2);
        this.f12969 = mo1138;
        this.f12971 = new C3349(mo1138);
        this.f12979.ᵎⁱ(interfaceC2646, c3339);
    }
}
