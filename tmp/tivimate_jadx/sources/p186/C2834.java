package p186;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import ar.tvplayer.tv.R;
import java.util.List;
import p334.C4207;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ˋᵔ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2834 extends AbstractC2782 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final PathInterpolator f10632 = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C4207 f10635 = new C4207();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final DecelerateInterpolator f10633 = new DecelerateInterpolator(1.5f);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final AccelerateInterpolator f10634 = new AccelerateInterpolator(1.5f);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m6290(View view, C2783 c2783, ⁱי r4) {
        ᵎﹶ m6292 = m6292(view);
        if (m6292 != null) {
            m6292.ⁱˉ(c2783, r4);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m6290(viewGroup.getChildAt(i), c2783, r4);
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static WindowInsets m6291(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.2ko) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static ᵎﹶ m6292(View view) {
        Object tag = view.getTag(R.id.rl);
        if (tag instanceof ViewOnApplyWindowInsetsListenerC2808) {
            return ((ViewOnApplyWindowInsetsListenerC2808) tag).f10570;
        }
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m6293(View view, C2783 c2783, C2816 c2816, boolean z) {
        ᵎﹶ m6292 = m6292(view);
        if (m6292 != null) {
            m6292.ʾˋ = c2816;
            if (!z) {
                m6292.ʽⁱ(c2783);
                z = true;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m6293(viewGroup.getChildAt(i), c2783, c2816, z);
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m6294(View view, C2816 c2816, List list) {
        ᵎﹶ m6292 = m6292(view);
        if (m6292 != null) {
            m6292.ʾﾞ(c2816, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m6294(viewGroup.getChildAt(i), c2816, list);
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6295(View view, C2783 c2783) {
        ᵎﹶ m6292 = m6292(view);
        if (m6292 != null) {
            m6292.יﹳ(c2783);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m6295(viewGroup.getChildAt(i), c2783);
            }
        }
    }
}
