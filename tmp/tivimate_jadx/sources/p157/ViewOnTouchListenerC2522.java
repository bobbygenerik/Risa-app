package p157;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: ˊˊ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC2522 extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, InterfaceC2513 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2514 f9605;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final GestureDetector f9610;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final PointF f9606 = new PointF();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final PointF f9609 = new PointF();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final float f9607 = 25.0f;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile float f9608 = 3.1415927f;

    public ViewOnTouchListenerC2522(Context context, C2514 c2514) {
        this.f9605 = c2514;
        this.f9610 = new GestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f9606.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f9606.x) / this.f9607;
        float y = motionEvent2.getY();
        PointF pointF = this.f9606;
        float f3 = (y - pointF.y) / this.f9607;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f9608;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.f9609;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = (cos * f3) + (sin * x) + pointF2.y;
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        C2514 c2514 = this.f9605;
        PointF pointF3 = this.f9609;
        synchronized (c2514) {
            float f5 = pointF3.y;
            c2514.f9564 = f5;
            Matrix.setRotateM(c2514.f9566, 0, -f5, (float) Math.cos(c2514.f9561), (float) Math.sin(c2514.f9561), 0.0f);
            Matrix.setRotateM(c2514.f9562, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f9605.f9567.performClick();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f9610.onTouchEvent(motionEvent);
    }

    @Override // p157.InterfaceC2513
    /* renamed from: ﹳٴ */
    public final void mo5642(float[] fArr, float f) {
        this.f9608 = -f;
    }
}
