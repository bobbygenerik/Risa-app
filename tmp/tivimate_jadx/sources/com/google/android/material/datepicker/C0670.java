package com.google.android.material.datepicker;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;
import p158.C2526;
import p158.C2535;
import p186.C2833;

/* renamed from: com.google.android.material.datepicker.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0670 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f2737;

    public /* synthetic */ C0670(int i) {
        this.f2737 = i;
    }

    @Override // p186.C2833
    /* renamed from: ʽ */
    public void mo2394(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f2737) {
            case 4:
                super.mo2394(view, accessibilityEvent);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                accessibilityEvent.setClassName(ScrollView.class.getName());
                accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
                accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
                accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
                return;
            default:
                super.mo2394(view, accessibilityEvent);
                return;
        }
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        int scrollRange;
        switch (this.f2737) {
            case 0:
                this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                c2535.m5670(null);
                return;
            case 1:
                this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                c2535.m5674(false);
                return;
            case 2:
                this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                c2535.m5670(null);
                return;
            case 3:
                AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
                this.f10631.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setVisibleToUser(false);
                return;
            default:
                this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                c2535.m5665(ScrollView.class.getName());
                if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                    return;
                }
                c2535.m5674(true);
                if (nestedScrollView.getScrollY() > 0) {
                    c2535.m5675(C2526.f9622);
                    c2535.m5675(C2526.f9621);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    c2535.m5675(C2526.f9626);
                    c2535.m5675(C2526.f9618);
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        if (r6 != 16908346) goto L32;
     */
    @Override // p186.C2833
    /* renamed from: ᵎﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2396(android.view.View r5, int r6, android.os.Bundle r7) {
        /*
            r4 = this;
            int r0 = r4.f2737
            switch(r0) {
                case 4: goto La;
                default: goto L5;
            }
        L5:
            boolean r5 = super.mo2396(r5, r6, r7)
            return r5
        La:
            boolean r7 = super.mo2396(r5, r6, r7)
            r0 = 1
            if (r7 == 0) goto L13
            goto La1
        L13:
            androidx.core.widget.NestedScrollView r5 = (androidx.core.widget.NestedScrollView) r5
            boolean r7 = r5.isEnabled()
            r1 = 0
            if (r7 != 0) goto L1e
            goto La0
        L1e:
            int r7 = r5.getHeight()
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            android.graphics.Matrix r3 = r5.getMatrix()
            boolean r3 = r3.isIdentity()
            if (r3 == 0) goto L3b
            boolean r3 = r5.getGlobalVisibleRect(r2)
            if (r3 == 0) goto L3b
            int r7 = r2.height()
        L3b:
            r2 = 4096(0x1000, float:5.74E-42)
            if (r6 == r2) goto L75
            r2 = 8192(0x2000, float:1.148E-41)
            if (r6 == r2) goto L4e
            r2 = 16908344(0x1020038, float:2.3877386E-38)
            if (r6 == r2) goto L4e
            r2 = 16908346(0x102003a, float:2.3877392E-38)
            if (r6 == r2) goto L75
            goto La0
        L4e:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 - r7
            int r6 = java.lang.Math.max(r6, r1)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto La0
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.m126(r1, r6, r0)
            goto La1
        L75:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 + r7
            int r7 = r5.getScrollRange()
            int r6 = java.lang.Math.min(r6, r7)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto La0
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.m126(r1, r6, r0)
            goto La1
        La0:
            r0 = r1
        La1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.C0670.mo2396(android.view.View, int, android.os.Bundle):boolean");
    }
}
