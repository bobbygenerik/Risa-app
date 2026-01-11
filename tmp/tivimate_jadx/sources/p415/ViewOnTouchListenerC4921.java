package p415;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import p137.C2249;
import p409.RunnableC4848;

/* renamed from: ﹳـ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC4921 implements View.OnTouchListener {

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final int f18348 = ViewConfiguration.getTapTimeout();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2249 f18349;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4926 f18350;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f18351;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f18352;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public RunnableC4848 f18353;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f18354;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final float[] f18355;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C2249 f18356;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f18357;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final float[] f18358;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f18359;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AccelerateInterpolator f18360;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final float[] f18361;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final float[] f18362;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final float[] f18363;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f18364;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f18365;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ﹳـ.ﹳٴ] */
    public ViewOnTouchListenerC4921(C2249 c2249) {
        ?? obj = new Object();
        obj.f18370 = Long.MIN_VALUE;
        obj.f18371 = -1L;
        obj.f18375 = 0L;
        this.f18350 = obj;
        this.f18360 = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f18361 = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f18355 = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f18363 = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f18358 = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f18362 = fArr5;
        this.f18349 = c2249;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.f18359 = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f18354 = f18348;
        obj.f18374 = 500;
        obj.f18373 = 500;
        this.f18356 = c2249;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static float m9723(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f18357
            r1 = 0
            if (r0 != 0) goto L7
            goto L7c
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7c
        L17:
            r7.m9725()
            return r1
        L1b:
            r7.f18365 = r2
            r7.f18364 = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            ˉˆ.ʾˊ r4 = r7.f18349
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.m9727(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.m9727(r9, r8, r3, r2)
            ﹳـ.ﹳٴ r9 = r7.f18350
            r9.f18368 = r0
            r9.f18369 = r8
            boolean r8 = r7.f18352
            if (r8 != 0) goto L7c
            boolean r8 = r7.m9726()
            if (r8 == 0) goto L7c
            ﹳˊ.יـ r8 = r7.f18353
            if (r8 != 0) goto L60
            ﹳˊ.יـ r8 = new ﹳˊ.יـ
            r8.<init>(r2, r7)
            r7.f18353 = r8
        L60:
            r7.f18352 = r2
            r7.f18351 = r2
            boolean r8 = r7.f18364
            if (r8 != 0) goto L75
            int r8 = r7.f18354
            if (r8 <= 0) goto L75
            ﹳˊ.יـ r9 = r7.f18353
            long r5 = (long) r8
            java.util.WeakHashMap r8 = p186.AbstractC2823.f10603
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            ﹳˊ.יـ r8 = r7.f18353
            r8.run()
        L7a:
            r7.f18364 = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p415.ViewOnTouchListenerC4921.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float m9724(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.f18359;
            if (i == 0 || i == 1) {
                if (f < f2) {
                    if (f >= 0.0f) {
                        return 1.0f - (f / f2);
                    }
                    if (this.f18352 && i == 1) {
                        return 1.0f;
                    }
                }
            } else if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        }
        return 0.0f;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9725() {
        int i = 0;
        if (this.f18351) {
            this.f18352 = false;
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        C4926 c4926 = this.f18350;
        int i2 = (int) (currentAnimationTimeMillis - c4926.f18370);
        int i3 = c4926.f18373;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        c4926.f18367 = i;
        c4926.f18372 = c4926.m9730(currentAnimationTimeMillis);
        c4926.f18371 = currentAnimationTimeMillis;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m9726() {
        C2249 c2249;
        int count;
        C4926 c4926 = this.f18350;
        float f = c4926.f18369;
        int abs = (int) (f / Math.abs(f));
        Math.abs(c4926.f18368);
        if (abs != 0 && (count = (c2249 = this.f18356).getCount()) != 0) {
            int childCount = c2249.getChildCount();
            int firstVisiblePosition = c2249.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs <= 0 ? !(abs >= 0 || (firstVisiblePosition <= 0 && c2249.getChildAt(0).getTop() >= 0)) : !(i >= count && c2249.getChildAt(childCount - 1).getBottom() <= c2249.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m9727(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.f18361
            r0 = r0[r7]
            float[] r1 = r3.f18355
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = m9723(r0, r2, r1)
            float r1 = r3.m9724(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.m9724(r5, r0)
            float r4 = r4 - r1
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.f18360
            if (r5 >= 0) goto L25
            float r4 = -r4
            float r4 = r0.getInterpolation(r4)
            float r4 = -r4
            goto L2d
        L25:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 <= 0) goto L36
            float r4 = r0.getInterpolation(r4)
        L2d:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = m9723(r4, r5, r0)
            goto L37
        L36:
            r4 = r2
        L37:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.f18363
            r0 = r0[r7]
            float[] r1 = r3.f18358
            r1 = r1[r7]
            float[] r2 = r3.f18362
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L51
            float r4 = r4 * r0
            float r4 = m9723(r4, r1, r7)
            return r4
        L51:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = m9723(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p415.ViewOnTouchListenerC4921.m9727(float, float, float, int):float");
    }
}
