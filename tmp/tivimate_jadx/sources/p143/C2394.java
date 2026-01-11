package p143;

/* renamed from: ˉٴ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2394 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final C2394 f9240;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final float f9241;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f9242;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final float f9243;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f9244;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f9245;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final float[] f9246;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float f9247;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f9248;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f9249;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final float f9250;

    static {
        float[] fArr = AbstractC2392.f9227;
        float m5489 = (float) ((AbstractC2392.m5489() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = AbstractC2392.f9232;
        float f = fArr[0];
        float[] fArr3 = fArr2[0];
        float f2 = fArr3[0] * f;
        float f3 = fArr[1];
        float f4 = (fArr3[1] * f3) + f2;
        float f5 = fArr[2];
        float f6 = (fArr3[2] * f5) + f4;
        float[] fArr4 = fArr2[1];
        float f7 = (fArr4[2] * f5) + (fArr4[1] * f3) + (fArr4[0] * f);
        float[] fArr5 = fArr2[2];
        float f8 = (f5 * fArr5[2]) + (f3 * fArr5[1]) + (f * fArr5[0]);
        float f9 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float exp = (1.0f - (((float) Math.exp(((-m5489) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d = exp;
        if (d > 1.0d) {
            exp = 1.0f;
        } else if (d < 0.0d) {
            exp = 0.0f;
        }
        float f10 = 1.0f / ((5.0f * m5489) + 1.0f);
        float f11 = f10 * f10 * f10 * f10;
        float f12 = 1.0f - f11;
        float cbrt = (0.1f * f12 * f12 * ((float) Math.cbrt(m5489 * 5.0d))) + (f11 * m5489);
        float m54892 = AbstractC2392.m5489() / fArr[1];
        double d2 = m54892;
        float sqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float[] fArr6 = {(float) Math.pow(((r2[0] * cbrt) * f6) / 100.0d, 0.42d), (float) Math.pow(((r2[1] * cbrt) * f7) / 100.0d, 0.42d), (float) Math.pow(((r2[2] * cbrt) * f8) / 100.0d, 0.42d)};
        float f13 = fArr6[0];
        float f14 = (f13 * 400.0f) / (f13 + 27.13f);
        float f15 = fArr6[1];
        float f16 = (f15 * 400.0f) / (f15 + 27.13f);
        float f17 = fArr6[2];
        float[] fArr7 = {f14, f16, (400.0f * f17) / (f17 + 27.13f)};
        f9240 = new C2394(m54892, ((fArr7[2] * 0.05f) + (fArr7[0] * 2.0f) + fArr7[1]) * pow, pow, pow, f9, 1.0f, new float[]{(((100.0f / f6) * exp) + 1.0f) - exp, (((100.0f / f7) * exp) + 1.0f) - exp, (((100.0f / f8) * exp) + 1.0f) - exp}, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public C2394(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f9250 = f;
        this.f9249 = f2;
        this.f9248 = f3;
        this.f9242 = f4;
        this.f9244 = f5;
        this.f9245 = f6;
        this.f9246 = fArr;
        this.f9247 = f7;
        this.f9241 = f8;
        this.f9243 = f9;
    }
}
