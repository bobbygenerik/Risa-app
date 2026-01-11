package p312;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import androidx.media3.ui.DefaultTimeBar;

/* renamed from: ᐧⁱ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3883 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ DefaultTimeBar f15115;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15116;

    public /* synthetic */ C3883(DefaultTimeBar defaultTimeBar, int i) {
        this.f15116 = i;
        this.f15115 = defaultTimeBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.f15116;
        DefaultTimeBar defaultTimeBar = this.f15115;
        switch (i) {
            case 0:
                int i2 = DefaultTimeBar.f1259;
                defaultTimeBar.getClass();
                defaultTimeBar.f1291 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Rect rect = defaultTimeBar.f1294;
                float f = defaultTimeBar.f1299;
                defaultTimeBar.f1269 = DefaultTimeBar.m797(3, f);
                if (defaultTimeBar.isEnabled()) {
                    float m797 = DefaultTimeBar.m797(3, f);
                    float m7972 = DefaultTimeBar.m797(6, f);
                    float f2 = (m7972 - m797) * defaultTimeBar.f1291;
                    defaultTimeBar.f1269 = Math.round(defaultTimeBar.hasFocus() ? m797 + f2 : m7972 - f2);
                }
                rect.inset(0, (rect.height() - defaultTimeBar.f1269) / 2);
                defaultTimeBar.invalidate();
                return;
            default:
                int i3 = DefaultTimeBar.f1259;
                defaultTimeBar.getClass();
                defaultTimeBar.f1286 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                defaultTimeBar.invalidate(defaultTimeBar.f1266);
                return;
        }
    }
}
