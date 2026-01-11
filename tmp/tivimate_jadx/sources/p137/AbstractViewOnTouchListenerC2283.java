package p137;

import android.view.View;
import android.view.ViewConfiguration;
import p353.InterfaceC4305;

/* renamed from: ˉˆ.ˎᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC2283 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f8931;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final float f8932;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final View f8933;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f8934;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public RunnableC2239 f8935;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f8936;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f8937;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public RunnableC2239 f8938;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int[] f8939 = new int[2];

    public AbstractViewOnTouchListenerC2283(View view) {
        this.f8933 = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f8932 = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f8937 = tapTimeout;
        this.f8931 = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r14 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        if (r4 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.AbstractViewOnTouchListenerC2283.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f8936 = false;
        this.f8934 = -1;
        RunnableC2239 runnableC2239 = this.f8938;
        if (runnableC2239 != null) {
            this.f8933.removeCallbacks(runnableC2239);
        }
    }

    /* renamed from: ʽ */
    public abstract boolean mo5239();

    /* renamed from: ˈ */
    public boolean mo5240() {
        InterfaceC4305 mo5241 = mo5241();
        if (mo5241 == null || !mo5241.mo5277()) {
            return true;
        }
        mo5241.dismiss();
        return true;
    }

    /* renamed from: ⁱˊ */
    public abstract InterfaceC4305 mo5241();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5328() {
        RunnableC2239 runnableC2239 = this.f8935;
        View view = this.f8933;
        if (runnableC2239 != null) {
            view.removeCallbacks(runnableC2239);
        }
        RunnableC2239 runnableC22392 = this.f8938;
        if (runnableC22392 != null) {
            view.removeCallbacks(runnableC22392);
        }
    }
}
