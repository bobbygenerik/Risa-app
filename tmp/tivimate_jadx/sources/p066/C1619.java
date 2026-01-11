package p066;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import java.util.ArrayList;
import p087.AbstractC1751;

/* renamed from: ʾˎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1619 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Integer f6453;

    /* renamed from: ʽ, reason: contains not printable characters */
    public ViewTreeObserverOnPreDrawListenerC1617 f6454;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f6455 = new ArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View f6456;

    public C1619(ImageView imageView) {
        this.f6456 = imageView;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4399(int i, int i2, int i3) {
        int i4 = i2 - i3;
        if (i4 > 0) {
            return i4;
        }
        int i5 = i - i3;
        if (i5 > 0) {
            return i5;
        }
        View view = this.f6456;
        if (view.isLayoutRequested() || i2 != -2) {
            return 0;
        }
        if (Log.isLoggable("ViewTarget", 4)) {
        }
        Context context = view.getContext();
        if (f6453 == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            AbstractC1751.m4711(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f6453 = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f6453.intValue();
    }
}
