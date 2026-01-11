package p366;

import p031.C1143;

/* renamed from: ᵔﹶ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4493 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4493 f16839;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C4493 f16840;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1143 f16841;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final boolean f16842;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C4493 f16844;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16845;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4493 f16843 = new C4493(2);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4493 f16838 = new C4493(0);

    static {
        C4493 c4493 = new C4493(1);
        f16839 = c4493;
        f16840 = new C4493(3);
        f16844 = c4493;
        f16841 = C1143.m3576(c4493, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f16842 = true;
    }

    public /* synthetic */ C4493(int i) {
        this.f16845 = i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m9063(int i, int i2, int i3, int i4) {
        switch (this.f16845) {
            case 0:
                return Math.min(1.0f, f16843.m9063(i, i2, i3, i4));
            case 1:
                return Math.max(i3 / i, i4 / i2);
            case 2:
                if (f16842) {
                    return Math.min(i3 / i, i4 / i2);
                }
                if (Math.max(i2 / i4, i / i3) == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(r2);
            default:
                return 1.0f;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m9064(int i, int i2, int i3, int i4) {
        switch (this.f16845) {
            case 0:
                if (m9063(i, i2, i3, i4) == 1.0f) {
                    return 2;
                }
                return f16843.m9064(i, i2, i3, i4);
            case 1:
                return 2;
            case 2:
                return f16842 ? 2 : 1;
            default:
                return 2;
        }
    }
}
