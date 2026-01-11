package p073;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import androidx.leanback.widget.ˉˆ;

/* renamed from: ʾⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1645 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int f6688;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ˉˆ f6689;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f6690;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ActivityManager f6691;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f6692;

    static {
        f6688 = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public C1645(Context context) {
        this.f6690 = f6688;
        this.f6692 = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f6691 = activityManager;
        this.f6689 = new ˉˆ(14, context.getResources().getDisplayMetrics());
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.f6690 = 0.0f;
    }
}
