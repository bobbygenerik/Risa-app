package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import ar.tvplayer.core.domain.ʽﹳ;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import p008.C0838;
import p027.C1090;
import p035.AbstractC1220;
import p039.AbstractC1291;
import p039.C1287;
import p044.C1344;
import p142.C2381;
import p158.C2526;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p186.C2833;
import p186.C2835;
import p188.C2844;
import p188.C2861;
import p188.C2862;
import p259.AbstractC3399;
import p307.AbstractC3740;
import p357.C4347;
import p442.C5196;
import p442.C5197;
import ʼⁱ.ˉٴ;
import ˉᵎ.ⁱˊ;
import ﹳˋ.ʽʽ;
import ﹶﾞ.ⁱי;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends AbstractC1291 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f2565;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final SparseIntArray f2566;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final C2862 f2567;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final float f2568;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2844 f2569;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean f2570;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f2571;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f2572;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean f2573;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0838 f2574;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean f2575;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final ArrayList f2576;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public VelocityTracker f2577;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ColorStateList f2578;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f2579;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f2580;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C2381 f2581;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f2582;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f2583;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f2584;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean f2585;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public WeakReference f2586;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final float f2587;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final float f2588;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f2589;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final SparseIntArray f2590;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f2591;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean f2592;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public HashMap f2593;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f2594;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f2595;

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean f2596;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f2597;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f2598;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final C4347 f2599;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f2600;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f2601;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f2602;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f2603;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f2604;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final SparseIntArray f2605;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ValueAnimator f2606;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public WeakReference f2607;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f2608;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final boolean f2609;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f2610;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f2611;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f2612;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean f2613;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final boolean f2614;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f2615;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f2616;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean f2617;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public boolean f2618;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f2619;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f2620;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f2621;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean f2622;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f2623;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f2624;

    public BottomSheetBehavior() {
        this.f2621 = 0;
        this.f2619 = true;
        this.f2602 = -1;
        this.f2623 = -1;
        this.f2574 = new C0838(this);
        this.f2588 = 0.5f;
        this.f2587 = -1.0f;
        this.f2609 = true;
        this.f2614 = true;
        this.f2615 = 4;
        this.f2568 = 0.1f;
        this.f2576 = new ArrayList();
        this.f2604 = -1;
        this.f2605 = new SparseIntArray();
        this.f2566 = new SparseIntArray();
        this.f2590 = new SparseIntArray();
        this.f2599 = new C4347(this, 1);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        this.f2621 = 0;
        this.f2619 = true;
        this.f2602 = -1;
        this.f2623 = -1;
        this.f2574 = new C0838(this);
        this.f2588 = 0.5f;
        this.f2587 = -1.0f;
        this.f2609 = true;
        this.f2614 = true;
        this.f2615 = 4;
        this.f2568 = 0.1f;
        this.f2576 = new ArrayList();
        this.f2604 = -1;
        this.f2605 = new SparseIntArray();
        this.f2566 = new SparseIntArray();
        this.f2590 = new SparseIntArray();
        this.f2599 = new C4347(this, 1);
        this.f2616 = context.getResources().getDimensionPixelSize(R.dimen.39s);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13298);
        if (obtainStyledAttributes.hasValue(3)) {
            this.f2578 = ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(22)) {
            this.f2567 = C2862.m6361(context, attributeSet, R.attr.622, R.style.ce).m6356();
        }
        C2862 c2862 = this.f2567;
        if (c2862 != null) {
            C2844 c2844 = new C2844(c2862);
            this.f2569 = c2844;
            c2844.m6332(context);
            ColorStateList colorStateList = this.f2578;
            if (colorStateList != null) {
                this.f2569.m6321(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f2569.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m2351(), 1.0f);
        this.f2606 = ofFloat;
        ofFloat.setDuration(500L);
        this.f2606.addUpdateListener(new C1344(2, this));
        this.f2587 = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.f2602 = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.f2623 = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(10);
        if (peekValue == null || (i = peekValue.data) != -1) {
            m2356(obtainStyledAttributes.getDimensionPixelSize(10, -1));
        } else {
            m2356(i);
        }
        boolean z = obtainStyledAttributes.getBoolean(9, false);
        if (this.f2611 != z) {
            this.f2611 = z;
            if (!z && this.f2615 == 5) {
                m2345(4);
            }
            m2355();
        }
        this.f2613 = obtainStyledAttributes.getBoolean(14, false);
        boolean z2 = obtainStyledAttributes.getBoolean(7, true);
        if (this.f2619 != z2) {
            this.f2619 = z2;
            if (this.f2607 != null) {
                m2353();
            }
            m2348((this.f2619 && this.f2615 == 6) ? 3 : this.f2615);
            m2349(this.f2615, true);
            m2355();
        }
        this.f2600 = obtainStyledAttributes.getBoolean(13, false);
        this.f2609 = obtainStyledAttributes.getBoolean(4, true);
        this.f2614 = obtainStyledAttributes.getBoolean(5, true);
        this.f2621 = obtainStyledAttributes.getInt(11, 0);
        float f = obtainStyledAttributes.getFloat(8, 0.5f);
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f2588 = f;
        if (this.f2607 != null) {
            this.f2608 = (int) ((1.0f - f) * this.f2583);
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(6);
        if (peekValue2 == null || peekValue2.type != 16) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(6, 0);
            if (dimensionPixelOffset < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.f2572 = dimensionPixelOffset;
            m2349(this.f2615, true);
        } else {
            int i2 = peekValue2.data;
            if (i2 < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.f2572 = i2;
            m2349(this.f2615, true);
        }
        this.f2580 = obtainStyledAttributes.getInt(12, 500);
        this.f2585 = obtainStyledAttributes.getBoolean(18, false);
        this.f2570 = obtainStyledAttributes.getBoolean(19, false);
        this.f2617 = obtainStyledAttributes.getBoolean(20, false);
        this.f2622 = obtainStyledAttributes.getBoolean(21, true);
        this.f2596 = obtainStyledAttributes.getBoolean(15, false);
        this.f2592 = obtainStyledAttributes.getBoolean(16, false);
        this.f2573 = obtainStyledAttributes.getBoolean(17, false);
        this.f2575 = obtainStyledAttributes.getBoolean(24, true);
        obtainStyledAttributes.recycle();
        this.f2571 = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static int m2339(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static View m2340(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View m2340 = m2340(viewGroup.getChildAt(i));
            if (m2340 != null) {
                return m2340;
            }
        }
        return null;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m2341(int i) {
        if (((View) this.f2607.get()) != null) {
            ArrayList arrayList = this.f2576;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.f2601;
            if (i <= i2 && i2 != m2342()) {
                m2342();
            }
            if (arrayList.size() > 0) {
                throw AbstractC3740.m7931(0, arrayList);
            }
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m2342() {
        if (this.f2619) {
            return this.f2582;
        }
        return Math.max(this.f2572, this.f2622 ? 0 : this.f2597);
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo2343(View view) {
        WeakReference weakReference = this.f2586;
        return (weakReference == null || view != weakReference.get() || this.f2615 == 3 || this.f2579) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r4.getTop() <= r3.f2608) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (java.lang.Math.abs(r5 - r3.f2582) < java.lang.Math.abs(r5 - r3.f2601)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r5 < java.lang.Math.abs(r5 - r3.f2601)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (java.lang.Math.abs(r5 - r2) < java.lang.Math.abs(r5 - r3.f2601)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (java.lang.Math.abs(r5 - r3.f2608) < java.lang.Math.abs(r5 - r3.f2601)) goto L50;
     */
    @Override // p039.AbstractC1291
    /* renamed from: ʼᐧ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2319(android.view.View r4, android.view.View r5, int r6) {
        /*
            r3 = this;
            int r6 = r4.getTop()
            int r0 = r3.m2342()
            r1 = 3
            if (r6 != r0) goto Lf
            r3.m2348(r1)
            return
        Lf:
            java.lang.ref.WeakReference r6 = r3.f2586
            if (r6 == 0) goto Lb5
            java.lang.Object r6 = r6.get()
            if (r5 != r6) goto Lb5
            boolean r5 = r3.f2589
            if (r5 != 0) goto L1f
            goto Lb5
        L1f:
            int r5 = r3.f2591
            r6 = 6
            if (r5 <= 0) goto L34
            boolean r5 = r3.f2619
            if (r5 == 0) goto L2a
            goto Laf
        L2a:
            int r5 = r4.getTop()
            int r0 = r3.f2608
            if (r5 <= r0) goto Laf
            goto Lae
        L34:
            boolean r5 = r3.f2611
            if (r5 == 0) goto L55
            android.view.VelocityTracker r5 = r3.f2577
            if (r5 != 0) goto L3e
            r5 = 0
            goto L4d
        L3e:
            r0 = 1000(0x3e8, float:1.401E-42)
            float r2 = r3.f2571
            r5.computeCurrentVelocity(r0, r2)
            android.view.VelocityTracker r5 = r3.f2577
            int r0 = r3.f2610
            float r5 = r5.getYVelocity(r0)
        L4d:
            boolean r5 = r3.m2357(r4, r5)
            if (r5 == 0) goto L55
            r1 = 5
            goto Laf
        L55:
            int r5 = r3.f2591
            r0 = 4
            if (r5 != 0) goto L93
            int r5 = r4.getTop()
            boolean r2 = r3.f2619
            if (r2 == 0) goto L74
            int r6 = r3.f2582
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r2 = r3.f2601
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto L97
            goto Laf
        L74:
            int r2 = r3.f2608
            if (r5 >= r2) goto L83
            int r0 = r3.f2601
            int r0 = r5 - r0
            int r0 = java.lang.Math.abs(r0)
            if (r5 >= r0) goto Lae
            goto Laf
        L83:
            int r1 = r5 - r2
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f2601
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
            goto Lae
        L93:
            boolean r5 = r3.f2619
            if (r5 == 0) goto L99
        L97:
            r1 = r0
            goto Laf
        L99:
            int r5 = r4.getTop()
            int r1 = r3.f2608
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f2601
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
        Lae:
            r1 = r6
        Laf:
            r5 = 0
            r3.m2350(r1, r4, r5)
            r3.f2589 = r5
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo2319(android.view.View, android.view.View, int):void");
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo2344(C1287 c1287) {
        this.f2607 = null;
        this.f2581 = null;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m2345(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(AbstractC1220.m3775(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.f2611 && i == 5) {
            String str = "Cannot set state: " + i;
            return;
        }
        int i2 = (i == 6 && this.f2619 && m2359(i) <= this.f2582) ? 3 : i;
        WeakReference weakReference = this.f2607;
        if (weakReference == null || weakReference.get() == null) {
            m2348(i);
            return;
        }
        View view = (View) this.f2607.get();
        ˉٴ r1 = new ˉٴ(this, view, i2);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(r1);
        } else {
            r1.run();
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m2346() {
        int i;
        return this.f2624 ? Math.min(Math.max(this.f2612, this.f2583 - ((this.f2620 * 9) / 16)), this.f2598) + this.f2565 : (this.f2613 || this.f2585 || (i = this.f2584) <= 0) ? this.f2595 + this.f2565 : Math.max(this.f2595, i + this.f2616);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m2347() {
        WeakReference weakReference = this.f2607;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.f2607.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˆʾ */
    public final void mo2320(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.f2586;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i2;
        boolean z = this.f2609;
        boolean z2 = this.f2614;
        if (i2 > 0) {
            if (!this.f2589 && !z2 && view2 == view3 && view2.canScrollVertically(1)) {
                this.f2579 = true;
                return;
            }
            if (i4 < m2342()) {
                int m2342 = top - m2342();
                iArr[1] = m2342;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                view.offsetTopAndBottom(-m2342);
                m2348(3);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                view.offsetTopAndBottom(-i2);
                m2348(1);
            }
        } else if (i2 < 0) {
            boolean canScrollVertically = view2.canScrollVertically(-1);
            if (!this.f2589 && !z2 && view2 == view3 && canScrollVertically) {
                this.f2579 = true;
                return;
            }
            if (!canScrollVertically) {
                int i5 = this.f2601;
                if (i4 > i5 && !this.f2611) {
                    int i6 = top - i5;
                    iArr[1] = i6;
                    WeakHashMap weakHashMap3 = AbstractC2823.f10603;
                    view.offsetTopAndBottom(-i6);
                    m2348(4);
                } else {
                    if (!z) {
                        return;
                    }
                    iArr[1] = i2;
                    WeakHashMap weakHashMap4 = AbstractC2823.f10603;
                    view.offsetTopAndBottom(-i2);
                    m2348(1);
                }
            }
        }
        m2341(view.getTop());
        this.f2591 = i2;
        this.f2589 = true;
        this.f2579 = false;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m2348(int i) {
        if (this.f2615 == i) {
            return;
        }
        this.f2615 = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.f2611;
        }
        WeakReference weakReference = this.f2607;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            m2358(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m2358(false);
        }
        m2349(i, true);
        ArrayList arrayList = this.f2576;
        if (arrayList.size() > 0) {
            throw AbstractC3740.m7931(0, arrayList);
        }
        m2355();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉʿ */
    public final void mo2321(View view, Parcelable parcelable) {
        C5197 c5197 = (C5197) parcelable;
        int i = this.f2621;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f2595 = c5197.f19532;
            }
            if (i == -1 || (i & 2) == 2) {
                this.f2619 = c5197.f19535;
            }
            if (i == -1 || (i & 4) == 4) {
                this.f2611 = c5197.f19533;
            }
            if (i == -1 || (i & 8) == 8) {
                this.f2600 = c5197.f19534;
            }
        }
        int i2 = c5197.f19531;
        if (i2 == 1 || i2 == 2) {
            this.f2615 = 4;
        } else {
            this.f2615 = i2;
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉˆ */
    public final boolean mo2322(View view, int i, int i2) {
        this.f2591 = 0;
        this.f2589 = false;
        return (i & 2) != 0;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m2349(int i, boolean z) {
        C2844 c2844;
        if (i == 2) {
            return;
        }
        boolean z2 = this.f2615 == 3 && (this.f2575 || m2347());
        if (this.f2618 == z2 || (c2844 = this.f2569) == null) {
            return;
        }
        this.f2618 = z2;
        ValueAnimator valueAnimator = this.f2606;
        if (z && valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            } else {
                valueAnimator.setFloatValues(c2844.f10671.f10742, z2 ? m2351() : 1.0f);
                valueAnimator.start();
                return;
            }
        }
        if (valueAnimator != null && valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        float m2351 = this.f2618 ? m2351() : 1.0f;
        C2861 c2861 = c2844.f10671;
        if (c2861.f10742 != m2351) {
            c2861.f10742 = m2351;
            c2844.f10661 = true;
            c2844.f10668 = true;
            c2844.invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r4 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        if (r1.m5460(r4.getLeft(), r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        m2348(2);
        m2349(r3, true);
        r2.f2574.m2980(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
    
        return;
     */
    /* renamed from: ˊʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2350(int r3, android.view.View r4, boolean r5) {
        /*
            r2 = this;
            int r0 = r2.m2359(r3)
            ˉـ.ˑﹳ r1 = r2.f2581
            if (r1 == 0) goto L40
            if (r5 == 0) goto L15
            int r4 = r4.getLeft()
            boolean r4 = r1.m5460(r4, r0)
            if (r4 == 0) goto L40
            goto L32
        L15:
            int r5 = r4.getLeft()
            r1.f9196 = r4
            r4 = -1
            r1.f9180 = r4
            r4 = 0
            boolean r4 = r1.m5465(r5, r0, r4, r4)
            if (r4 != 0) goto L30
            int r5 = r1.f9195
            if (r5 != 0) goto L30
            android.view.View r5 = r1.f9196
            if (r5 == 0) goto L30
            r5 = 0
            r1.f9196 = r5
        L30:
            if (r4 == 0) goto L40
        L32:
            r4 = 2
            r2.m2348(r4)
            r4 = 1
            r2.m2349(r3, r4)
            ʻˑ.ﹳٴ r4 = r2.f2574
            r4.m2980(r3)
            return
        L40:
            r2.m2348(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.m2350(int, android.view.View, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0065  */
    /* renamed from: ˏי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m2351() {
        /*
            r6 = this;
            ˋⁱ.ʼˎ r0 = r6.f2569
            r1 = 0
            if (r0 == 0) goto L92
            java.lang.ref.WeakReference r0 = r6.f2607
            if (r0 == 0) goto L92
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L92
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L92
            java.lang.ref.WeakReference r0 = r6.f2607
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r6.m2347()
            if (r2 == 0) goto L92
            android.view.WindowInsets r0 = r0.getRootWindowInsets()
            if (r0 == 0) goto L92
            ˋⁱ.ʼˎ r2 = r6.f2569
            float[] r3 = r2.f10670
            if (r3 == 0) goto L33
            r2 = 3
            r2 = r3[r2]
            goto L45
        L33:
            ˋⁱ.ᵎﹶ r3 = r2.f10671
            ˋⁱ.ﾞʻ r3 = r3.f10755
            ˋⁱ.ᵔʾ r3 = r3.mo6347()
            ˋⁱ.ˈ r3 = r3.f10762
            android.graphics.RectF r2 = r2.m6326()
            float r2 = r3.mo6342(r2)
        L45:
            r3 = 0
            android.view.RoundedCorner r4 = r0.getRoundedCorner(r3)
            if (r4 == 0) goto L5b
            int r4 = r4.getRadius()
            float r4 = (float) r4
            int r5 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r5 <= 0) goto L5b
            int r5 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r5 <= 0) goto L5b
            float r4 = r4 / r2
            goto L5c
        L5b:
            r4 = r1
        L5c:
            ˋⁱ.ʼˎ r2 = r6.f2569
            float[] r5 = r2.f10670
            if (r5 == 0) goto L65
            r2 = r5[r3]
            goto L77
        L65:
            ˋⁱ.ᵎﹶ r3 = r2.f10671
            ˋⁱ.ﾞʻ r3 = r3.f10755
            ˋⁱ.ᵔʾ r3 = r3.mo6347()
            ˋⁱ.ˈ r3 = r3.f10769
            android.graphics.RectF r2 = r2.m6326()
            float r2 = r3.mo6342(r2)
        L77:
            r3 = 1
            android.view.RoundedCorner r0 = r0.getRoundedCorner(r3)
            if (r0 == 0) goto L8d
            int r0 = r0.getRadius()
            float r0 = (float) r0
            int r3 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r3 <= 0) goto L8d
            int r3 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r3 <= 0) goto L8d
            float r1 = r0 / r2
        L8d:
            float r0 = java.lang.Math.max(r4, r1)
            return r0
        L92:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.m2351():float");
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo2352() {
        this.f2607 = null;
        this.f2581 = null;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m2353() {
        int m2346 = m2346();
        if (this.f2619) {
            this.f2601 = Math.max(this.f2583 - m2346, this.f2582);
        } else {
            this.f2601 = this.f2583 - m2346;
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m2354() {
        View view;
        if (this.f2607 != null) {
            m2353();
            if (this.f2615 != 4 || (view = (View) this.f2607.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m2355() {
        View view;
        WeakReference weakReference = this.f2607;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC2823.m6271(view, 1048576);
        AbstractC2823.m6279(view, 0);
        AbstractC2823.m6271(view, 524288);
        AbstractC2823.m6279(view, 0);
        AbstractC2823.m6271(view, 262144);
        AbstractC2823.m6279(view, 0);
        SparseIntArray sparseIntArray = this.f2566;
        int i = sparseIntArray.get(0, -1);
        if (i != -1) {
            AbstractC2823.m6271(view, i);
            AbstractC2823.m6279(view, 0);
            sparseIntArray.delete(0);
        }
        SparseIntArray sparseIntArray2 = this.f2605;
        int i2 = sparseIntArray2.get(0, -1);
        if (i2 != -1) {
            AbstractC2823.m6271(view, i2);
            AbstractC2823.m6279(view, 0);
            sparseIntArray2.delete(0);
        }
        SparseIntArray sparseIntArray3 = this.f2590;
        int i3 = sparseIntArray3.get(0, -1);
        if (i3 != -1) {
            AbstractC2823.m6271(view, i3);
            AbstractC2823.m6279(view, 0);
            sparseIntArray3.delete(0);
        }
        if (!this.f2619 && this.f2615 != 6) {
            sparseIntArray2.put(0, m2360(view, R.string.7c3, 6));
        }
        if (this.f2611) {
            int i4 = 5;
            if (this.f2615 != 5) {
                AbstractC2823.m6276(view, C2526.f9616, new C1090(i4, 13, this));
            }
        }
        int i5 = this.f2615;
        if (i5 == 3) {
            sparseIntArray3.put(0, m2360(view, R.string.4hd, 4));
            return;
        }
        if (i5 == 4) {
            sparseIntArray.put(0, m2360(view, R.string.58j, 3));
        } else {
            if (i5 != 6) {
                return;
            }
            sparseIntArray3.put(0, m2360(view, R.string.4hd, 4));
            sparseIntArray.put(0, m2360(view, R.string.58j, 3));
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ٴﹶ */
    public final void mo2323(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m2356(int i) {
        if (i == -1) {
            if (this.f2624) {
                return;
            } else {
                this.f2624 = true;
            }
        } else {
            if (!this.f2624 && this.f2595 == i) {
                return;
            }
            this.f2624 = false;
            this.f2595 = Math.max(0, i);
        }
        m2354();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean m2357(View view, float f) {
        if (this.f2600) {
            return true;
        }
        if (view.getTop() < this.f2601) {
            return false;
        }
        return Math.abs(((f * this.f2568) + ((float) view.getTop())) - ((float) this.f2601)) / ((float) m2346()) > 0.5f;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m2358(boolean z) {
        WeakReference weakReference = this.f2607;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f2593 != null) {
                    return;
                } else {
                    this.f2593 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.f2607.get() && z) {
                    this.f2593.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.f2593 = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Object, ʻᴵ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.f2607 == null) {
            this.f2612 = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.36o);
            boolean z = (Build.VERSION.SDK_INT < 29 || this.f2613 || this.f2624) ? false : true;
            if (this.f2585 || this.f2570 || this.f2617 || this.f2596 || this.f2592 || this.f2573 || z) {
                ʽﹳ r4 = new ʽﹳ(this, z);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                ?? obj = new Object();
                obj.f3755 = paddingStart;
                obj.f3754 = paddingEnd;
                obj.f3753 = paddingBottom;
                ⁱי r5 = new ⁱי(r4, (Object) obj, 19, false);
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2776.m6173(view, r5);
                if (view.isAttachedToWindow()) {
                    view.requestApplyInsets();
                } else {
                    view.addOnAttachStateChangeListener(new Object());
                }
            }
            AbstractC2823.m6274(view, new C5196(view));
            this.f2607 = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            ʽʽ.ʻٴ(context, R.attr.4ec, 300);
            ʽʽ.ʻٴ(context, R.attr.770, 150);
            ʽʽ.ʻٴ(context, R.attr.37r, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.274);
            resources.getDimension(R.dimen.493);
            C2844 c2844 = this.f2569;
            if (c2844 != null) {
                view.setBackground(c2844);
                float f = this.f2587;
                if (f == -1.0f) {
                    f = view.getElevation();
                }
                c2844.m6327(f);
            } else {
                ColorStateList colorStateList = this.f2578;
                if (colorStateList != null) {
                    AbstractC2776.m6178(view, colorStateList);
                }
            }
            m2355();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.f2581 == null) {
            this.f2581 = new C2381(coordinatorLayout.getContext(), coordinatorLayout, this.f2599);
        }
        int top = view.getTop();
        coordinatorLayout.m110(view, i);
        this.f2620 = coordinatorLayout.getWidth();
        this.f2583 = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f2598 = height;
        int i2 = this.f2583;
        int i3 = i2 - height;
        int i4 = this.f2597;
        if (i3 < i4) {
            boolean z2 = this.f2622;
            int i5 = this.f2623;
            if (z2) {
                if (i5 != -1) {
                    i2 = Math.min(i2, i5);
                }
                this.f2598 = i2;
            } else {
                int i6 = i2 - i4;
                if (i5 != -1) {
                    i6 = Math.min(i6, i5);
                }
                this.f2598 = i6;
            }
        }
        this.f2582 = Math.max(0, this.f2583 - this.f2598);
        this.f2608 = (int) ((1.0f - this.f2588) * this.f2583);
        m2353();
        int i7 = this.f2615;
        if (i7 == 3) {
            int m2342 = m2342();
            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
            view.offsetTopAndBottom(m2342);
        } else if (i7 == 6) {
            int i8 = this.f2608;
            WeakHashMap weakHashMap3 = AbstractC2823.f10603;
            view.offsetTopAndBottom(i8);
        } else if (this.f2611 && i7 == 5) {
            int i9 = this.f2583;
            WeakHashMap weakHashMap4 = AbstractC2823.f10603;
            view.offsetTopAndBottom(i9);
        } else if (i7 == 4) {
            int i10 = this.f2601;
            WeakHashMap weakHashMap5 = AbstractC2823.f10603;
            view.offsetTopAndBottom(i10);
        } else if (i7 == 1 || i7 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap6 = AbstractC2823.f10603;
            view.offsetTopAndBottom(top2);
        }
        m2349(this.f2615, false);
        this.f2586 = new WeakReference(m2340(view));
        ArrayList arrayList = this.f2576;
        if (arrayList.size() <= 0) {
            return true;
        }
        throw AbstractC3740.m7931(0, arrayList);
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔʾ */
    public final Parcelable mo2325(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new C5197(this);
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔᵢ */
    public final boolean mo2326(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(m2339(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.f2602, marginLayoutParams.width), m2339(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.f2623, marginLayoutParams.height));
        return true;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔﹳ */
    public final boolean mo2327(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.f2615;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        C2381 c2381 = this.f2581;
        if (c2381 != null && (this.f2609 || i == 1)) {
            c2381.m5457(motionEvent);
        }
        if (actionMasked == 0) {
            this.f2610 = -1;
            this.f2604 = -1;
            VelocityTracker velocityTracker = this.f2577;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2577 = null;
            }
        }
        if (this.f2577 == null) {
            this.f2577 = VelocityTracker.obtain();
        }
        this.f2577.addMovement(motionEvent);
        if (this.f2581 != null && ((this.f2609 || this.f2615 == 1) && actionMasked == 2 && !this.f2594)) {
            float abs = Math.abs(this.f2604 - motionEvent.getY());
            C2381 c23812 = this.f2581;
            if (abs > c23812.f9194) {
                c23812.m5467(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f2594;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int m2359(int i) {
        if (i == 3) {
            return m2342();
        }
        if (i == 4) {
            return this.f2601;
        }
        if (i == 5) {
            return this.f2583;
        }
        if (i == 6) {
            return this.f2608;
        }
        throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid state to get top offset: "));
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m2360(View view, int i, int i2) {
        int i3;
        String string = view.getResources().getString(i);
        C1090 c1090 = new C1090(i2, 13, this);
        ArrayList m6283 = AbstractC2823.m6283(view);
        int i4 = 0;
        while (true) {
            if (i4 >= m6283.size()) {
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    int[] iArr = AbstractC2823.f10600;
                    if (i5 >= 32 || i6 != -1) {
                        break;
                    }
                    int i7 = iArr[i5];
                    boolean z = true;
                    for (int i8 = 0; i8 < m6283.size(); i8++) {
                        z &= ((C2526) m6283.get(i8)).m5646() != i7;
                    }
                    if (z) {
                        i6 = i7;
                    }
                    i5++;
                }
                i3 = i6;
            } else {
                if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((C2526) m6283.get(i4)).f9630).getLabel())) {
                    i3 = ((C2526) m6283.get(i4)).m5646();
                    break;
                }
                i4++;
            }
        }
        if (i3 != -1) {
            C2526 c2526 = new C2526(null, i3, string, c1090, null);
            View.AccessibilityDelegate m6272 = AbstractC2823.m6272(view);
            C2833 c2833 = m6272 == null ? null : m6272 instanceof C2835 ? ((C2835) m6272).f10636 : new C2833(m6272);
            if (c2833 == null) {
                c2833 = new C2833();
            }
            AbstractC2823.m6273(view, c2833);
            AbstractC2823.m6271(view, c2526.m5646());
            AbstractC2823.m6283(view).add(c2526);
            AbstractC2823.m6279(view, 0);
        }
        return i3;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﾞᴵ */
    public final boolean mo2328(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i;
        C2381 c2381;
        if (!view.isShown() || !this.f2609) {
            this.f2594 = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2610 = -1;
            this.f2604 = -1;
            VelocityTracker velocityTracker = this.f2577;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2577 = null;
            }
        }
        if (this.f2577 == null) {
            this.f2577 = VelocityTracker.obtain();
        }
        this.f2577.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            this.f2604 = y;
            if (this.f2615 != 2) {
                WeakReference weakReference = this.f2586;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.m104(view2, x, y)) {
                    this.f2610 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f2603 = true;
                }
            }
            this.f2594 = this.f2610 == -1 && !coordinatorLayout.m104(view, x, this.f2604);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2603 = false;
            this.f2610 = -1;
            if (this.f2594) {
                this.f2594 = false;
                return false;
            }
        }
        if (this.f2594 || (c2381 = this.f2581) == null || !c2381.m5455(motionEvent)) {
            WeakReference weakReference2 = this.f2586;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.f2594 || this.f2615 == 1 || coordinatorLayout.m104(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f2581 == null || (i = this.f2604) == -1 || Math.abs(i - motionEvent.getY()) <= this.f2581.f9194) {
                return false;
            }
        }
        return true;
    }
}
