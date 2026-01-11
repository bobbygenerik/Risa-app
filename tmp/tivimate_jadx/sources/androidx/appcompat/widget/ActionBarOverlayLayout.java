package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.leanback.widget.C0144;
import ar.tvplayer.tv.R;
import java.util.WeakHashMap;
import p003.C0781;
import p136.C2220;
import p137.C2261;
import p137.C2286;
import p137.C2291;
import p137.C2304;
import p137.C2308;
import p137.InterfaceC2242;
import p137.InterfaceC2341;
import p137.InterfaceC2345;
import p137.RunnableC2333;
import p186.AbstractC2776;
import p186.AbstractC2780;
import p186.AbstractC2797;
import p186.AbstractC2823;
import p186.C2769;
import p186.C2800;
import p186.C2815;
import p186.C2816;
import p186.C2818;
import p186.C2822;
import p186.C2824;
import p186.InterfaceC2791;
import p186.InterfaceC2827;
import p349.C4292;
import p353.InterfaceC4316;
import p353.MenuC4312;
import p363.C4425;
import ᴵˋ.ˊʻ;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC2345, InterfaceC2791, InterfaceC2827 {

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static final C2816 f99;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static final int[] f100 = {R.attr.3ut, android.R.attr.windowContentOverlay};

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static final Rect f101;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C2816 f102;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ContentFrameLayout f103;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f104;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final RunnableC2333 f105;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final RunnableC2333 f106;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final Rect f107;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final Rect f108;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ActionBarContainer f109;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public OverScroller f110;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C0144 f111;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f112;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Drawable f113;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C2816 f114;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C2816 f115;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final Rect f116;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C2816 f117;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f118;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f119;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final C2291 f120;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f121;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public ViewPropertyAnimator f122;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC2341 f123;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f124;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final C0781 f125;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f126;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f127;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final Rect f128;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC2242 f129;

    static {
        int i = Build.VERSION.SDK_INT;
        AbstractC2797 c2769 = i >= 34 ? new C2769() : i >= 31 ? new C2818() : i >= 30 ? new C2800() : i >= 29 ? new C2815() : new C2824();
        c2769.mo6221(C4292.m8691(0, 1, 0, 1));
        f99 = c2769.mo6223();
        f101 = new Rect();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.Object, ʻʿ.ˉˆ] */
    /* JADX WARN: Type inference failed for: r3v15, types: [ˉˆ.ˑﹳ, android.view.View] */
    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f121 = 0;
        this.f107 = new Rect();
        this.f128 = new Rect();
        this.f108 = new Rect();
        this.f116 = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        C2816 c2816 = C2816.f10588;
        this.f115 = c2816;
        this.f114 = c2816;
        this.f102 = c2816;
        this.f117 = c2816;
        this.f111 = new C0144(5, this);
        this.f105 = new RunnableC2333(this, 0);
        this.f106 = new RunnableC2333(this, 1);
        m41(context);
        this.f125 = new Object();
        ?? view = new View(context);
        view.setWillNotDraw(true);
        this.f120 = view;
        addView(view);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m40(View view, Rect rect, boolean z) {
        boolean z2;
        C2261 c2261 = (C2261) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) c2261).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) c2261).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) c2261).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) c2261).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) c2261).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) c2261).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) c2261).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) c2261).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2261;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f113 != null) {
            if (this.f109.getVisibility() == 0) {
                i = (int) (this.f109.getTranslationY() + this.f109.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.f113.setBounds(0, i, getWidth(), this.f113.getIntrinsicHeight() + i);
            this.f113.draw(canvas);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f109;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0781 c0781 = this.f125;
        return c0781.f3264 | c0781.f3265;
    }

    public CharSequence getTitle() {
        m46();
        return ((C2286) this.f123).f8955.getTitle();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m46();
        C2816 m6253 = C2816.m6253(this, windowInsets);
        boolean m40 = m40(this.f109, new Rect(m6253.m6256(), m6253.m6255(), m6253.m6254(), m6253.m6257()), false);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        Rect rect = this.f107;
        AbstractC2776.m6180(this, m6253, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        C2822 c2822 = m6253.f10589;
        C2816 mo6244 = c2822.mo6244(i, i2, i3, i4);
        this.f115 = mo6244;
        boolean z = true;
        if (!this.f114.equals(mo6244)) {
            this.f114 = this.f115;
            m40 = true;
        }
        Rect rect2 = this.f128;
        if (rect2.equals(rect)) {
            z = m40;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return c2822.mo6267().f10589.mo6195().f10589.mo6197().m6258();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m41(getContext());
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2780.m6186(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m47();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C2261 c2261 = (C2261) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c2261).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c2261).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0110  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f126 || !z) {
            return false;
        }
        this.f110.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f110.getFinalY() > this.f109.getHeight()) {
            m47();
            this.f106.run();
        } else {
            m47();
            this.f105.run();
        }
        this.f118 = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f124 + i2;
        this.f124 = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        C4425 c4425;
        C2220 c2220;
        this.f125.f3265 = i;
        this.f124 = getActionBarHideOffset();
        m47();
        InterfaceC2242 interfaceC2242 = this.f129;
        if (interfaceC2242 == null || (c2220 = (c4425 = (C4425) interfaceC2242).f16446) == null) {
            return;
        }
        c2220.m5209();
        c4425.f16446 = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f109.getVisibility() != 0) {
            return false;
        }
        return this.f126;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f126 || this.f118) {
            return;
        }
        if (this.f124 <= this.f109.getHeight()) {
            m47();
            postDelayed(this.f105, 600L);
        } else {
            m47();
            postDelayed(this.f106, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        m46();
        int i2 = this.f127 ^ i;
        this.f127 = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        InterfaceC2242 interfaceC2242 = this.f129;
        if (interfaceC2242 != null) {
            C4425 c4425 = (C4425) interfaceC2242;
            c4425.f16450 = !z2;
            if (z || !z2) {
                if (c4425.f16445) {
                    c4425.f16445 = false;
                    c4425.m8931(true);
                }
            } else if (!c4425.f16445) {
                c4425.f16445 = true;
                c4425.m8931(true);
            }
        }
        if ((i2 & 256) == 0 || this.f129 == null) {
            return;
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2780.m6186(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f121 = i;
        InterfaceC2242 interfaceC2242 = this.f129;
        if (interfaceC2242 != null) {
            ((C4425) interfaceC2242).f16457 = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        m47();
        this.f109.setTranslationY(-Math.max(0, Math.min(i, this.f109.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC2242 interfaceC2242) {
        this.f129 = interfaceC2242;
        if (getWindowToken() != null) {
            ((C4425) this.f129).f16457 = this.f121;
            int i = this.f127;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2780.m6186(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f112 = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f126) {
            this.f126 = z;
            if (z) {
                return;
            }
            m47();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m46();
        C2286 c2286 = (C2286) this.f123;
        c2286.f8946 = i != 0 ? ˊʻ.ﹳᐧ(c2286.f8955.getContext(), i) : null;
        c2286.m5334();
    }

    public void setIcon(Drawable drawable) {
        m46();
        C2286 c2286 = (C2286) this.f123;
        c2286.f8946 = drawable;
        c2286.m5334();
    }

    public void setLogo(int i) {
        m46();
        C2286 c2286 = (C2286) this.f123;
        c2286.f8949 = i != 0 ? ˊʻ.ﹳᐧ(c2286.f8955.getContext(), i) : null;
        c2286.m5334();
    }

    public void setOverlayMode(boolean z) {
        this.f119 = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // p137.InterfaceC2345
    public void setWindowCallback(Window.Callback callback) {
        m46();
        ((C2286) this.f123).f8950 = callback;
    }

    @Override // p137.InterfaceC2345
    public void setWindowTitle(CharSequence charSequence) {
        m46();
        C2286 c2286 = (C2286) this.f123;
        if (c2286.f8951) {
            return;
        }
        Toolbar toolbar = c2286.f8955;
        c2286.f8953 = charSequence;
        if ((c2286.f8954 & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (c2286.f8951) {
                AbstractC2823.m6278(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m41(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f100);
        this.f104 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f113 = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f110 = new OverScroller(context);
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo42(View view, int i, int i2, int[] iArr, int i3) {
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m43(int i) {
        m46();
        if (i == 2) {
            ((C2286) this.f123).getClass();
        } else if (i == 5) {
            ((C2286) this.f123).getClass();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // p186.InterfaceC2827
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo44(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo45(view, i, i2, i3, i4, i5);
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo45(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m46() {
        InterfaceC2341 wrapper;
        if (this.f103 == null) {
            this.f103 = (ContentFrameLayout) findViewById(R.id.5u4);
            this.f109 = (ActionBarContainer) findViewById(R.id.331);
            KeyEvent.Callback findViewById = findViewById(R.id.6eh);
            if (findViewById instanceof InterfaceC2341) {
                wrapper = (InterfaceC2341) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) findViewById).getWrapper();
            }
            this.f123 = wrapper;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m47() {
        removeCallbacks(this.f105);
        removeCallbacks(this.f106);
        ViewPropertyAnimator viewPropertyAnimator = this.f122;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo48(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo49(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m50(Menu menu, InterfaceC4316 interfaceC4316) {
        m46();
        C2286 c2286 = (C2286) this.f123;
        Toolbar toolbar = c2286.f8955;
        if (c2286.f8947 == null) {
            c2286.f8947 = new C2308(toolbar.getContext());
        }
        C2308 c2308 = c2286.f8947;
        c2308.f9019 = interfaceC4316;
        MenuC4312 menuC4312 = (MenuC4312) menu;
        if (menuC4312 == null && toolbar.f209 == null) {
            return;
        }
        toolbar.m82();
        MenuC4312 menuC43122 = toolbar.f209.f137;
        if (menuC43122 == menuC4312) {
            return;
        }
        if (menuC43122 != null) {
            menuC43122.m8733(toolbar.f245);
            menuC43122.m8733(toolbar.f204);
        }
        if (toolbar.f204 == null) {
            toolbar.f204 = new C2304(toolbar);
        }
        c2308.f9012 = true;
        if (menuC4312 != null) {
            menuC4312.m8731(c2308, toolbar.f229);
            menuC4312.m8731(toolbar.f204, toolbar.f229);
        } else {
            c2308.mo5352(toolbar.f229, null);
            toolbar.f204.mo5352(toolbar.f229, null);
            c2308.mo5355();
            toolbar.f204.mo5355();
        }
        toolbar.f209.setPopupTheme(toolbar.f239);
        toolbar.f209.setPresenter(c2308);
        toolbar.f245 = c2308;
        toolbar.m73();
    }

    @Override // p186.InterfaceC2791
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo51(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }
}
