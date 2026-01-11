package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import ar.tvplayer.tv.R;

/* renamed from: ˉˆ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2284 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2284 f8940;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final PorterDuff.Mode f8941 = PorterDuff.Mode.SRC_IN;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2241 f8942;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static synchronized PorterDuffColorFilter m5329(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m5244;
        synchronized (C2284.class) {
            m5244 = C2241.m5244(i, mode);
        }
        return m5244;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [ˉˆ.ˏי, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, ﹳʽ.ᴵᵔ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static synchronized void m5330() {
        synchronized (C2284.class) {
            if (f8940 == null) {
                ?? obj = new Object();
                f8940 = obj;
                obj.f8942 = C2241.m5243();
                C2241 c2241 = f8940.f8942;
                ?? obj2 = new Object();
                obj2.f18050 = new int[]{2131230845, 2131230843, 2131230769};
                obj2.f18053 = new int[]{2131230793, R.drawable.2i1, R.drawable.62g, R.drawable.1fa, R.drawable.6nt, R.drawable.1gg, R.drawable.5gq};
                obj2.f18049 = new int[]{2131230842, 2131230844, 2131230786, R.drawable.654, 2131230839, 2131230840, 2131230841};
                obj2.f18051 = new int[]{2131230818, R.drawable.sb, 2131230817};
                obj2.f18054 = new int[]{R.drawable.6n4, R.drawable.7i};
                obj2.f18052 = new int[]{R.drawable.324, R.drawable.661, R.drawable.q9, R.drawable.r6};
                c2241.m5247(obj2);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5331(Drawable drawable, C2330 c2330, int[] iArr) {
        PorterDuff.Mode mode = C2241.f8782;
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = c2330.f9071;
            if (z || c2330.f9072) {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = z ? (ColorStateList) c2330.f9069 : null;
                PorterDuff.Mode mode2 = c2330.f9072 ? (PorterDuff.Mode) c2330.f9070 : C2241.f8782;
                if (colorStateList != null && mode2 != null) {
                    porterDuffColorFilter = C2241.m5244(colorStateList.getColorForState(iArr, 0), mode2);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized C2284 m5332() {
        C2284 c2284;
        synchronized (C2284.class) {
            try {
                if (f8940 == null) {
                    m5330();
                }
                c2284 = f8940;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2284;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized Drawable m5333(Context context, int i) {
        return this.f8942.m5255(context, i);
    }
}
