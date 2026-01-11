package p005;

import android.animation.TypeEvaluator;
import android.support.v4.media.session.AbstractC0001;

/* renamed from: ʻˈ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0827 implements TypeEvaluator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0827 f3532 = new Object();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f3 = ((intValue2 >> 24) & 255) / 255.0f;
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = (float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & 255) / 255.0f, 2.2d);
        float m23 = AbstractC0001.m23(f3, f2, f, f2);
        float m232 = AbstractC0001.m23(pow4, pow, f, pow);
        float m233 = AbstractC0001.m23(pow5, pow2, f, pow2);
        float m234 = AbstractC0001.m23(pow6, pow3, f, pow3);
        float pow7 = ((float) Math.pow(m232, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(m233, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(m234, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(m23 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
