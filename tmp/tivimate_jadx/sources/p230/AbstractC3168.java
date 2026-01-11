package p230;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.leanback.widget.C0097;

/* renamed from: ˑʿ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3168 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0097 f12104;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3176 f12105;

    /* JADX WARN: Type inference failed for: r0v1, types: [ˑʿ.ᵔי, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [ˑʿ.ᵔי, java.lang.Object] */
    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f12105 = new Object();
        } else {
            f12105 = new Object();
        }
        f12104 = new C0097(Float.class, "translationAlpha", 15);
        new C0097(Rect.class, "clipBounds", 16);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6979(View view, int i) {
        f12105.mo5066(view, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6980(View view, int i, int i2, int i3, int i4) {
        f12105.mo6947(view, i, i2, i3, i4);
    }
}
