package p137;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: ˉˆ.ᵎʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC2318 implements View.OnTouchListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C2254 f9054;

    public ViewOnTouchListenerC2318(C2254 c2254) {
        this.f9054 = c2254;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C2254 c2254 = this.f9054;
        RunnableC2309 runnableC2309 = c2254.f8843;
        Handler handler = c2254.f8839;
        C2331 c2331 = c2254.f8835;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && c2331 != null && c2331.isShowing() && x >= 0 && x < c2331.getWidth() && y >= 0 && y < c2331.getHeight()) {
            handler.postDelayed(runnableC2309, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(runnableC2309);
        return false;
    }
}
