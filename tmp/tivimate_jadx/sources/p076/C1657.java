package p076;

import java.util.Arrays;
import p305.AbstractC3731;

/* renamed from: ʾﾞ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1657 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f6712;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final short[] f6713;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f6714;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f6715;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f6716;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public short[] f6717;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f6718;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f6719;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f6720;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f6721;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f6722;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f6723;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public double f6724;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f6725;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f6726;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public short[] f6727;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f6728;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f6729;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f6730;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f6731;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f6732;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public short[] f6733;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f6734;

    public C1657(int i, int i2, float f, float f2, int i3) {
        this.f6731 = i;
        this.f6730 = i2;
        this.f6715 = f;
        this.f6718 = f2;
        this.f6722 = i / i3;
        this.f6734 = i / 400;
        int i4 = i / 65;
        this.f6726 = i4;
        int i5 = i4 * 2;
        this.f6728 = i5;
        this.f6713 = new short[i5];
        this.f6717 = new short[i5 * i2];
        this.f6733 = new short[i5 * i2];
        this.f6727 = new short[i5 * i2];
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m4525(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final short[] m4526(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f6730;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m4527(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f6730;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
            }
            if (i9 * i7 < i6 * i2) {
                i7 = i2;
                i6 = i9;
            }
            if (i9 * i5 > i8 * i2) {
                i5 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.f6716 = i6 / i7;
        this.f6712 = i8 / i5;
        return i7;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4528(short[] sArr, int i, int i2) {
        int i3 = this.f6728 / i2;
        int i4 = this.f6730;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f6713[i7] = (short) (i8 / i5);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4529(short[] sArr, int i, int i2) {
        short[] m4526 = m4526(this.f6733, this.f6719, i2);
        this.f6733 = m4526;
        int i3 = this.f6730;
        System.arraycopy(sArr, i * i3, m4526, this.f6719 * i3, i3 * i2);
        this.f6719 += i2;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4530() {
        float f;
        double d;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long j;
        long j2;
        int i9 = this.f6719;
        float f2 = this.f6715;
        float f3 = this.f6718;
        double d2 = f2 / f3;
        float f4 = this.f6722 * f3;
        int i10 = this.f6731;
        int i11 = 1;
        int i12 = this.f6730;
        int i13 = 0;
        if (d2 > 1.0000100135803223d || d2 < 0.9999899864196777d) {
            int i14 = this.f6725;
            int i15 = this.f6728;
            if (i14 >= i15) {
                int i16 = 0;
                while (true) {
                    int i17 = this.f6732;
                    if (i17 > 0) {
                        int min = Math.min(i15, i17);
                        m4529(this.f6717, i16, min);
                        this.f6732 -= min;
                        i16 += min;
                        f = f4;
                        d = d2;
                        i3 = i15;
                    } else {
                        short[] sArr = this.f6717;
                        int i18 = i10 > 4000 ? i10 / 4000 : i11;
                        int i19 = this.f6726;
                        int i20 = this.f6734;
                        if (i12 == i11 && i18 == i11) {
                            i = m4527(sArr, i16, i20, i19);
                            f = f4;
                            d = d2;
                        } else {
                            m4528(sArr, i16, i18);
                            f = f4;
                            d = d2;
                            short[] sArr2 = this.f6713;
                            int m4527 = m4527(sArr2, i13, i20 / i18, i19 / i18);
                            if (i18 != 1) {
                                int i21 = m4527 * i18;
                                int i22 = i18 * 4;
                                int i23 = i21 - i22;
                                int i24 = i21 + i22;
                                if (i23 >= i20) {
                                    i20 = i23;
                                }
                                if (i24 <= i19) {
                                    i19 = i24;
                                }
                                if (i12 == 1) {
                                    i = m4527(sArr, i16, i20, i19);
                                } else {
                                    m4528(sArr, i16, 1);
                                    i = m4527(sArr2, i13, i20, i19);
                                }
                            } else {
                                i = m4527;
                            }
                        }
                        int i25 = this.f6716;
                        int i26 = this.f6712;
                        if (i25 == 0 || (i2 = this.f6723) == 0 || i26 > i25 * 3 || i25 * 2 <= this.f6721 * 3) {
                            i2 = i;
                        }
                        this.f6721 = i25;
                        this.f6723 = i;
                        if (d > 1.0d) {
                            short[] sArr3 = this.f6717;
                            if (d >= 2.0d) {
                                i3 = i15;
                                double d3 = (i2 / (d - 1.0d)) + this.f6724;
                                i5 = (int) Math.round(d3);
                                this.f6724 = d3 - i5;
                            } else {
                                i3 = i15;
                                double d4 = (((2.0d - d) * i2) / (d - 1.0d)) + this.f6724;
                                int round = (int) Math.round(d4);
                                this.f6732 = round;
                                this.f6724 = d4 - round;
                                i5 = i2;
                            }
                            short[] m4526 = m4526(this.f6733, this.f6719, i5);
                            this.f6733 = m4526;
                            int i27 = i16 + i2;
                            int i28 = i16;
                            int i29 = i5;
                            m4525(i29, this.f6730, m4526, this.f6719, sArr3, i28, sArr3, i27);
                            this.f6719 += i29;
                            i16 = i2 + i29 + i28;
                        } else {
                            i3 = i15;
                            int i30 = i16;
                            short[] sArr4 = this.f6717;
                            if (d < 0.5d) {
                                double d5 = ((i2 * d) / (1.0d - d)) + this.f6724;
                                int round2 = (int) Math.round(d5);
                                this.f6724 = d5 - round2;
                                i4 = round2;
                            } else {
                                double d6 = ((((d * 2.0d) - 1.0d) * i2) / (1.0d - d)) + this.f6724;
                                int round3 = (int) Math.round(d6);
                                this.f6732 = round3;
                                this.f6724 = d6 - round3;
                                i4 = i2;
                            }
                            int i31 = i2 + i4;
                            short[] m45262 = m4526(this.f6733, this.f6719, i31);
                            this.f6733 = m45262;
                            System.arraycopy(sArr4, i30 * i12, m45262, this.f6719 * i12, i2 * i12);
                            m4525(i4, this.f6730, this.f6733, this.f6719 + i2, sArr4, i30 + i2, sArr4, i30);
                            this.f6719 += i31;
                            i16 = i30 + i4;
                        }
                    }
                    if (i16 + i3 > i14) {
                        break;
                    }
                    i13 = 0;
                    i15 = i3;
                    i11 = 1;
                    f4 = f;
                    d2 = d;
                }
                int i32 = this.f6725 - i16;
                short[] sArr5 = this.f6717;
                System.arraycopy(sArr5, i16 * i12, sArr5, 0, i32 * i12);
                this.f6725 = i32;
                if (f != 1.0f || this.f6719 == i9) {
                }
                long j3 = i10 / f;
                long j4 = i10;
                while (j3 != 0 && j4 != 0 && j3 % 2 == 0 && j4 % 2 == 0) {
                    j3 /= 2;
                    j4 /= 2;
                }
                int i33 = this.f6719 - i9;
                short[] m45263 = m4526(this.f6727, this.f6720, i33);
                this.f6727 = m45263;
                System.arraycopy(this.f6733, i9 * i12, m45263, this.f6720 * i12, i33 * i12);
                this.f6719 = i9;
                this.f6720 += i33;
                int i34 = 0;
                while (true) {
                    i6 = this.f6720;
                    i7 = i6 - 1;
                    if (i34 >= i7) {
                        break;
                    }
                    while (true) {
                        i8 = this.f6714 + 1;
                        j = i8;
                        long j5 = j * j3;
                        j2 = this.f6729;
                        if (j5 <= j2 * j4) {
                            break;
                        }
                        this.f6733 = m4526(this.f6733, this.f6719, 1);
                        int i35 = 0;
                        while (i35 < i12) {
                            short[] sArr6 = this.f6733;
                            int i36 = (this.f6719 * i12) + i35;
                            short[] sArr7 = this.f6727;
                            int i37 = (i34 * i12) + i35;
                            short s = sArr7[i37];
                            short s2 = sArr7[i37 + i12];
                            long j6 = j3;
                            int i38 = i34;
                            long j7 = (r12 + 1) * j6;
                            long j8 = j7 - (this.f6729 * j4);
                            long j9 = j7 - (this.f6714 * j6);
                            sArr6[i36] = (short) ((((j9 - j8) * s2) + (s * j8)) / j9);
                            i35++;
                            i34 = i38;
                            j3 = j6;
                        }
                        this.f6729++;
                        this.f6719++;
                        i34 = i34;
                        j3 = j3;
                    }
                    long j10 = j3;
                    int i39 = i34;
                    this.f6714 = i8;
                    if (j == j4) {
                        this.f6714 = 0;
                        AbstractC3731.m7857(j2 == j10);
                        this.f6729 = 0;
                    }
                    i34 = i39 + 1;
                    j3 = j10;
                }
                if (i7 == 0) {
                    return;
                }
                short[] sArr8 = this.f6727;
                System.arraycopy(sArr8, i7 * i12, sArr8, 0, (i6 - i7) * i12);
                this.f6720 -= i7;
                return;
            }
        } else {
            m4529(this.f6717, 0, this.f6725);
            this.f6725 = 0;
        }
        f = f4;
        if (f != 1.0f) {
        }
    }
}
