package p327;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* renamed from: ᴵᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC4061 implements View.OnTouchListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f15462;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Dialog f15463;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f15464;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15465;

    public ViewOnTouchListenerC4061(Dialog dialog, Rect rect) {
        this.f15463 = dialog;
        this.f15465 = rect.left;
        this.f15462 = rect.top;
        this.f15464 = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.f15465;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.f15462, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f15464;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f15463.onTouchEvent(obtain);
    }
}
