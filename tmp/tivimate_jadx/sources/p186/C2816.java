package p186;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.util.WeakHashMap;
import p349.C4292;

/* renamed from: ˋᵔ.ᐧﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2816 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2816 f10588;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2822 f10589;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            f10588 = C2813.f10586;
        } else if (i >= 30) {
            f10588 = C2767.f10528;
        } else {
            f10588 = C2822.f10597;
        }
    }

    public C2816() {
        this.f10589 = new C2822(this);
    }

    public C2816(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            this.f10589 = new C2813(this, windowInsets);
            return;
        }
        if (i >= 31) {
            this.f10589 = new C2802(this, windowInsets);
            return;
        }
        if (i >= 30) {
            this.f10589 = new C2767(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.f10589 = new C2837(this, windowInsets);
        } else if (i >= 28) {
            this.f10589 = new C2838(this, windowInsets);
        } else {
            this.f10589 = new C2788(this, windowInsets);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C4292 m6252(C4292 c4292, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c4292.f15891 - i);
        int max2 = Math.max(0, c4292.f15890 - i2);
        int max3 = Math.max(0, c4292.f15888 - i3);
        int max4 = Math.max(0, c4292.f15889 - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c4292 : C4292.m8691(max, max2, max3, max4);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C2816 m6253(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        C2816 c2816 = new C2816(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            C2816 m6200 = AbstractC2789.m6200(view);
            C2822 c2822 = c2816.f10589;
            c2822.mo6248(m6200);
            c2822.mo6165(view.getRootView());
            c2822.mo6246(view.getWindowSystemUiVisibility());
        }
        return c2816;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2816) {
            return Objects.equals(this.f10589, ((C2816) obj).f10589);
        }
        return false;
    }

    public final int hashCode() {
        C2822 c2822 = this.f10589;
        if (c2822 == null) {
            return 0;
        }
        return c2822.hashCode();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m6254() {
        return this.f10589.mo6247().f15888;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m6255() {
        return this.f10589.mo6247().f15890;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m6256() {
        return this.f10589.mo6247().f15891;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m6257() {
        return this.f10589.mo6247().f15889;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final WindowInsets m6258() {
        C2822 c2822 = this.f10589;
        if (c2822 instanceof AbstractC2810) {
            return ((AbstractC2810) c2822).f10576;
        }
        return null;
    }
}
