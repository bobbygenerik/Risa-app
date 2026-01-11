package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.google.android.material.datepicker.C0670;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p003.C0781;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p186.C2799;
import p186.C2830;
import p186.C2839;
import p186.InterfaceC2827;
import p384.C4603;
import p415.AbstractC4919;
import p415.AbstractC4922;
import p415.C4924;
import p415.InterfaceC4928;
import ˈˊ.ˉˆ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC2827 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f325;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Rect f326;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final float f327;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final C0781 f328;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C2839 f329;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public VelocityTracker f330;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f331;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final OverScroller f332;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f333;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public C4924 f334;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f335;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final EdgeEffect f336;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f337;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final int f338;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f339;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final int[] f340;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f341;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C2799 f342;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final C2830 f343;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f344;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f345;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final EdgeEffect f346;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public View f347;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public float f348;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f349;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f350;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f351;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final int[] f352;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static final float f323 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static final C0670 f322 = new C0670(4);

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static final int[] f324 = {R.attr.fillViewport};

    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, ʻʿ.ˉˆ] */
    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ar.tvplayer.tv.R.attr.67t);
        this.f326 = new Rect();
        this.f349 = true;
        this.f341 = false;
        this.f347 = null;
        this.f350 = false;
        this.f331 = true;
        this.f325 = -1;
        this.f340 = new int[2];
        this.f352 = new int[2];
        this.f343 = new C2830(getContext(), new C4603(this));
        int i = Build.VERSION.SDK_INT;
        this.f346 = i >= 31 ? AbstractC4919.m9721(context, attributeSet) : new EdgeEffect(context);
        this.f336 = i >= 31 ? AbstractC4919.m9721(context, attributeSet) : new EdgeEffect(context);
        this.f327 = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f332 = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f339 = viewConfiguration.getScaledTouchSlop();
        this.f338 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f337 = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f324, ar.tvplayer.tv.R.attr.67t, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f328 = new Object();
        this.f329 = new C2839(this);
        setNestedScrollingEnabled(true);
        AbstractC2823.m6273(this, f322);
    }

    private C2799 getScrollFeedbackProvider() {
        if (this.f342 == null) {
            this.f342 = new C2799(this);
        }
        return this.f342;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m122(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m122((View) parent, nestedScrollView);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void computeScroll() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? (scrollY - max) + bottom : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m124(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f329.m6302(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.f329.m6301(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f329.m6296(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f329.m6297(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f346;
        int i2 = 0;
        if (!edgeEffect.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                i = getPaddingLeft();
            } else {
                i = 0;
            }
            if (getClipToPadding()) {
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            }
            canvas.translate(i, min);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect2 = this.f336;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getScrollRange(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            i2 = getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            max -= getPaddingBottom();
        }
        canvas.translate(i2 - width2, max);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0781 c0781 = this.f328;
        return c0781.f3264 | c0781.f3265;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.f348 == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f348 = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f348;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f329.m6303(0);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f329.f10642;
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f341 = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        float f;
        if (motionEvent.getAction() == 8 && !this.f350) {
            if (ˉˆ.ʾᵎ(motionEvent, 2)) {
                f = motionEvent.getAxisValue(9);
                i = 9;
                i2 = (int) motionEvent.getX();
            } else if (ˉˆ.ʾᵎ(motionEvent, 4194304)) {
                float axisValue = motionEvent.getAxisValue(26);
                i2 = getWidth() / 2;
                i = 26;
                f = axisValue;
            } else {
                i = 0;
                i2 = 0;
                f = 0.0f;
            }
            if (f != 0.0f) {
                m131(-((int) (getVerticalScrollFactorCompat() * f)), i, motionEvent, i2, 1, ˉˆ.ʾᵎ(motionEvent, 8194));
                if (i == 0) {
                    return true;
                }
                this.f343.m6288(motionEvent, i);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 2 && this.f350) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    int i2 = this.f325;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            String str = "Invalid pointerId=" + i2 + " in onInterceptTouchEvent";
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f335) > this.f339 && (2 & getNestedScrollAxes()) == 0) {
                                this.f350 = true;
                                this.f335 = y;
                                if (this.f330 == null) {
                                    this.f330 = VelocityTracker.obtain();
                                }
                                this.f330.addMovement(motionEvent);
                                this.f333 = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i != 3) {
                    if (i == 6) {
                        m129(motionEvent);
                    }
                }
            }
            this.f350 = false;
            this.f325 = -1;
            VelocityTracker velocityTracker = this.f330;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f330 = null;
            }
            if (this.f332.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            m132(0);
        } else {
            int y2 = (int) motionEvent.getY();
            int x = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 >= childAt.getTop() - scrollY && y2 < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight()) {
                    this.f335 = y2;
                    this.f325 = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.f330;
                    if (velocityTracker2 == null) {
                        this.f330 = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.f330.addMovement(motionEvent);
                    this.f332.computeScrollOffset();
                    if (!m123(motionEvent) && this.f332.isFinished()) {
                        z = false;
                    }
                    this.f350 = z;
                    this.f329.m6299(2, 0);
                }
            }
            if (!m123(motionEvent) && this.f332.isFinished()) {
                z = false;
            }
            this.f350 = z;
            VelocityTracker velocityTracker3 = this.f330;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f330 = null;
            }
        }
        return this.f350;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = 0;
        this.f349 = false;
        View view = this.f347;
        if (view != null && m122(view, this)) {
            View view2 = this.f347;
            Rect rect = this.f326;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m136 = m136(rect);
            if (m136 != 0) {
                scrollBy(0, m136);
            }
        }
        this.f347 = null;
        if (!this.f341) {
            if (this.f334 != null) {
                scrollTo(getScrollX(), this.f334.f18366);
                this.f334 = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i5 = 0;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i5 && scrollY >= 0) {
                i6 = paddingTop + scrollY > i5 ? i5 - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f341 = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f351 && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m127((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return this.f329.m6301(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        this.f329.m6296(i, i2, 0, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m135(null, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo49(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus != null && m128(findNextFocus, 0, getHeight())) {
            return findNextFocus.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4924)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4924 c4924 = (C4924) parcelable;
        super.onRestoreInstanceState(c4924.getSuperState());
        this.f334 = c4924;
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, ﹳـ.ᵔᵢ] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.f18366 = getScrollY();
        return baseSavedState;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m128(findFocus, 0, i4)) {
            return;
        }
        Rect rect = this.f326;
        findFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(findFocus, rect);
        int m136 = m136(rect);
        if (m136 != 0) {
            if (this.f331) {
                m126(0, m136, false);
            } else {
                scrollBy(0, m136);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo51(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo48(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f349) {
            this.f347 = view2;
        } else {
            Rect rect = this.f326;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m136 = m136(rect);
            if (m136 != 0) {
                scrollBy(0, m136);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int m136 = m136(rect);
        boolean z2 = m136 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m136);
                return z2;
            }
            m126(0, m136, false);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.f330) != null) {
            velocityTracker.recycle();
            this.f330 = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f349 = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i < 0) {
                i = 0;
            } else if (width + i > width2) {
                i = width2 - width;
            }
            if (height >= height2 || i2 < 0) {
                i2 = 0;
            } else if (height + i2 > height2) {
                i2 = height2 - height;
            }
            if (i == getScrollX() && i2 == getScrollY()) {
                return;
            }
            super.scrollTo(i, i2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f351) {
            this.f351 = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C2839 c2839 = this.f329;
        if (c2839.f10642) {
            ViewGroup viewGroup = c2839.f10641;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            AbstractC2776.m6175(viewGroup);
        }
        c2839.f10642 = z;
    }

    public void setOnScrollChangeListener(InterfaceC4928 interfaceC4928) {
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f331 = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.f329.m6299(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        m132(0);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m123(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.f346;
        if (ʽʽ.ﾞʻ(edgeEffect) != 0.0f) {
            ʽʽ.ˏי(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f336;
        if (ʽʽ.ﾞʻ(edgeEffect2) == 0.0f) {
            return z;
        }
        ʽʽ.ˏי(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m124(KeyEvent keyEvent) {
        this.f326.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 19) {
                        return keyEvent.isAltPressed() ? m133(33) : m134(33);
                    }
                    if (keyCode == 20) {
                        return keyEvent.isAltPressed() ? m133(130) : m134(130);
                    }
                    if (keyCode == 62) {
                        m137(keyEvent.isShiftPressed() ? 33 : 130);
                        return false;
                    }
                    if (keyCode == 92) {
                        return m133(33);
                    }
                    if (keyCode == 93) {
                        return m133(130);
                    }
                    if (keyCode == 122) {
                        m137(33);
                        return false;
                    }
                    if (keyCode == 123) {
                        m137(130);
                        return false;
                    }
                }
                return false;
            }
        }
        if (isFocused() && keyEvent.getKeyCode() != 4) {
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findNextFocus != null && findNextFocus != this && findNextFocus.requestFocus(130)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m125(int i, int i2, int i3, int i4) {
        int i5;
        boolean z;
        int i6;
        boolean z2;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i7 = i3 + i;
        if (i2 <= 0 && i2 >= 0) {
            i5 = i2;
            z = false;
        } else {
            i5 = 0;
            z = true;
        }
        if (i7 > i4) {
            i6 = i4;
        } else {
            if (i7 >= 0) {
                i6 = i7;
                z2 = false;
                if (z2 && !this.f329.m6303(1)) {
                    this.f332.springBack(i5, i6, 0, 0, 0, getScrollRange());
                }
                super.scrollTo(i5, i6);
                return !z || z2;
            }
            i6 = 0;
        }
        z2 = true;
        if (z2) {
            this.f332.springBack(i5, i6, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i5, i6);
        if (z) {
        }
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ʽ */
    public final void mo42(View view, int i, int i2, int[] iArr, int i3) {
        this.f329.m6296(i, i2, i3, iArr, null);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m126(int i, int i2, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f344 > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int max = Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.f332.startScroll(getScrollX(), scrollY, 0, max, 250);
            if (z) {
                this.f329.m6299(2, 1);
            } else {
                m132(1);
            }
            this.f345 = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f332.isFinished()) {
                this.f332.abortAnimation();
                m132(1);
            }
            scrollBy(i, i2);
        }
        this.f344 = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m127(int i) {
        if (getChildCount() > 0) {
            this.f332.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.f329.m6299(2, 1);
            this.f345 = getScrollY();
            postInvalidateOnAnimation();
            if (Build.VERSION.SDK_INT >= 35) {
                AbstractC4922.m9728(this, Math.abs(this.f332.getCurrVelocity()));
            }
        }
    }

    @Override // p186.InterfaceC2827
    /* renamed from: ˈ */
    public final void mo44(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m135(iArr, i4, i5);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m128(View view, int i, int i2) {
        Rect rect = this.f326;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i >= getScrollY() && rect.top - i <= getScrollY() + i2;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m129(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f325) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f335 = (int) motionEvent.getY(i);
            this.f325 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f330;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m130(EdgeEffect edgeEffect, int i) {
        if (i > 0) {
            return true;
        }
        float f = ʽʽ.ﾞʻ(edgeEffect) * getHeight();
        float abs = Math.abs(-i) * 0.35f;
        float f2 = this.f327 * 0.015f;
        double log = Math.log(abs / f2);
        double d = f323;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f2))) < f;
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ˑﹳ */
    public final void mo45(View view, int i, int i2, int i3, int i4, int i5) {
        m135(null, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0129  */
    /* renamed from: יـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m131(int r21, int r22, android.view.MotionEvent r23, int r24, int r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m131(int, int, android.view.MotionEvent, int, int, boolean):int");
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m132(int i) {
        this.f329.m6300(i);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m133(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f326;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return m138(i, rect.top, rect.bottom);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m134(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View view = findFocus;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m128(findNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m131(maxScrollAmount, -1, null, 0, 1, true);
        } else {
            Rect rect = this.f326;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            m131(m136(rect), -1, null, 0, 1, true);
            findNextFocus.requestFocus(i);
        }
        if (view != null && view.isFocused() && !m128(view, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m135(int[] iArr, int i, int i2) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f329.m6297(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int m136(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        int i3 = rect.bottom;
        if (i3 > i2 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i2, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || i3 >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m137(int i) {
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f326;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i2 = rect.top;
        int i3 = height + i2;
        rect.bottom = i3;
        m138(i, i2, i3);
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ⁱˊ */
    public final void mo48(View view, int i) {
        C0781 c0781 = this.f328;
        if (i == 1) {
            c0781.f3264 = 0;
        } else {
            c0781.f3265 = 0;
        }
        m132(i);
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﹳٴ */
    public final void mo49(View view, View view2, int i, int i2) {
        C0781 c0781 = this.f328;
        if (i2 == 1) {
            c0781.f3264 = i;
        } else {
            c0781.f3265 = i;
        }
        this.f329.m6299(2, i2);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m138(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z4 = i2 < top && bottom < i3;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4) {
                            if (!z5) {
                            }
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else {
                        if (!z5) {
                        }
                        view = view2;
                    }
                }
            }
        }
        View view3 = view == null ? this : view;
        if (i2 < scrollY || i3 > i4) {
            m131(z2 ? i2 - scrollY : i3 - i4, -1, null, 0, 1, true);
            z = true;
        } else {
            z = false;
        }
        if (view3 != findFocus()) {
            view3.requestFocus(i);
        }
        return z;
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﾞᴵ */
    public final boolean mo51(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }
}
