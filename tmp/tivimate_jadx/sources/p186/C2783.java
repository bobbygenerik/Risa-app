package p186;

import android.os.Build;
import android.view.animation.Interpolator;

/* renamed from: ˋᵔ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2783 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC2782 f10541;

    public C2783(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f10541 = new C2793(AbstractC2790.m6202(i, interpolator, j));
        } else {
            this.f10541 = new AbstractC2782(i, interpolator, j);
        }
    }
}
