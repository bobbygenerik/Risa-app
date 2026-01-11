package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p008.C0838;
import p035.AbstractC1220;
import p039.AbstractC1291;
import p039.C1287;
import p137.AbstractC2305;
import p142.C2381;
import p158.C2526;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p188.C2844;
import p188.C2853;
import p188.C2862;
import p188.C2867;
import p259.AbstractC3399;
import p357.C4346;
import p357.C4347;
import p357.C4348;
import ˈˆ.ﾞᴵ;
import ˉᵎ.ⁱˊ;
import ᵔʻ.ـˏ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends AbstractC1291 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C4347 f2809;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C2381 f2810;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public WeakReference f2811;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ColorStateList f2812;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final LinkedHashSet f2813;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f2814;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2862 f2815;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f2816;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f2817;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f2818;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0838 f2819;

    /* renamed from: יـ, reason: contains not printable characters */
    public VelocityTracker f2820;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final float f2821;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f2822;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f2823;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f2824;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public WeakReference f2825;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2844 f2826;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ﾞᴵ f2827;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int f2828;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f2829;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final float f2830;

    public SideSheetBehavior() {
        this.f2819 = new C0838(this);
        this.f2822 = true;
        this.f2824 = 5;
        this.f2821 = 0.1f;
        this.f2828 = -1;
        this.f2813 = new LinkedHashSet();
        this.f2809 = new C4347(this, 0);
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.f2819 = new C0838(this);
        this.f2822 = true;
        this.f2824 = 5;
        this.f2821 = 0.1f;
        this.f2828 = -1;
        this.f2813 = new LinkedHashSet();
        this.f2809 = new C4347(this, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13277);
        if (obtainStyledAttributes.hasValue(3)) {
            this.f2812 = ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.f2815 = C2862.m6361(context, attributeSet, 0, R.style.f267492cf).m6356();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.f2828 = resourceId;
            WeakReference weakReference = this.f2825;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f2825 = null;
            WeakReference weakReference2 = this.f2811;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        C2862 c2862 = this.f2815;
        if (c2862 != null) {
            C2844 c2844 = new C2844(c2862);
            this.f2826 = c2844;
            c2844.m6332(context);
            ColorStateList colorStateList = this.f2812;
            if (colorStateList != null) {
                this.f2826.m6321(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f2826.setTint(typedValue.data);
            }
        }
        this.f2830 = obtainStyledAttributes.getDimension(2, -1.0f);
        this.f2822 = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʽ */
    public final void mo2344(C1287 c1287) {
        this.f2811 = null;
        this.f2810 = null;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m2418() {
        View view;
        WeakReference weakReference = this.f2811;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC2823.m6271(view, 262144);
        AbstractC2823.m6279(view, 0);
        AbstractC2823.m6271(view, 1048576);
        AbstractC2823.m6279(view, 0);
        if (this.f2824 != 5) {
            AbstractC2823.m6276(view, C2526.f9616, new ـˏ(5, 1, this));
        }
        if (this.f2824 != 3) {
            AbstractC2823.m6276(view, C2526.f9624, new ـˏ(3, 1, this));
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉʿ */
    public final void mo2321(View view, Parcelable parcelable) {
        int i = ((C4346) parcelable).f16167;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.f2824 = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r1.m5460(r0, r4.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
    
        m2421(2);
        r2.f2819.m2980(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r4 != false) goto L24;
     */
    /* renamed from: ˏי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2419(int r3, android.view.View r4, boolean r5) {
        /*
            r2 = this;
            r0 = 3
            if (r3 == r0) goto L19
            r0 = 5
            if (r3 != r0) goto Ld
            ˈˆ.ﾞᴵ r0 = r2.f2827
            int r0 = r0.ʽﹳ()
            goto L1f
        Ld:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Invalid state to get outer edge offset: "
            java.lang.String r3 = p307.AbstractC3740.m7932(r3, r5)
            r4.<init>(r3)
            throw r4
        L19:
            ˈˆ.ﾞᴵ r0 = r2.f2827
            int r0 = r0.יـ()
        L1f:
            ˉـ.ˑﹳ r1 = r2.f2810
            if (r1 == 0) goto L57
            if (r5 == 0) goto L30
            int r4 = r4.getTop()
            boolean r4 = r1.m5460(r0, r4)
            if (r4 == 0) goto L57
            goto L4d
        L30:
            int r5 = r4.getTop()
            r1.f9196 = r4
            r4 = -1
            r1.f9180 = r4
            r4 = 0
            boolean r4 = r1.m5465(r0, r5, r4, r4)
            if (r4 != 0) goto L4b
            int r5 = r1.f9195
            if (r5 != 0) goto L4b
            android.view.View r5 = r1.f9196
            if (r5 == 0) goto L4b
            r5 = 0
            r1.f9196 = r5
        L4b:
            if (r4 == 0) goto L57
        L4d:
            r4 = 2
            r2.m2421(r4)
            ʻˑ.ﹳٴ r4 = r2.f2819
            r4.m2980(r3)
            return
        L57:
            r2.m2421(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.m2419(int, android.view.View, boolean):void");
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˑﹳ */
    public final void mo2352() {
        this.f2811 = null;
        this.f2810 = null;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m2420() {
        if (this.f2810 != null) {
            return this.f2822 || this.f2824 == 1;
        }
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        View view2;
        View view3;
        int i2;
        View findViewById;
        int i3 = 1;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.f2811;
        C2844 c2844 = this.f2826;
        int i4 = 0;
        if (weakReference == null) {
            this.f2811 = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            ʽʽ.ʻٴ(context, R.attr.4ec, 300);
            ʽʽ.ʻٴ(context, R.attr.770, 150);
            ʽʽ.ʻٴ(context, R.attr.37r, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.3c3);
            resources.getDimension(R.dimen.4ab);
            resources.getDimension(R.dimen.59o);
            if (c2844 != null) {
                view.setBackground(c2844);
                float f = this.f2830;
                if (f == -1.0f) {
                    f = view.getElevation();
                }
                c2844.m6327(f);
            } else {
                ColorStateList colorStateList = this.f2812;
                if (colorStateList != null) {
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    AbstractC2776.m6178(view, colorStateList);
                }
            }
            int i5 = this.f2824 == 5 ? 4 : 0;
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            m2418();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (AbstractC2823.m6275(view) == null) {
                AbstractC2823.m6278(view, view.getResources().getString(R.string.40h));
            }
        }
        int i6 = Gravity.getAbsoluteGravity(((C1287) view.getLayoutParams()).f4970, i) == 3 ? 1 : 0;
        ﾞᴵ r7 = this.f2827;
        if (r7 == null || r7.ᴵˊ() != i6) {
            C1287 c1287 = null;
            C2862 c2862 = this.f2815;
            if (i6 == 0) {
                this.f2827 = new C4348(this, i3);
                if (c2862 != null) {
                    WeakReference weakReference2 = this.f2811;
                    if (weakReference2 != null && (view3 = (View) weakReference2.get()) != null && (view3.getLayoutParams() instanceof C1287)) {
                        c1287 = (C1287) view3.getLayoutParams();
                    }
                    if (c1287 == null || ((ViewGroup.MarginLayoutParams) c1287).rightMargin <= 0) {
                        C2853 m6366 = c2862.m6366();
                        m6366.f10726 = new C2867(0.0f);
                        m6366.f10721 = new C2867(0.0f);
                        C2862 m6356 = m6366.m6356();
                        if (c2844 != null) {
                            c2844.setShapeAppearanceModel(m6356);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    throw new IllegalArgumentException(AbstractC1220.m3773(i6, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                }
                this.f2827 = new C4348(this, i4);
                if (c2862 != null) {
                    WeakReference weakReference3 = this.f2811;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof C1287)) {
                        c1287 = (C1287) view2.getLayoutParams();
                    }
                    if (c1287 == null || ((ViewGroup.MarginLayoutParams) c1287).leftMargin <= 0) {
                        C2853 m63662 = c2862.m6366();
                        m63662.f10719 = new C2867(0.0f);
                        m63662.f10722 = new C2867(0.0f);
                        C2862 m63562 = m63662.m6356();
                        if (c2844 != null) {
                            c2844.setShapeAppearanceModel(m63562);
                        }
                    }
                }
            }
        }
        if (this.f2810 == null) {
            this.f2810 = new C2381(coordinatorLayout.getContext(), coordinatorLayout, this.f2809);
        }
        int i7 = this.f2827.ʾᵎ(view);
        coordinatorLayout.m110(view, i);
        this.f2816 = coordinatorLayout.getWidth();
        this.f2823 = this.f2827.ʼʼ(coordinatorLayout);
        this.f2829 = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f2817 = marginLayoutParams != null ? this.f2827.ʽ(marginLayoutParams) : 0;
        int i8 = this.f2824;
        if (i8 == 1 || i8 == 2) {
            i4 = i7 - this.f2827.ʾᵎ(view);
        } else if (i8 != 3) {
            if (i8 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f2824);
            }
            i4 = this.f2827.ʽﹳ();
        }
        WeakHashMap weakHashMap2 = AbstractC2823.f10603;
        view.offsetLeftAndRight(i4);
        if (this.f2825 == null && (i2 = this.f2828) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.f2825 = new WeakReference(findViewById);
        }
        Iterator it = this.f2813.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔʾ */
    public final Parcelable mo2325(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new C4346(this);
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔᵢ */
    public final boolean mo2326(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔﹳ */
    public final boolean mo2327(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2824 == 1 && actionMasked == 0) {
            return true;
        }
        if (m2420()) {
            this.f2810.m5457(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f2820) != null) {
            velocityTracker.recycle();
            this.f2820 = null;
        }
        if (this.f2820 == null) {
            this.f2820 = VelocityTracker.obtain();
        }
        this.f2820.addMovement(motionEvent);
        if (m2420() && actionMasked == 2 && !this.f2814 && m2420()) {
            float abs = Math.abs(this.f2818 - motionEvent.getX());
            C2381 c2381 = this.f2810;
            if (abs > c2381.f9194) {
                c2381.m5467(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f2814;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m2421(int i) {
        View view;
        if (this.f2824 == i) {
            return;
        }
        this.f2824 = i;
        WeakReference weakReference = this.f2811;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = this.f2824 == 5 ? 4 : 0;
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.f2813.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        m2418();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﾞᴵ */
    public final boolean mo2328(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        C2381 c2381;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && AbstractC2823.m6275(view) == null) || !this.f2822) {
            this.f2814 = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f2820) != null) {
            velocityTracker.recycle();
            this.f2820 = null;
        }
        if (this.f2820 == null) {
            this.f2820 = VelocityTracker.obtain();
        }
        this.f2820.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f2818 = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f2814) {
            this.f2814 = false;
            return false;
        }
        return (this.f2814 || (c2381 = this.f2810) == null || !c2381.m5455(motionEvent)) ? false : true;
    }
}
