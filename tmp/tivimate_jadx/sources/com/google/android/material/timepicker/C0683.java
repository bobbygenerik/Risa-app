package com.google.android.material.timepicker;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import ar.tvplayer.tv.R;
import p075.C1652;
import p158.C2526;
import p158.C2535;
import p186.C2833;

/* renamed from: com.google.android.material.timepicker.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0683 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ClockFaceView f2953;

    public C0683(ClockFaceView clockFaceView) {
        this.f2953 = clockFaceView;
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
        this.f10631.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int intValue = ((Integer) view.getTag(R.id.4a0)).intValue();
        if (intValue > 0) {
            accessibilityNodeInfo.setTraversalAfter((View) this.f2953.f2923.get(intValue - 1));
        }
        c2535.m5678(C1652.m4511(view.isSelected(), 0, 1, intValue, 1));
        accessibilityNodeInfo.setClickable(true);
        c2535.m5675(C2526.f9620);
    }

    @Override // p186.C2833
    /* renamed from: ᵎﹶ */
    public final boolean mo2396(View view, int i, Bundle bundle) {
        if (i != 16) {
            return super.mo2396(view, i, bundle);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        ClockFaceView clockFaceView = this.f2953;
        view.getHitRect(clockFaceView.f2933);
        float centerX = clockFaceView.f2933.centerX();
        float centerY = clockFaceView.f2933.centerY();
        clockFaceView.f2926.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, centerX, centerY, 0));
        clockFaceView.f2926.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, centerX, centerY, 0));
        return true;
    }
}
