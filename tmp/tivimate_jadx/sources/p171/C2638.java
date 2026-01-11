package p171;

import androidx.leanback.widget.ﾞʻ;
import androidx.media3.common.ParserException;
import java.util.Collections;
import java.util.List;
import p012.AbstractC0903;
import p012.C0883;
import p012.C0896;
import p012.C0898;
import p017.AbstractC0993;
import p305.AbstractC3715;
import p305.C3732;
import ˏˆ.ﹳٴ;

/* renamed from: ˊﾞ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2638 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f10009;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f10010;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f10011;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f10012;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int f10013;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final ﹳٴ f10014;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10015;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f10016;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f10017;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final String f10018;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f10019;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f10020;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f10021;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final float f10022;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f10023;

    public C2638(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f, int i11, String str, ﹳٴ r15) {
        this.f10021 = list;
        this.f10020 = i;
        this.f10010 = i2;
        this.f10012 = i3;
        this.f10015 = i4;
        this.f10023 = i5;
        this.f10017 = i6;
        this.f10019 = i7;
        this.f10009 = i8;
        this.f10011 = i9;
        this.f10016 = i10;
        this.f10022 = f;
        this.f10013 = i11;
        this.f10018 = str;
        this.f10014 = r15;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2638 m5895(C3732 c3732, boolean z, ﹳٴ r37) {
        boolean z2;
        ﾞʻ m3164;
        int i;
        int i2 = 4;
        try {
            if (z) {
                c3732.m7900(4);
            } else {
                c3732.m7900(21);
            }
            int m7874 = c3732.m7874() & 3;
            int m78742 = c3732.m7874();
            int i3 = c3732.f14533;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                z2 = true;
                if (i5 >= m78742) {
                    break;
                }
                c3732.m7900(1);
                int m7895 = c3732.m7895();
                for (int i7 = 0; i7 < m7895; i7++) {
                    int m78952 = c3732.m7895();
                    i6 += m78952 + 4;
                    c3732.m7900(m78952);
                }
                i5++;
            }
            c3732.m7896(i3);
            byte[] bArr = new byte[i6];
            ﹳٴ r26 = r37;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            float f = 1.0f;
            String str = null;
            int i18 = 0;
            int i19 = 0;
            while (i18 < m78742) {
                int m78743 = c3732.m7874() & 63;
                int m78953 = c3732.m7895();
                int i20 = i4;
                ﹳٴ r12 = r26;
                while (i20 < m78953) {
                    boolean z3 = z2;
                    int m78954 = c3732.m7895();
                    int i21 = m7874;
                    System.arraycopy(AbstractC0903.f3824, i4, bArr, i19, i2);
                    int i22 = i19 + 4;
                    System.arraycopy(c3732.f14534, c3732.f14533, bArr, i22, m78954);
                    if (m78743 == 32 && i20 == 0) {
                        r12 = AbstractC0903.m3157(bArr, i22, i22 + m78954);
                    } else {
                        if (m78743 == 33 && i20 == 0) {
                            C0898 m3165 = AbstractC0903.m3165(bArr, i22, i22 + m78954, r12);
                            i8 = m3165.f3790 + 1;
                            i9 = m3165.f3787;
                            int i23 = m3165.f3788;
                            i11 = m3165.f3781 + 8;
                            i12 = m3165.f3783 + 8;
                            int i24 = m3165.f3786;
                            i10 = i23;
                            int i25 = m3165.f3791;
                            int i26 = m3165.f3784;
                            float f2 = m3165.f3780;
                            int i27 = m3165.f3782;
                            C0896 c0896 = m3165.f3789;
                            if (c0896 != null) {
                                i = i27;
                                str = AbstractC3715.m7814(c0896.f3776, c0896.f3775, c0896.f3772, c0896.f3773, c0896.f3774, c0896.f3777);
                            } else {
                                i = i27;
                            }
                            i17 = i;
                            f = f2;
                            i15 = i26;
                            i14 = i25;
                            i13 = i24;
                        } else if (m78743 == 39 && i20 == 0 && (m3164 = AbstractC0903.m3164(bArr, i22, i22 + m78954)) != null && r12 != null) {
                            i4 = 0;
                            i16 = m3164.ᴵˊ == ((C0883) ((AbstractC0993) r12.ᴵˊ).get(0)).f3746 ? 4 : 5;
                        }
                        i4 = 0;
                    }
                    i19 = i22 + m78954;
                    c3732.m7900(m78954);
                    i20++;
                    z2 = z3;
                    m7874 = i21;
                    i2 = 4;
                }
                i18++;
                r26 = r12;
                i2 = 4;
            }
            return new C2638(i6 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), m7874 + 1, i8, i9, i10, i11, i12, i13, i14, i15, i16, f, i17, str, r26);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.m741(e, "Error parsing".concat(z ? "L-HEVC config" : "HEVC config"));
        }
    }
}
