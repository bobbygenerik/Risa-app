package p236;

import android.support.v4.media.session.AbstractC0001;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import p334.AbstractInterpolatorC4206;
import p334.C4207;

/* renamed from: ˑˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3200 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final LinearInterpolator f12246 = new LinearInterpolator();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4207 f12245 = new AbstractInterpolatorC4206(C4207.f15652);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4207 f12243 = new C4207();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4207 f12244 = new AbstractInterpolatorC4206(C4207.f15653);

    /* JADX WARN: Type inference failed for: r0v1, types: [ᵎʻ.ﹳٴ, ᵎʻ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r0v3, types: [ᵎʻ.ﹳٴ, ᵎʻ.ⁱˊ] */
    static {
        new DecelerateInterpolator();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7038(float f, int i, int i2) {
        return Math.round(f * (i2 - i)) + i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static float m7039(float f, float f2, float f3, float f4, float f5) {
        return f5 <= f3 ? f : f5 >= f4 ? f2 : m7040(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static float m7040(float f, float f2, float f3) {
        return AbstractC0001.m23(f2, f, f3, f);
    }
}
