package p142;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.leanback.widget.RunnableC0142;
import java.util.Arrays;
import java.util.WeakHashMap;
import p121.AbstractC2026;
import p186.AbstractC2823;

/* renamed from: ˉـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2381 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static final InterpolatorC2380 f9177 = new InterpolatorC2380(0);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int[] f9178;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final OverScroller f9179;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f9180 = -1;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final RunnableC0142 f9181 = new RunnableC0142(19, this);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int[] f9182;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float[] f9183;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final float f9184;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int f9185;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final CoordinatorLayout f9186;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float[] f9187;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f9188;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f9189;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float[] f9190;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final float f9191;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int[] f9192;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final AbstractC2026 f9193;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f9194;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f9195;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public View f9196;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public VelocityTracker f9197;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float[] f9198;

    public C2381(Context context, CoordinatorLayout coordinatorLayout, AbstractC2026 abstractC2026) {
        if (abstractC2026 == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f9186 = coordinatorLayout;
        this.f9193 = abstractC2026;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f9185 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f9194 = viewConfiguration.getScaledTouchSlop();
        this.f9184 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f9191 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f9179 = new OverScroller(context, f9177);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m5454(int i) {
        if ((this.f9189 & (1 << i)) != 0) {
            return true;
        }
        String str = "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.";
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
    
        if (r12 != r11) goto L52;
     */
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5455(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p142.C2381.m5455(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0044 A[RETURN] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5456(android.view.View r4, float r5, float r6) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            goto L45
        L4:
            ˈˊ.ᵔʾ r1 = r3.f9193
            int r4 = r1.mo4209(r4)
            r2 = 1
            if (r4 <= 0) goto Lf
            r4 = r2
            goto L10
        Lf:
            r4 = r0
        L10:
            int r1 = r1.mo5065()
            if (r1 <= 0) goto L18
            r1 = r2
            goto L19
        L18:
            r1 = r0
        L19:
            if (r4 == 0) goto L29
            if (r1 == 0) goto L29
            float r5 = r5 * r5
            float r6 = r6 * r6
            float r6 = r6 + r5
            int r4 = r3.f9194
            int r4 = r4 * r4
            float r4 = (float) r4
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 <= 0) goto L45
            goto L44
        L29:
            if (r4 == 0) goto L37
            float r4 = java.lang.Math.abs(r5)
            int r5 = r3.f9194
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L45
            goto L44
        L37:
            if (r1 == 0) goto L45
            float r4 = java.lang.Math.abs(r6)
            int r5 = r3.f9194
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L45
        L44:
            return r2
        L45:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p142.C2381.m5456(android.view.View, float, float):boolean");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m5457(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m5468();
        }
        if (this.f9197 == null) {
            this.f9197 = VelocityTracker.obtain();
        }
        this.f9197.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m5463 = m5463((int) x, (int) y);
            m5469(x, y, pointerId);
            m5466(m5463, pointerId);
            int i3 = this.f9192[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f9195 == 1) {
                m5462();
            }
            m5468();
            return;
        }
        AbstractC2026 abstractC2026 = this.f9193;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f9195 == 1) {
                    this.f9188 = true;
                    abstractC2026.mo4206(this.f9196, 0.0f, 0.0f);
                    this.f9188 = false;
                    if (this.f9195 == 1) {
                        m5464(0);
                    }
                }
                m5468();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                m5469(x2, y2, pointerId2);
                if (this.f9195 == 0) {
                    m5466(m5463((int) x2, (int) y2), pointerId2);
                    int i4 = this.f9192[pointerId2];
                    return;
                }
                int i5 = (int) x2;
                int i6 = (int) y2;
                View view = this.f9196;
                if (view != null && i5 >= view.getLeft() && i5 < view.getRight() && i6 >= view.getTop() && i6 < view.getBottom()) {
                    i2 = 1;
                }
                if (i2 != 0) {
                    m5466(this.f9196, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f9195 == 1 && pointerId3 == this.f9180) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.f9180) {
                        View m54632 = m5463((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view2 = this.f9196;
                        if (m54632 == view2 && m5466(view2, pointerId4)) {
                            i = this.f9180;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    m5462();
                }
            }
            m5458(pointerId3);
            return;
        }
        if (this.f9195 == 1) {
            if (m5454(this.f9180)) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f9180);
                float x3 = motionEvent.getX(findPointerIndex);
                float y3 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f9198;
                int i7 = this.f9180;
                int i8 = (int) (x3 - fArr[i7]);
                int i9 = (int) (y3 - this.f9190[i7]);
                int left = this.f9196.getLeft() + i8;
                int top = this.f9196.getTop() + i9;
                int left2 = this.f9196.getLeft();
                int top2 = this.f9196.getTop();
                if (i8 != 0) {
                    left = abstractC2026.mo4212(this.f9196, left);
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    this.f9196.offsetLeftAndRight(left - left2);
                }
                if (i9 != 0) {
                    top = abstractC2026.mo4207(this.f9196, top);
                    WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                    this.f9196.offsetTopAndBottom(top - top2);
                }
                if (i8 != 0 || i9 != 0) {
                    abstractC2026.mo4208(this.f9196, left, top);
                }
                m5459(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i2 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i2);
            if (m5454(pointerId5)) {
                float x4 = motionEvent.getX(i2);
                float y4 = motionEvent.getY(i2);
                float f = x4 - this.f9183[pointerId5];
                float f2 = y4 - this.f9187[pointerId5];
                Math.abs(f);
                Math.abs(f2);
                int i10 = this.f9192[pointerId5];
                Math.abs(f2);
                Math.abs(f);
                int i11 = this.f9192[pointerId5];
                Math.abs(f);
                Math.abs(f2);
                int i12 = this.f9192[pointerId5];
                Math.abs(f2);
                Math.abs(f);
                int i13 = this.f9192[pointerId5];
                if (this.f9195 != 1) {
                    View m54633 = m5463((int) x4, (int) y4);
                    if (m5456(m54633, f, f2) && m5466(m54633, pointerId5)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i2++;
        }
        m5459(motionEvent);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5458(int i) {
        float[] fArr = this.f9183;
        if (fArr != null) {
            int i2 = this.f9189;
            int i3 = 1 << i;
            if ((i2 & i3) != 0) {
                fArr[i] = 0.0f;
                this.f9187[i] = 0.0f;
                this.f9198[i] = 0.0f;
                this.f9190[i] = 0.0f;
                this.f9192[i] = 0;
                this.f9178[i] = 0;
                this.f9182[i] = 0;
                this.f9189 = (~i3) & i2;
            }
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m5459(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m5454(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f9198[pointerId] = x;
                this.f9190[pointerId] = y;
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m5460(int i, int i2) {
        if (this.f9188) {
            return m5465(i, i2, (int) this.f9197.getXVelocity(this.f9180), (int) this.f9197.getYVelocity(this.f9180));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m5461(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.f9186.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m5462() {
        VelocityTracker velocityTracker = this.f9197;
        float f = this.f9184;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f9197.getXVelocity(this.f9180);
        float abs = Math.abs(xVelocity);
        float f2 = this.f9191;
        if (abs < f2) {
            xVelocity = 0.0f;
        } else if (abs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f9197.getYVelocity(this.f9180);
        float abs2 = Math.abs(yVelocity);
        if (abs2 < f2) {
            f = 0.0f;
        } else if (abs2 <= f) {
            f = yVelocity;
        } else if (yVelocity <= 0.0f) {
            f = -f;
        }
        this.f9188 = true;
        this.f9193.mo4206(this.f9196, xVelocity, f);
        this.f9188 = false;
        if (this.f9195 == 1) {
            m5464(0);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final View m5463(int i, int i2) {
        CoordinatorLayout coordinatorLayout = this.f9186;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f9193.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m5464(int i) {
        this.f9186.removeCallbacks(this.f9181);
        if (this.f9195 != i) {
            this.f9195 = i;
            this.f9193.mo4210(i);
            if (this.f9195 == 0) {
                this.f9196 = null;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m5465(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f9196.getLeft();
        int top = this.f9196.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.f9179;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            m5464(0);
            return false;
        }
        View view = this.f9196;
        int i7 = (int) this.f9191;
        int i8 = (int) this.f9184;
        int abs = Math.abs(i3);
        if (abs < i7) {
            i3 = 0;
        } else if (abs > i8) {
            i3 = i3 > 0 ? i8 : -i8;
        }
        int abs2 = Math.abs(i4);
        if (abs2 < i7) {
            i4 = 0;
        } else if (abs2 > i8) {
            i4 = i4 > 0 ? i8 : -i8;
        }
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int abs5 = Math.abs(i3);
        int abs6 = Math.abs(i4);
        int i9 = abs5 + abs6;
        int i10 = abs3 + abs4;
        if (i3 != 0) {
            f = abs5;
            f2 = i9;
        } else {
            f = abs3;
            f2 = i10;
        }
        float f5 = f / f2;
        if (i4 != 0) {
            f3 = abs6;
            f4 = i9;
        } else {
            f3 = abs4;
            f4 = i10;
        }
        float f6 = f3 / f4;
        AbstractC2026 abstractC2026 = this.f9193;
        overScroller.startScroll(left, top, i5, i6, (int) ((m5461(i6, i4, abstractC2026.mo5065()) * f6) + (m5461(i5, i3, abstractC2026.mo4209(view)) * f5)));
        m5464(2);
        return true;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m5466(View view, int i) {
        if (view == this.f9196 && this.f9180 == i) {
            return true;
        }
        if (view == null || !this.f9193.mo4211(view, i)) {
            return false;
        }
        this.f9180 = i;
        m5467(view, i);
        return true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5467(View view, int i) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.f9186;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.f9196 = view;
        this.f9180 = i;
        this.f9193.mo4205(view, i);
        m5464(1);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5468() {
        this.f9180 = -1;
        float[] fArr = this.f9183;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f9187, 0.0f);
            Arrays.fill(this.f9198, 0.0f);
            Arrays.fill(this.f9190, 0.0f);
            Arrays.fill(this.f9192, 0);
            Arrays.fill(this.f9178, 0);
            Arrays.fill(this.f9182, 0);
            this.f9189 = 0;
        }
        VelocityTracker velocityTracker = this.f9197;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f9197 = null;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m5469(float f, float f2, int i) {
        float[] fArr = this.f9183;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f9187;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f9198;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f9190;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f9192;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f9178;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f9182;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f9183 = fArr2;
            this.f9187 = fArr3;
            this.f9198 = fArr4;
            this.f9190 = fArr5;
            this.f9192 = iArr;
            this.f9178 = iArr2;
            this.f9182 = iArr3;
        }
        float[] fArr9 = this.f9183;
        this.f9198[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f9187;
        this.f9190[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f9192;
        int i3 = (int) f;
        int i4 = (int) f2;
        CoordinatorLayout coordinatorLayout = this.f9186;
        int left = coordinatorLayout.getLeft();
        int i5 = this.f9185;
        int i6 = i3 < left + i5 ? 1 : 0;
        if (i4 < coordinatorLayout.getTop() + i5) {
            i6 |= 4;
        }
        if (i3 > coordinatorLayout.getRight() - i5) {
            i6 |= 2;
        }
        if (i4 > coordinatorLayout.getBottom() - i5) {
            i6 |= 8;
        }
        iArr7[i] = i6;
        this.f9189 |= 1 << i;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5470() {
        if (this.f9195 == 2) {
            OverScroller overScroller = this.f9179;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f9196.getLeft();
            int top = currY - this.f9196.getTop();
            if (left != 0) {
                View view = this.f9196;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f9196;
                WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f9193.mo4208(this.f9196, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.f9186.post(this.f9181);
            }
        }
        return this.f9195 == 2;
    }
}
