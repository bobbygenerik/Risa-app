package p167;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.Choreographer;
import androidx.lifecycle.RunnableC0197;
import java.util.ArrayList;
import p000.ChoreographerFrameCallbackC0764;
import p255.C3368;
import p404.C4790;
import ˉˆ.ʿ;

/* renamed from: ˊᵔ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2604 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final ThreadLocal f9856 = new ThreadLocal();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4790 f9859;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C2609 f9861;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3368 f9863 = new C3368(0);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f9862 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ʿ f9857 = new ʿ(6, this);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final RunnableC0197 f9858 = new RunnableC0197(21, this);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f9864 = false;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f9860 = 1.0f;

    public C2604(C4790 c4790) {
        this.f9859 = c4790;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [android.animation.ValueAnimator$DurationScaleChangeListener, ˊᵔ.ﹳٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5853(C2608 c2608) {
        ArrayList arrayList = this.f9862;
        if (arrayList.size() == 0) {
            ((Choreographer) this.f9859.f18036).postFrameCallback(new ChoreographerFrameCallbackC0764(this.f9858));
            if (Build.VERSION.SDK_INT >= 33) {
                this.f9860 = ValueAnimator.getDurationScale();
                if (this.f9861 == null) {
                    this.f9861 = new C2609(this);
                }
                final C2609 c2609 = this.f9861;
                if (c2609.f9890 == null) {
                    ?? r2 = new ValueAnimator.DurationScaleChangeListener() { // from class: ˊᵔ.ﹳٴ
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f) {
                            C2609.this.f9889.f9860 = f;
                        }
                    };
                    c2609.f9890 = r2;
                    ValueAnimator.registerDurationScaleChangeListener(r2);
                }
            }
        }
        if (arrayList.contains(c2608)) {
            return;
        }
        arrayList.add(c2608);
    }
}
