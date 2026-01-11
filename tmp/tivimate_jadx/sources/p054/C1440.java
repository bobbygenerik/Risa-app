package p054;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p121.AbstractC2026;

/* renamed from: ʽᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1440 extends AbstractC2026 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f5618;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f5619 = -1;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final /* synthetic */ SwipeDismissBehavior f5620;

    public C1440(SwipeDismissBehavior swipeDismissBehavior) {
        this.f5620 = swipeDismissBehavior;
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo4205(View view, int i) {
        this.f5619 = i;
        this.f5618 = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f5620;
            swipeDismissBehavior.f2558 = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f2558 = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004e, code lost:
    
        if (java.lang.Math.abs(r9.getLeft() - r8.f5618) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
     */
    @Override // p121.AbstractC2026
    /* renamed from: ʼʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4206(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.f5619 = r11
            int r11 = r9.getWidth()
            r0 = 0
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r2 = 0
            com.google.android.material.behavior.SwipeDismissBehavior r3 = r8.f5620
            r4 = 1
            if (r1 == 0) goto L37
            int r5 = r9.getLayoutDirection()
            if (r5 != r4) goto L18
            r5 = r4
            goto L19
        L18:
            r5 = r2
        L19:
            int r6 = r3.f2559
            r7 = 2
            if (r6 != r7) goto L1f
            goto L50
        L1f:
            if (r6 != 0) goto L2b
            if (r5 == 0) goto L28
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L65
            goto L50
        L28:
            if (r1 <= 0) goto L65
            goto L50
        L2b:
            if (r6 != r4) goto L65
            if (r5 == 0) goto L32
            if (r1 <= 0) goto L65
            goto L50
        L32:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L65
            goto L50
        L37:
            int r1 = r9.getLeft()
            int r5 = r8.f5618
            int r1 = r1 - r5
            int r5 = r9.getWidth()
            float r5 = (float) r5
            r6 = 1056964608(0x3f000000, float:0.5)
            float r5 = r5 * r6
            int r5 = java.lang.Math.round(r5)
            int r1 = java.lang.Math.abs(r1)
            if (r1 < r5) goto L65
        L50:
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L5f
            int r10 = r9.getLeft()
            int r0 = r8.f5618
            if (r10 >= r0) goto L5d
            goto L5f
        L5d:
            int r0 = r0 + r11
            goto L63
        L5f:
            int r10 = r8.f5618
            int r0 = r10 - r11
        L63:
            r2 = r4
            goto L67
        L65:
            int r0 = r8.f5618
        L67:
            ˉـ.ˑﹳ r10 = r3.f2563
            int r11 = r9.getTop()
            boolean r10 = r10.m5460(r0, r11)
            if (r10 == 0) goto L7b
            ˈˊ.ᵔﹳ r10 = new ˈˊ.ᵔﹳ
            r10.<init>(r3, r9, r2)
            r9.postOnAnimation(r10)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p054.C1440.mo4206(android.view.View, float, float):void");
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo4207(View view, int i) {
        return view.getTop();
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo4208(View view, int i, int i2) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f5620;
        float f = width * swipeDismissBehavior.f2560;
        float width2 = view.getWidth() * swipeDismissBehavior.f2564;
        float abs = Math.abs(i - this.f5618);
        if (abs <= f) {
            view.setAlpha(1.0f);
        } else if (abs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f) / (width2 - f))), 1.0f));
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int mo4209(View view) {
        return view.getWidth();
    }

    @Override // p121.AbstractC2026
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void mo4210(int i) {
    }

    @Override // p121.AbstractC2026
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean mo4211(View view, int i) {
        int i2 = this.f5619;
        return (i2 == -1 || i2 == i) && this.f5620.mo2338(view);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo4212(View view, int i) {
        int width;
        int width2;
        int width3;
        boolean z = view.getLayoutDirection() == 1;
        int i2 = this.f5620.f2559;
        if (i2 == 0) {
            if (z) {
                width = this.f5618 - view.getWidth();
                width2 = this.f5618;
            } else {
                width = this.f5618;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i2 != 1) {
            width = this.f5618 - view.getWidth();
            width2 = view.getWidth() + this.f5618;
        } else if (z) {
            width = this.f5618;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f5618 - view.getWidth();
            width2 = this.f5618;
        }
        return Math.min(Math.max(width, i), width2);
    }
}
