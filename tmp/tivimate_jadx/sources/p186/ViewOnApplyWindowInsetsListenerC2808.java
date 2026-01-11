package p186;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.util.WeakHashMap;
import p349.C4292;
import ʽⁱ.ᵎﹶ;
import ʿי.ˎᐧ;
import ﹶﾞ.ⁱי;

/* renamed from: ˋᵔ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC2808 implements View.OnApplyWindowInsetsListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2816 f10569;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ᵎﹶ f10570;

    public ViewOnApplyWindowInsetsListenerC2808(View view, ᵎﹶ r3) {
        C2816 c2816;
        this.f10570 = r3;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        C2816 m6200 = AbstractC2789.m6200(view);
        if (m6200 != null) {
            int i = Build.VERSION.SDK_INT;
            c2816 = (i >= 34 ? new C2769(m6200) : i >= 31 ? new C2818(m6200) : i >= 30 ? new C2800(m6200) : i >= 29 ? new C2815(m6200) : new C2824(m6200)).mo6223();
        } else {
            c2816 = null;
        }
        this.f10569 = c2816;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int[] iArr;
        boolean z;
        if (!view.isLaidOut()) {
            this.f10569 = C2816.m6253(view, windowInsets);
            return C2834.m6291(view, windowInsets);
        }
        C2816 m6253 = C2816.m6253(view, windowInsets);
        C2822 c2822 = m6253.f10589;
        if (this.f10569 == null) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            this.f10569 = AbstractC2789.m6200(view);
        }
        if (this.f10569 == null) {
            this.f10569 = m6253;
            return C2834.m6291(view, windowInsets);
        }
        ᵎﹶ m6292 = C2834.m6292(view);
        if (m6292 != null && Objects.equals((C2816) m6292.ʾˋ, m6253)) {
            return C2834.m6291(view, windowInsets);
        }
        int[] iArr2 = new int[1];
        int[] iArr3 = new int[1];
        C2816 c2816 = this.f10569;
        int i = 1;
        while (i <= 512) {
            C4292 mo6167 = c2822.mo6167(i);
            C4292 mo61672 = c2816.f10589.mo6167(i);
            int i2 = mo6167.f15891;
            int i3 = mo6167.f15889;
            int i4 = mo6167.f15888;
            int i5 = mo6167.f15890;
            int i6 = mo61672.f15891;
            int i7 = mo61672.f15889;
            int i8 = mo61672.f15888;
            int i9 = mo61672.f15890;
            if (i2 > i6 || i5 > i9 || i4 > i8 || i3 > i7) {
                iArr = iArr2;
                z = true;
            } else {
                iArr = iArr2;
                z = false;
            }
            if (z != (i2 < i6 || i5 < i9 || i4 < i8 || i3 < i7)) {
                if (z) {
                    iArr[0] = iArr[0] | i;
                } else {
                    iArr3[0] = iArr3[0] | i;
                }
            }
            i <<= 1;
            iArr2 = iArr;
        }
        int i10 = iArr2[0];
        int i11 = iArr3[0];
        int i12 = i10 | i11;
        if (i12 == 0) {
            this.f10569 = m6253;
            return C2834.m6291(view, windowInsets);
        }
        C2816 c28162 = this.f10569;
        C2783 c2783 = new C2783(i12, (i10 & 8) != 0 ? C2834.f10632 : (i11 & 8) != 0 ? C2834.f10635 : (i10 & 519) != 0 ? C2834.f10633 : (i11 & 519) != 0 ? C2834.f10634 : null, (i12 & 8) != 0 ? 160L : 250L);
        c2783.f10541.mo6191(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(c2783.f10541.mo6192());
        C4292 mo61673 = c2822.mo6167(i12);
        C4292 mo61674 = c28162.f10589.mo6167(i12);
        int min = Math.min(mo61673.f15891, mo61674.f15891);
        int i13 = mo61673.f15890;
        int i14 = mo61674.f15890;
        int min2 = Math.min(i13, i14);
        int i15 = mo61673.f15888;
        int i16 = mo61674.f15888;
        int min3 = Math.min(i15, i16);
        int i17 = mo61673.f15889;
        int i18 = mo61674.f15889;
        ⁱי r7 = new ⁱי(C4292.m8691(min, min2, min3, Math.min(i17, i18)), C4292.m8691(Math.max(mo61673.f15891, mo61674.f15891), Math.max(i13, i14), Math.max(i15, i16), Math.max(i17, i18)), 26, false);
        C2834.m6293(view, c2783, m6253, false);
        duration.addUpdateListener(new C2771(c2783, m6253, c28162, i12, view));
        duration.addListener(new C2803(c2783, view, 1));
        ViewTreeObserverOnPreDrawListenerC2831.m6289(view, new ˎᐧ(view, c2783, r7, duration, 2));
        this.f10569 = m6253;
        return C2834.m6291(view, windowInsets);
    }
}
