package p143;

import android.graphics.Color;
import p349.AbstractC4293;

/* renamed from: ˉٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2393 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f9234;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f9235;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f9236;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f9237;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f9238;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final float f9239;

    public C2393(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f9238 = f;
        this.f9237 = f2;
        this.f9234 = f3;
        this.f9235 = f4;
        this.f9236 = f5;
        this.f9239 = f6;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2393 m5499(float f, float f2, float f3) {
        C2394 c2394 = C2394.f9240;
        float f4 = c2394.f9244;
        Math.sqrt(f / 100.0d);
        float f5 = c2394.f9249 + 4.0f;
        float f6 = c2394.f9241 * f2;
        Math.sqrt(((f2 / ((float) Math.sqrt(r1))) * c2394.f9244) / f5);
        float f7 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float log = ((float) Math.log((f6 * 0.0228d) + 1.0d)) * 43.85965f;
        double d = (3.1415927f * f3) / 180.0f;
        return new C2393(f3, f2, f, f7, log * ((float) Math.cos(d)), log * ((float) Math.sin(d)));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2393 m5500(int i) {
        C2394 c2394 = C2394.f9240;
        float m5492 = AbstractC2392.m5492(Color.red(i));
        float m54922 = AbstractC2392.m5492(Color.green(i));
        float m54923 = AbstractC2392.m5492(Color.blue(i));
        float[][] fArr = AbstractC2392.f9228;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * m54923) + (fArr2[1] * m54922) + (fArr2[0] * m5492);
        float[] fArr3 = fArr[1];
        float f2 = (fArr3[2] * m54923) + (fArr3[1] * m54922) + (fArr3[0] * m5492);
        float[] fArr4 = fArr[2];
        float f3 = (m54923 * fArr4[2]) + (m54922 * fArr4[1]) + (m5492 * fArr4[0]);
        float[][] fArr5 = AbstractC2392.f9232;
        float[] fArr6 = fArr5[0];
        float f4 = (fArr6[2] * f3) + (fArr6[1] * f2) + (fArr6[0] * f);
        float[] fArr7 = fArr5[1];
        float f5 = (fArr7[2] * f3) + (fArr7[1] * f2) + (fArr7[0] * f);
        float[] fArr8 = fArr5[2];
        float f6 = (f3 * fArr8[2]) + (f2 * fArr8[1]) + (f * fArr8[0]);
        float[] fArr9 = c2394.f9246;
        float f7 = c2394.f9241;
        float f8 = c2394.f9244;
        float f9 = c2394.f9249;
        float f10 = fArr9[0] * f4;
        float f11 = fArr9[1] * f5;
        float f12 = fArr9[2] * f6;
        float f13 = c2394.f9247;
        float pow = (float) Math.pow((Math.abs(f10) * f13) / 100.0d, 0.42d);
        float pow2 = (float) Math.pow((Math.abs(f11) * f13) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f12) * f13) / 100.0d, 0.42d);
        float signum = ((Math.signum(f10) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f11) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f12) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d = signum3;
        float f14 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d)) / 11.0f;
        float f15 = ((float) ((signum + signum2) - (d * 2.0d))) / 9.0f;
        float f16 = signum2 * 20.0f;
        float f17 = ((21.0f * signum3) + ((signum * 20.0f) + f16)) / 20.0f;
        float f18 = (((signum * 40.0f) + f16) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f15, f14)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f19 = (3.1415927f * atan2) / 180.0f;
        float pow4 = ((float) Math.pow((f18 * c2394.f9248) / f9, c2394.f9243 * f8)) * 100.0f;
        Math.sqrt(pow4 / 100.0f);
        float f20 = f9 + 4.0f;
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, c2394.f9250), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * c2394.f9245) * c2394.f9242) * ((float) Math.sqrt((f15 * f15) + (f14 * f14)))) / (f17 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow4 / 100.0d));
        Math.sqrt((r0 * f8) / f20);
        float f21 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((f7 * pow5 * 0.0228f) + 1.0f)) * 43.85965f;
        double d2 = f19;
        return new C2393(atan2, pow5, pow4, f21, log * ((float) Math.cos(d2)), log * ((float) Math.sin(d2)));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m5501(C2394 c2394) {
        float f;
        float f2 = this.f9237;
        double d = f2;
        float f3 = this.f9234;
        if (d != 0.0d) {
            double d2 = f3;
            if (d2 != 0.0d) {
                f = f2 / ((float) Math.sqrt(d2 / 100.0d));
                float f4 = c2394.f9250;
                float f5 = c2394.f9247;
                float pow = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, f4), 0.73d), 1.1111111111111112d);
                double d3 = (this.f9238 * 3.1415927f) / 180.0f;
                float cos = ((float) (Math.cos(2.0d + d3) + 3.8d)) * 0.25f;
                float pow2 = c2394.f9249 * ((float) Math.pow(f3 / 100.0d, (1.0d / c2394.f9244) / c2394.f9243));
                float f6 = cos * 3846.1538f * c2394.f9245 * c2394.f9242;
                float f7 = pow2 / c2394.f9248;
                float sin = (float) Math.sin(d3);
                float cos2 = (float) Math.cos(d3);
                float f8 = (((0.305f + f7) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (f6 * 23.0f)));
                float f9 = cos2 * f8;
                float f10 = f8 * sin;
                float f11 = f7 * 460.0f;
                float f12 = ((288.0f * f10) + ((451.0f * f9) + f11)) / 1403.0f;
                float f13 = ((f11 - (891.0f * f9)) - (261.0f * f10)) / 1403.0f;
                float f14 = ((f11 - (f9 * 220.0f)) - (f10 * 6300.0f)) / 1403.0f;
                float f15 = 100.0f / f5;
                float signum = Math.signum(f12) * f15 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f12) * 27.13d) / (400.0d - Math.abs(f12))), 2.380952380952381d));
                float signum2 = Math.signum(f13) * f15 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f13) * 27.13d) / (400.0d - Math.abs(f13))), 2.380952380952381d));
                float signum3 = Math.signum(f14) * f15 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f14) * 27.13d) / (400.0d - Math.abs(f14))), 2.380952380952381d));
                float[] fArr = c2394.f9246;
                float f16 = signum / fArr[0];
                float f17 = signum2 / fArr[1];
                float f18 = signum3 / fArr[2];
                float[][] fArr2 = AbstractC2392.f9231;
                float[] fArr3 = fArr2[0];
                float f19 = (fArr3[2] * f18) + (fArr3[1] * f17) + (fArr3[0] * f16);
                float[] fArr4 = fArr2[1];
                float f20 = (fArr4[2] * f18) + (fArr4[1] * f17) + (fArr4[0] * f16);
                float[] fArr5 = fArr2[2];
                return AbstractC4293.m8699(f19, f20, (f18 * fArr5[2]) + (f17 * fArr5[1]) + (f16 * fArr5[0]));
            }
        }
        f = 0.0f;
        float f42 = c2394.f9250;
        float f52 = c2394.f9247;
        float pow3 = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, f42), 0.73d), 1.1111111111111112d);
        double d32 = (this.f9238 * 3.1415927f) / 180.0f;
        float cos3 = ((float) (Math.cos(2.0d + d32) + 3.8d)) * 0.25f;
        float pow22 = c2394.f9249 * ((float) Math.pow(f3 / 100.0d, (1.0d / c2394.f9244) / c2394.f9243));
        float f62 = cos3 * 3846.1538f * c2394.f9245 * c2394.f9242;
        float f72 = pow22 / c2394.f9248;
        float sin2 = (float) Math.sin(d32);
        float cos22 = (float) Math.cos(d32);
        float f82 = (((0.305f + f72) * 23.0f) * pow3) / (((pow3 * 108.0f) * sin2) + (((11.0f * pow3) * cos22) + (f62 * 23.0f)));
        float f92 = cos22 * f82;
        float f102 = f82 * sin2;
        float f112 = f72 * 460.0f;
        float f122 = ((288.0f * f102) + ((451.0f * f92) + f112)) / 1403.0f;
        float f132 = ((f112 - (891.0f * f92)) - (261.0f * f102)) / 1403.0f;
        float f142 = ((f112 - (f92 * 220.0f)) - (f102 * 6300.0f)) / 1403.0f;
        float f152 = 100.0f / f52;
        float signum4 = Math.signum(f122) * f152 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f122) * 27.13d) / (400.0d - Math.abs(f122))), 2.380952380952381d));
        float signum22 = Math.signum(f132) * f152 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f132) * 27.13d) / (400.0d - Math.abs(f132))), 2.380952380952381d));
        float signum32 = Math.signum(f142) * f152 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f142) * 27.13d) / (400.0d - Math.abs(f142))), 2.380952380952381d));
        float[] fArr6 = c2394.f9246;
        float f162 = signum4 / fArr6[0];
        float f172 = signum22 / fArr6[1];
        float f182 = signum32 / fArr6[2];
        float[][] fArr22 = AbstractC2392.f9231;
        float[] fArr32 = fArr22[0];
        float f192 = (fArr32[2] * f182) + (fArr32[1] * f172) + (fArr32[0] * f162);
        float[] fArr42 = fArr22[1];
        float f202 = (fArr42[2] * f182) + (fArr42[1] * f172) + (fArr42[0] * f162);
        float[] fArr52 = fArr22[2];
        return AbstractC4293.m8699(f192, f202, (f182 * fArr52[2]) + (f172 * fArr52[1]) + (f162 * fArr52[0]));
    }
}
