package p179;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;
import p142.InterpolatorC2380;
import p186.AbstractC2823;

/* renamed from: ˋˋ.ˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2705 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public OverScroller f10292;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f10293;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Interpolator f10294;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f10295;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10296;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f10297;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f10298;

    public RunnableC2705(RecyclerView recyclerView) {
        this.f10296 = recyclerView;
        InterpolatorC2380 interpolatorC2380 = RecyclerView.f1452;
        this.f10294 = interpolatorC2380;
        this.f10298 = false;
        this.f10295 = false;
        this.f10292 = new OverScroller(recyclerView.getContext(), interpolatorC2380);
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.f10296;
        int[] iArr = recyclerView.f1463;
        if (recyclerView.f1521 == null) {
            recyclerView.removeCallbacks(this);
            this.f10292.abortAnimation();
            return;
        }
        this.f10295 = false;
        this.f10298 = true;
        recyclerView.m936();
        OverScroller overScroller = this.f10292;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i5 = currX - this.f10293;
            int i6 = currY - this.f10297;
            this.f10293 = currX;
            this.f10297 = currY;
            int m923 = RecyclerView.m923(i5, recyclerView.f1476, recyclerView.f1529, recyclerView.getWidth());
            int m9232 = RecyclerView.m923(i6, recyclerView.f1532, recyclerView.f1458, recyclerView.getHeight());
            int[] iArr2 = recyclerView.f1463;
            iArr2[0] = 0;
            iArr2[1] = 0;
            if (recyclerView.m939(m923, m9232, 1, iArr2, null)) {
                m923 -= iArr[0];
                m9232 -= iArr[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.m980(m923, m9232);
            }
            if (recyclerView.f1474 != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.m948(iArr, m923, m9232);
                int i7 = iArr[0];
                int i8 = iArr[1];
                int i9 = m923 - i7;
                int i10 = m9232 - i8;
                C2688 c2688 = recyclerView.f1521.f10149;
                if (c2688 != null && !c2688.f10238 && c2688.f10241) {
                    int m6109 = recyclerView.f1516.m6109();
                    if (m6109 == 0) {
                        c2688.m6037();
                    } else if (c2688.f10247 >= m6109) {
                        c2688.f10247 = m6109 - 1;
                        c2688.m6038(i7, i8);
                    } else {
                        c2688.m6038(i7, i8);
                    }
                }
                i = i9;
                i3 = i7;
                i2 = i10;
                i4 = i8;
            } else {
                i = m923;
                i2 = m9232;
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.f1486.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f1463;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.m931(i3, i4, i, i2, null, 1, iArr3);
            int i11 = i - iArr[0];
            int i12 = i2 - iArr[1];
            if (i3 != 0 || i4 != 0) {
                recyclerView.m963(i3, i4);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i11 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i12 != 0));
            C2688 c26882 = recyclerView.f1521.f10149;
            if ((c26882 == null || !c26882.f10238) && z) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i13 = i11 < 0 ? -currVelocity : i11 > 0 ? currVelocity : 0;
                    if (i12 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i12 <= 0) {
                        currVelocity = 0;
                    }
                    if (i13 < 0) {
                        recyclerView.m933();
                        if (recyclerView.f1476.isFinished()) {
                            recyclerView.f1476.onAbsorb(-i13);
                        }
                    } else if (i13 > 0) {
                        recyclerView.m984();
                        if (recyclerView.f1529.isFinished()) {
                            recyclerView.f1529.onAbsorb(i13);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.m941();
                        if (recyclerView.f1532.isFinished()) {
                            recyclerView.f1532.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.m942();
                        if (recyclerView.f1458.isFinished()) {
                            recyclerView.f1458.onAbsorb(currVelocity);
                        }
                    }
                    if (i13 != 0 || currVelocity != 0) {
                        recyclerView.postInvalidateOnAnimation();
                    }
                }
                if (RecyclerView.f1448) {
                    C2676 c2676 = recyclerView.f1498;
                    int[] iArr4 = c2676.f10199;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    c2676.f10197 = 0;
                }
            } else {
                m6076();
                RunnableC2728 runnableC2728 = recyclerView.f1459;
                if (runnableC2728 != null) {
                    runnableC2728.m6126(recyclerView, i3, i4);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                AbstractC2686.m6034(recyclerView, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        C2688 c26883 = recyclerView.f1521.f10149;
        if (c26883 != null && c26883.f10238) {
            c26883.m6038(0, 0);
        }
        this.f10298 = false;
        if (!this.f10295) {
            recyclerView.setScrollState(0);
            recyclerView.m961(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            recyclerView.postOnAnimation(this);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6075(int i, int i2, int i3, Interpolator interpolator) {
        RecyclerView recyclerView = this.f10296;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                abs = abs2;
            }
            i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }
        int i4 = i3;
        if (interpolator == null) {
            interpolator = RecyclerView.f1452;
        }
        if (this.f10294 != interpolator) {
            this.f10294 = interpolator;
            this.f10292 = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f10297 = 0;
        this.f10293 = 0;
        recyclerView.setScrollState(2);
        this.f10292.startScroll(0, 0, i, i2, i4);
        m6076();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6076() {
        if (this.f10298) {
            this.f10295 = true;
            return;
        }
        RecyclerView recyclerView = this.f10296;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        recyclerView.postOnAnimation(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6077(int i, int i2) {
        RecyclerView recyclerView = this.f10296;
        recyclerView.setScrollState(2);
        this.f10297 = 0;
        this.f10293 = 0;
        Interpolator interpolator = this.f10294;
        InterpolatorC2380 interpolatorC2380 = RecyclerView.f1452;
        if (interpolator != interpolatorC2380) {
            this.f10294 = interpolatorC2380;
            this.f10292 = new OverScroller(recyclerView.getContext(), interpolatorC2380);
        }
        this.f10292.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        m6076();
    }
}
