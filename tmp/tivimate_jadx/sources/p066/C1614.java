package p066;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;
import p087.AbstractC1751;

/* renamed from: ʾˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1614 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Integer f6443;

    /* renamed from: ʽ, reason: contains not printable characters */
    public ViewTreeObserverOnPreDrawListenerC1617 f6444;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f6445 = new ArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View f6446;

    public C1614(View view) {
        this.f6446 = view;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4397(int i, int i2, int i3) {
        int i4 = i2 - i3;
        if (i4 > 0) {
            return i4;
        }
        int i5 = i - i3;
        if (i5 > 0) {
            return i5;
        }
        View view = this.f6446;
        if (view.isLayoutRequested() || i2 != -2) {
            return 0;
        }
        if (Log.isLoggable("CustomViewTarget", 4)) {
        }
        Context context = view.getContext();
        if (f6443 == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            AbstractC1751.m4711(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f6443 = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f6443.intValue();
    }
}
