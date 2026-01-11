package p415;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EdgeEffect;

/* renamed from: ﹳـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4919 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static float m9719(EdgeEffect edgeEffect, float f, float f2) {
        try {
            return edgeEffect.onPullDistance(f, f2);
        } catch (Throwable unused) {
            edgeEffect.onPull(f, f2);
            return 0.0f;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static float m9720(EdgeEffect edgeEffect) {
        try {
            return edgeEffect.getDistance();
        } catch (Throwable unused) {
            return 0.0f;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EdgeEffect m9721(Context context, AttributeSet attributeSet) {
        try {
            return new EdgeEffect(context, attributeSet);
        } catch (Throwable unused) {
            return new EdgeEffect(context);
        }
    }
}
