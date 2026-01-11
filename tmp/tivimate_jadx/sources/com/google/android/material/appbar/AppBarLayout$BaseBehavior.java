package com.google.android.material.appbar;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p147.AbstractC2412;

/* loaded from: classes.dex */
public class AppBarLayout$BaseBehavior<T> extends AbstractC2412 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f2525;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f2527;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public VelocityTracker f2528;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f2524 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f2526 = -1;

    public AppBarLayout$BaseBehavior() {
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo2319(View view, View view2, int i) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final /* synthetic */ void mo2320(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo2321(View view, Parcelable parcelable) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean mo2322(View view, int i, int i2) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo2323(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        throw new ClassCastException();
    }

    @Override // p147.AbstractC2412, p039.AbstractC1291
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Parcelable mo2325(View view) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean mo2326(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        throw new ClassCastException();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064 A[RETURN] */
    @Override // p039.AbstractC1291
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2327(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            int r0 = r7.getActionMasked()
            r1 = -1
            r2 = 0
            r3 = 1
            if (r0 == r3) goto L46
            r4 = 2
            if (r0 == r4) goto L2d
            r6 = 3
            if (r0 == r6) goto L4a
            r6 = 6
            if (r0 == r6) goto L13
            goto L58
        L13:
            int r6 = r7.getActionIndex()
            if (r6 != 0) goto L1b
            r6 = r3
            goto L1c
        L1b:
            r6 = r2
        L1c:
            int r0 = r7.getPointerId(r6)
            r5.f2524 = r0
            float r6 = r7.getY(r6)
            r0 = 1056964608(0x3f000000, float:0.5)
            float r6 = r6 + r0
            int r6 = (int) r6
            r5.f2525 = r6
            goto L58
        L2d:
            int r0 = r5.f2524
            int r0 = r7.findPointerIndex(r0)
            if (r0 != r1) goto L36
            goto L63
        L36:
            float r7 = r7.getY(r0)
            int r7 = (int) r7
            r5.f2525 = r7
            r6.getClass()
            java.lang.ClassCastException r6 = new java.lang.ClassCastException
            r6.<init>()
            throw r6
        L46:
            android.view.VelocityTracker r0 = r5.f2528
            if (r0 != 0) goto L65
        L4a:
            r5.f2527 = r2
            r5.f2524 = r1
            android.view.VelocityTracker r6 = r5.f2528
            if (r6 == 0) goto L58
            r6.recycle()
            r6 = 0
            r5.f2528 = r6
        L58:
            android.view.VelocityTracker r6 = r5.f2528
            if (r6 == 0) goto L5f
            r6.addMovement(r7)
        L5f:
            boolean r6 = r5.f2527
            if (r6 != 0) goto L64
        L63:
            return r2
        L64:
            return r3
        L65:
            r0.addMovement(r7)
            android.view.VelocityTracker r7 = r5.f2528
            r0 = 1000(0x3e8, float:1.401E-42)
            r7.computeCurrentVelocity(r0)
            android.view.VelocityTracker r7 = r5.f2528
            int r0 = r5.f2524
            r7.getYVelocity(r0)
            r6.getClass()
            java.lang.ClassCastException r6 = new java.lang.ClassCastException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout$BaseBehavior.mo2327(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo2328(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f2526 < 0) {
            this.f2526 = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f2527) {
            int i = this.f2524;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y = (int) motionEvent.getY(findPointerIndex);
                if (Math.abs(y - this.f2525) > this.f2526) {
                    this.f2525 = y;
                    return true;
                }
            }
            return false;
        }
        if (motionEvent.getActionMasked() != 0) {
            VelocityTracker velocityTracker = this.f2528;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return false;
        }
        this.f2524 = -1;
        motionEvent.getX();
        motionEvent.getY();
        throw new ClassCastException();
    }
}
