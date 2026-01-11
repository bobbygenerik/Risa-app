package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import ar.tvplayer.tv.R;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.WeakHashMap;
import p003.C0781;
import p010.C0843;
import p039.AbstractC1289;
import p039.AbstractC1291;
import p039.C1287;
import p039.C1292;
import p039.InterfaceC1290;
import p039.ViewGroupOnHierarchyChangeListenerC1286;
import p066.ViewTreeObserverOnPreDrawListenerC1617;
import p186.AbstractC2776;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p186.C2816;
import p186.InterfaceC2791;
import p186.InterfaceC2827;
import p238.C3204;
import p255.C3368;
import p321.AbstractC3949;
import p323.AbstractC3985;
import ʻٴ.ˑﹳ;
import ˏˆ.ﹳٴ;
import ﹳי.ʽ;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC2791, InterfaceC2827 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final ThreadLocal f272;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static final C3204 f273;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final String f274;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final ˑﹳ f275;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static final Class[] f276;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C0781 f277;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ArrayList f278;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f279;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f280;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f281;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ArrayList f282;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f283;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int[] f284;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public ʽ f285;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public ViewGroup.OnHierarchyChangeListener f286;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public Drawable f287;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public View f288;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f289;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ﹳٴ f290;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int[] f291;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public View f292;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int[] f293;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public ViewTreeObserverOnPreDrawListenerC1617 f294;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C2816 f295;

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f274 = r0 != null ? r0.getName() : null;
        f275 = new ˑﹳ(1);
        f276 = new Class[]{Context.class, AttributeSet.class};
        f272 = new ThreadLocal();
        f273 = new C3204(12);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, ʻʿ.ˉˆ] */
    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.6ar);
        CoordinatorLayout coordinatorLayout;
        Context context2;
        this.f279 = new ArrayList();
        this.f290 = new ﹳٴ(7);
        this.f278 = new ArrayList();
        this.f282 = new ArrayList();
        this.f291 = new int[2];
        this.f284 = new int[2];
        this.f277 = new Object();
        int[] iArr = AbstractC3949.f15255;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.6ar, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            coordinatorLayout = this;
            context2 = context;
            coordinatorLayout.saveAttributeDataForStyleable(context2, iArr, attributeSet, obtainStyledAttributes, R.attr.6ar, 0);
        } else {
            coordinatorLayout = this;
            context2 = context;
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context2.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            coordinatorLayout.f293 = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i = 0; i < length; i++) {
                coordinatorLayout.f293[i] = (int) (r1[i] * f);
            }
        }
        coordinatorLayout.f287 = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        m107();
        super.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC1286(this));
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m95(View view, int i) {
        C1287 c1287 = (C1287) view.getLayoutParams();
        int i2 = c1287.f4971;
        if (i2 != i) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            view.offsetTopAndBottom(i - i2);
            c1287.f4971 = i;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m96(View view, int i) {
        C1287 c1287 = (C1287) view.getLayoutParams();
        int i2 = c1287.f4969;
        if (i2 != i) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            view.offsetLeftAndRight(i - i2);
            c1287.f4969 = i;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Rect m97() {
        Rect rect = (Rect) f273.mo3016();
        return rect == null ? new Rect() : rect;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C1287 m98(View view) {
        C1287 c1287 = (C1287) view.getLayoutParams();
        if (!c1287.f4980) {
            InterfaceC1290 interfaceC1290 = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                interfaceC1290 = (InterfaceC1290) cls.getAnnotation(InterfaceC1290.class);
                if (interfaceC1290 != null) {
                    break;
                }
            }
            if (interfaceC1290 != null) {
                try {
                    AbstractC1291 abstractC1291 = (AbstractC1291) interfaceC1290.value().getDeclaredConstructor(null).newInstance(null);
                    AbstractC1291 abstractC12912 = c1287.f4981;
                    if (abstractC12912 != abstractC1291) {
                        if (abstractC12912 != null) {
                            abstractC12912.mo2352();
                        }
                        c1287.f4981 = abstractC1291;
                        c1287.f4980 = true;
                        if (abstractC1291 != null) {
                            abstractC1291.mo2344(c1287);
                        }
                    }
                } catch (Exception e) {
                    String str = "Default behavior class " + interfaceC1290.value().getName() + " could not be instantiated. Did you forget a default constructor?";
                }
            }
            c1287.f4980 = true;
        }
        return c1287;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m99(int i, Rect rect, Rect rect2, C1287 c1287, int i2, int i3) {
        int i4 = c1287.f4970;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = c1287.f4972;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 == 1) {
            width -= i2 / 2;
        } else if (i6 != 5) {
            width -= i2;
        }
        if (i7 == 16) {
            height -= i3 / 2;
        } else if (i7 != 80) {
            height -= i3;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1287) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        AbstractC1291 abstractC1291 = ((C1287) view.getLayoutParams()).f4981;
        if (abstractC1291 != null) {
            abstractC1291.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f287;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1287();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1287(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1287 ? new C1287((C1287) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1287((ViewGroup.MarginLayoutParams) layoutParams) : new C1287(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        m106();
        return DesugarCollections.unmodifiableList(this.f279);
    }

    public final C2816 getLastWindowInsets() {
        return this.f295;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0781 c0781 = this.f277;
        return c0781.f3264 | c0781.f3265;
    }

    public Drawable getStatusBarBackground() {
        return this.f287;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m105(false);
        if (this.f280) {
            if (this.f294 == null) {
                this.f294 = new ViewTreeObserverOnPreDrawListenerC1617(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f294);
        }
        if (this.f295 == null) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            if (getFitsSystemWindows()) {
                AbstractC2780.m6186(this);
            }
        }
        this.f283 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m105(false);
        if (this.f280 && this.f294 != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f294);
        }
        View view = this.f292;
        if (view != null) {
            mo48(view, 0);
        }
        this.f283 = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f281 || this.f287 == null) {
            return;
        }
        C2816 c2816 = this.f295;
        int m6255 = c2816 != null ? c2816.m6255() : 0;
        if (m6255 > 0) {
            this.f287.setBounds(0, 0, getWidth(), m6255);
            this.f287.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m105(true);
        }
        boolean m111 = m111(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return m111;
        }
        m105(true);
        return m111;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC1291 abstractC1291;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f279;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((abstractC1291 = ((C1287) view.getLayoutParams()).f4981) == null || !abstractC1291.mo2324(this, view, layoutDirection))) {
                m110(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x018b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r27, int r28) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C1287 c1287 = (C1287) childAt.getLayoutParams();
                if (c1287.m3886(0)) {
                    AbstractC1291 abstractC1291 = c1287.f4981;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        AbstractC1291 abstractC1291;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C1287 c1287 = (C1287) childAt.getLayoutParams();
                if (c1287.m3886(0) && (abstractC1291 = c1287.f4981) != null) {
                    z |= abstractC1291.mo2343(view);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo42(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo45(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo49(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C1292)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1292 c1292 = (C1292) parcelable;
        super.onRestoreInstanceState(c1292.f15355);
        SparseArray sparseArray = c1292.f4987;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC1291 abstractC1291 = m98(childAt).f4981;
            if (id != -1 && abstractC1291 != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                abstractC1291.mo2321(childAt, parcelable2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʽʽ.ﾞᴵ, android.os.Parcelable, ᴵˑ.ⁱˊ] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable mo2325;
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC1291 abstractC1291 = ((C1287) childAt.getLayoutParams()).f4981;
            if (id != -1 && abstractC1291 != null && (mo2325 = abstractC1291.mo2325(childAt)) != null) {
                sparseArray.append(id, mo2325);
            }
        }
        abstractC3985.f4987 = sparseArray;
        return abstractC3985;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo51(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo48(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r1.getActionMasked()
            android.view.View r3 = r0.f288
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L17
            boolean r3 = r0.m111(r1, r4)
            if (r3 == 0) goto L15
            goto L18
        L15:
            r6 = r5
            goto L2a
        L17:
            r3 = r5
        L18:
            android.view.View r6 = r0.f288
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            ʽʽ.ˈ r6 = (p039.C1287) r6
            ʽʽ.ﹳٴ r6 = r6.f4981
            if (r6 == 0) goto L15
            android.view.View r7 = r0.f288
            boolean r6 = r6.mo2327(r7, r1)
        L2a:
            android.view.View r7 = r0.f288
            r8 = 0
            if (r7 != 0) goto L35
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L48
        L35:
            if (r3 == 0) goto L48
            long r9 = android.os.SystemClock.uptimeMillis()
            r15 = 0
            r16 = 0
            r13 = 3
            r14 = 0
            r11 = r9
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L48:
            if (r8 == 0) goto L4d
            r8.recycle()
        L4d:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L53
            goto L54
        L53:
            return r6
        L54:
            r0.m105(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC1291 abstractC1291 = ((C1287) view.getLayoutParams()).f4981;
        if (abstractC1291 != null) {
            abstractC1291.mo2333(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f289) {
            return;
        }
        m105(false);
        this.f289 = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m107();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f286 = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f287;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f287 = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f287.setState(getDrawableState());
                }
                Drawable drawable3 = this.f287;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                drawable3.setLayoutDirection(getLayoutDirection());
                this.f287.setVisible(getVisibility() == 0, false);
                this.f287.setCallback(this);
            }
            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? getContext().getDrawable(i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f287;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f287.setVisible(z, false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f287;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m100(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m108(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0270  */
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m101(int r23) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.m101(int):void");
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ʽ */
    public final void mo42(View view, int i, int i2, int[] iArr, int i3) {
        AbstractC1291 abstractC1291;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C1287 c1287 = (C1287) childAt.getLayoutParams();
                if (c1287.m3886(i3) && (abstractC1291 = c1287.f4981) != null) {
                    int[] iArr2 = this.f291;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC1291.mo2320(this, childAt, view, i, i2, iArr2, i3);
                    i4 = i > 0 ? Math.max(i4, iArr2[0]) : Math.min(i4, iArr2[0]);
                    i5 = i2 > 0 ? Math.max(i5, iArr2[1]) : Math.min(i5, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m101(1);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList m102(View view) {
        C3368 c3368 = (C3368) this.f290.ˈٴ;
        int i = c3368.f13167;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) c3368.m7220(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c3368.m7225(i2));
            }
        }
        ArrayList arrayList3 = this.f282;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    @Override // p186.InterfaceC2827
    /* renamed from: ˈ */
    public final void mo44(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        AbstractC1291 abstractC1291;
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                C1287 c1287 = (C1287) childAt.getLayoutParams();
                if (c1287.m3886(i5) && (abstractC1291 = c1287.f4981) != null) {
                    int[] iArr2 = this.f291;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC1291.mo2323(this, childAt, i2, i3, i4, iArr2);
                    i6 = i3 > 0 ? Math.max(i6, iArr2[0]) : Math.min(i6, iArr2[0]);
                    i7 = i4 > 0 ? Math.max(i7, iArr2[1]) : Math.min(i7, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            m101(1);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int m103(int i) {
        int[] iArr = this.f293;
        if (iArr == null) {
            String str = "No keylines defined for " + this + " - attempted index lookup " + i;
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        String str2 = "Keyline index " + i + " out of range for " + this;
        return 0;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m104(View view, int i, int i2) {
        C3204 c3204 = f273;
        Rect m97 = m97();
        m108(view, m97);
        try {
            return m97.contains(i, i2);
        } finally {
            m97.setEmpty();
            c3204.mo3014(m97);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m105(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC1291 abstractC1291 = ((C1287) childAt.getLayoutParams()).f4981;
            if (abstractC1291 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    abstractC1291.mo2328(this, childAt, obtain);
                } else {
                    abstractC1291.mo2327(childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C1287) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.f288 = null;
        this.f289 = false;
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ˑﹳ */
    public final void mo45(View view, int i, int i2, int i3, int i4, int i5) {
        mo44(view, i, i2, i3, i4, 0, this.f284);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m106() {
        ArrayList arrayList = this.f279;
        arrayList.clear();
        ﹳٴ r1 = this.f290;
        C3368 c3368 = (C3368) r1.ˈٴ;
        C0843 c0843 = (C0843) r1.ʽʽ;
        C3368 c33682 = (C3368) r1.ˈٴ;
        int i = c3368.f13167;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) c3368.m7220(i2);
            if (arrayList2 != null) {
                arrayList2.clear();
                c0843.mo3014(arrayList2);
            }
        }
        c3368.clear();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C1287 m98 = m98(childAt);
            int i4 = m98.f4983;
            if (i4 == -1) {
                m98.f4982 = null;
                m98.f4976 = null;
            } else {
                View view = m98.f4976;
                if (view != null && view.getId() == i4) {
                    View view2 = m98.f4976;
                    for (ViewParent parent = view2.getParent(); parent != this; parent = parent.getParent()) {
                        if (parent == null || parent == childAt) {
                            m98.f4982 = null;
                            m98.f4976 = null;
                        } else {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                        }
                    }
                    m98.f4982 = view2;
                }
                View findViewById = findViewById(i4);
                m98.f4976 = findViewById;
                if (findViewById == null) {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i4) + " to anchor view " + childAt);
                    }
                    m98.f4982 = null;
                    m98.f4976 = null;
                } else if (findViewById != this) {
                    for (ViewParent parent2 = findViewById.getParent(); parent2 != this && parent2 != null; parent2 = parent2.getParent()) {
                        if (parent2 != childAt) {
                            if (parent2 instanceof View) {
                                findViewById = parent2;
                            }
                        } else {
                            if (!isInEditMode()) {
                                throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                            }
                            m98.f4982 = null;
                            m98.f4976 = null;
                        }
                    }
                    m98.f4982 = findViewById;
                } else {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                    }
                    m98.f4982 = null;
                    m98.f4976 = null;
                }
            }
            if (!c33682.containsKey(childAt)) {
                c33682.put(childAt, null);
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (i5 != i3) {
                    View childAt2 = getChildAt(i5);
                    if (childAt2 != m98.f4982) {
                        WeakHashMap weakHashMap = AbstractC2823.f10603;
                        int layoutDirection = getLayoutDirection();
                        int absoluteGravity = Gravity.getAbsoluteGravity(((C1287) childAt2.getLayoutParams()).f4977, layoutDirection);
                        if (absoluteGravity == 0 || (Gravity.getAbsoluteGravity(m98.f4979, layoutDirection) & absoluteGravity) != absoluteGravity) {
                            AbstractC1291 abstractC1291 = m98.f4981;
                            if (abstractC1291 != null) {
                                abstractC1291.mo2331(childAt);
                            }
                        }
                    }
                    if (!c33682.containsKey(childAt2) && !c33682.containsKey(childAt2)) {
                        c33682.put(childAt2, null);
                    }
                    if (!c33682.containsKey(childAt2) || !c33682.containsKey(childAt)) {
                        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
                    }
                    ArrayList arrayList3 = (ArrayList) c33682.get(childAt2);
                    if (arrayList3 == null) {
                        arrayList3 = (ArrayList) c0843.mo3016();
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        c33682.put(childAt2, arrayList3);
                    }
                    arrayList3.add(childAt);
                }
            }
        }
        ArrayList arrayList4 = (ArrayList) r1.ᴵˊ;
        arrayList4.clear();
        HashSet hashSet = (HashSet) r1.ᴵᵔ;
        hashSet.clear();
        int i6 = c33682.f13167;
        for (int i7 = 0; i7 < i6; i7++) {
            r1.ᵔʾ(c33682.m7225(i7), arrayList4, hashSet);
        }
        arrayList.addAll(arrayList4);
        Collections.reverse(arrayList);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m107() {
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if (!getFitsSystemWindows()) {
            AbstractC2776.m6173(this, null);
            return;
        }
        if (this.f285 == null) {
            this.f285 = new ʽ(this);
        }
        AbstractC2776.m6173(this, this.f285);
        setSystemUiVisibility(1280);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m108(View view, Rect rect) {
        ThreadLocal threadLocal = AbstractC1289.f4986;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = AbstractC1289.f4986;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        AbstractC1289.m3887(this, view, matrix);
        ThreadLocal threadLocal3 = AbstractC1289.f4985;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m109(C1287 c1287, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1287).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) c1287).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c1287).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) c1287).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m110(View view, int i) {
        Rect m97;
        Rect m972;
        C1287 c1287 = (C1287) view.getLayoutParams();
        View view2 = c1287.f4976;
        if (view2 == null && c1287.f4983 != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        C3204 c3204 = f273;
        if (view2 != null) {
            m97 = m97();
            m972 = m97();
            try {
                m108(view2, m97);
                C1287 c12872 = (C1287) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                m99(i, m97, m972, c12872, measuredWidth, measuredHeight);
                m109(c12872, m972, measuredWidth, measuredHeight);
                view.layout(m972.left, m972.top, m972.right, m972.bottom);
                return;
            } finally {
                m97.setEmpty();
                c3204.mo3014(m97);
                m972.setEmpty();
                c3204.mo3014(m972);
            }
        }
        int i2 = c1287.f4975;
        if (i2 < 0) {
            C1287 c12873 = (C1287) view.getLayoutParams();
            m97 = m97();
            m97.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c12873).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c12873).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c12873).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c12873).bottomMargin);
            if (this.f295 != null) {
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    m97.left = this.f295.m6256() + m97.left;
                    m97.top = this.f295.m6255() + m97.top;
                    m97.right -= this.f295.m6254();
                    m97.bottom -= this.f295.m6257();
                }
            }
            m972 = m97();
            int i3 = c12873.f4970;
            if ((i3 & 7) == 0) {
                i3 |= 8388611;
            }
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            Gravity.apply(i3, view.getMeasuredWidth(), view.getMeasuredHeight(), m97, m972, i);
            view.layout(m972.left, m972.top, m972.right, m972.bottom);
            return;
        }
        C1287 c12874 = (C1287) view.getLayoutParams();
        int i4 = c12874.f4970;
        if (i4 == 0) {
            i4 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = absoluteGravity & 7;
        int i6 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i == 1) {
            i2 = width - i2;
        }
        int m103 = m103(i2) - measuredWidth2;
        if (i5 == 1) {
            m103 += measuredWidth2 / 2;
        } else if (i5 == 5) {
            m103 += measuredWidth2;
        }
        int i7 = i6 != 16 ? i6 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c12874).leftMargin, Math.min(m103, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) c12874).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c12874).topMargin, Math.min(i7, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) c12874).bottomMargin));
        view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ⁱˊ */
    public final void mo48(View view, int i) {
        C0781 c0781 = this.f277;
        if (i == 1) {
            c0781.f3264 = 0;
        } else {
            c0781.f3265 = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C1287 c1287 = (C1287) childAt.getLayoutParams();
            if (c1287.m3886(i)) {
                AbstractC1291 abstractC1291 = c1287.f4981;
                if (abstractC1291 != null) {
                    abstractC1291.mo2319(childAt, view, i);
                }
                if (i == 0) {
                    c1287.f4973 = false;
                } else if (i == 1) {
                    c1287.f4978 = false;
                }
            }
        }
        this.f292 = null;
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﹳٴ */
    public final void mo49(View view, View view2, int i, int i2) {
        C0781 c0781 = this.f277;
        if (i2 == 1) {
            c0781.f3264 = i;
        } else {
            c0781.f3265 = i;
        }
        this.f292 = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((C1287) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m111(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f278;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            arrayList.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        ˑﹳ r5 = f275;
        if (r5 != null) {
            Collections.sort(arrayList, r5);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = (View) arrayList.get(i3);
            AbstractC1291 abstractC1291 = ((C1287) view.getLayoutParams()).f4981;
            if (z && actionMasked != 0) {
                if (abstractC1291 != null) {
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        abstractC1291.mo2328(this, view, motionEvent2);
                    } else if (i == 1) {
                        abstractC1291.mo2327(view, motionEvent2);
                    }
                }
            } else if (!z && abstractC1291 != null) {
                if (i == 0) {
                    z = abstractC1291.mo2328(this, view, motionEvent);
                } else if (i == 1) {
                    z = abstractC1291.mo2327(view, motionEvent);
                }
                if (z) {
                    this.f288 = view;
                }
            }
        }
        arrayList.clear();
        return z;
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﾞᴵ */
    public final boolean mo51(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C1287 c1287 = (C1287) childAt.getLayoutParams();
                AbstractC1291 abstractC1291 = c1287.f4981;
                if (abstractC1291 != null) {
                    boolean mo2322 = abstractC1291.mo2322(childAt, i, i2);
                    z |= mo2322;
                    if (i2 == 0) {
                        c1287.f4973 = mo2322;
                    } else if (i2 == 1) {
                        c1287.f4978 = mo2322;
                    }
                } else if (i2 == 0) {
                    c1287.f4973 = false;
                } else if (i2 == 1) {
                    c1287.f4978 = false;
                }
            }
        }
        return z;
    }
}
