package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.leanback.widget.ˉˆ;
import p035.AbstractC1220;
import p137.AbstractC2247;
import p137.AbstractC2257;
import p137.C2256;
import p137.C2267;
import p137.C2295;
import p137.C2308;
import p137.C2349;
import p137.InterfaceC2323;
import p137.InterfaceC2346;
import p353.C4329;
import p353.InterfaceC4306;
import p353.InterfaceC4319;
import p353.MenuC4312;
import ـˎ.ˈ;

/* loaded from: classes.dex */
public class ActionMenuView extends AbstractC2247 implements InterfaceC4306, InterfaceC4319 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f130;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final int f131;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public InterfaceC2323 f132;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f133;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final int f134;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f135;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public Context f136;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public MenuC4312 f137;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C2308 f138;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f139;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public ˉˆ f140;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f134 = (int) (56.0f * f);
        this.f131 = (int) (f * 4.0f);
        this.f136 = context;
        this.f135 = 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ˉʿ, android.widget.LinearLayout$LayoutParams] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C2267 m52() {
        ?? layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.f8883 = false;
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [ˉˆ.ˉʿ, android.widget.LinearLayout$LayoutParams] */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static C2267 m53(ViewGroup.LayoutParams layoutParams) {
        C2267 c2267;
        if (layoutParams == null) {
            return m52();
        }
        if (layoutParams instanceof C2267) {
            C2267 c22672 = (C2267) layoutParams;
            ?? layoutParams2 = new LinearLayout.LayoutParams((ViewGroup.LayoutParams) c22672);
            layoutParams2.f8883 = c22672.f8883;
            c2267 = layoutParams2;
        } else {
            c2267 = new LinearLayout.LayoutParams(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c2267).gravity <= 0) {
            ((LinearLayout.LayoutParams) c2267).gravity = 16;
        }
        return c2267;
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2267;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m52();
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m53(layoutParams);
    }

    public Menu getMenu() {
        if (this.f137 == null) {
            Context context = getContext();
            MenuC4312 menuC4312 = new MenuC4312(context);
            this.f137 = menuC4312;
            menuC4312.f15961 = new ˉˆ(23, this);
            C2308 c2308 = new C2308(context);
            this.f138 = c2308;
            c2308.f9022 = true;
            c2308.f9005 = true;
            c2308.f9019 = new ˈ(15);
            this.f137.m8731(c2308, this.f136);
            C2308 c23082 = this.f138;
            c23082.f9009 = this;
            this.f137 = c23082.f9003;
        }
        return this.f137;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C2308 c2308 = this.f138;
        C2256 c2256 = c2308.f9021;
        if (c2256 != null) {
            return c2256.getDrawable();
        }
        if (c2308.f9020) {
            return c2308.f9015;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f135;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C2308 c2308 = this.f138;
        if (c2308 != null) {
            c2308.mo5355();
            if (this.f138.m5393()) {
                this.f138.m5389();
                this.f138.m5392();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C2308 c2308 = this.f138;
        if (c2308 != null) {
            c2308.m5389();
            C2349 c2349 = c2308.f9014;
            if (c2349 == null || !c2349.m8749()) {
                return;
            }
            c2349.f16008.dismiss();
        }
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.f133) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i3 - i;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean z2 = AbstractC2257.f8861;
        boolean z3 = getLayoutDirection() == 1;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                C2267 c2267 = (C2267) childAt.getLayoutParams();
                if (c2267.f8883) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m56(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z3) {
                        i5 = getPaddingLeft() + ((LinearLayout.LayoutParams) c2267).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c2267).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c2267).leftMargin) + ((LinearLayout.LayoutParams) c2267).rightMargin;
                    m56(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int max = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (z3) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                C2267 c22672 = (C2267) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c22672.f8883) {
                    int i16 = width2 - ((LinearLayout.LayoutParams) c22672).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c22672).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            C2267 c22673 = (C2267) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c22673.f8883) {
                int i19 = paddingLeft + ((LinearLayout.LayoutParams) c22673).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft = AbstractC1220.m3796(measuredWidth4, ((LinearLayout.LayoutParams) c22673).rightMargin, max, i19);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // p137.AbstractC2247, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        ?? r11;
        int i5;
        int i6;
        MenuC4312 menuC4312;
        boolean z = this.f133;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f133 = z2;
        if (z != z2) {
            this.f139 = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f133 && (menuC4312 = this.f137) != null && size != this.f139) {
            this.f139 = size;
            menuC4312.m8722(true);
        }
        int childCount = getChildCount();
        if (!this.f133 || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                C2267 c2267 = (C2267) getChildAt(i7).getLayoutParams();
                ((LinearLayout.LayoutParams) c2267).rightMargin = 0;
                ((LinearLayout.LayoutParams) c2267).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.f134;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        boolean z3 = false;
        int i17 = 0;
        long j = 0;
        while (true) {
            i3 = this.f131;
            if (i16 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i16);
            int i18 = size3;
            int i19 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i5 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i14++;
                if (z4) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                C2267 c22672 = (C2267) childAt.getLayoutParams();
                c22672.f8884 = false;
                c22672.f8879 = 0;
                c22672.f8882 = 0;
                c22672.f8880 = false;
                ((LinearLayout.LayoutParams) c22672).leftMargin = 0;
                ((LinearLayout.LayoutParams) c22672).rightMargin = 0;
                c22672.f8881 = z4 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i20 = c22672.f8883 ? 1 : i10;
                C2267 c22673 = (C2267) childAt.getLayoutParams();
                int i21 = i10;
                i5 = i12;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i19, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z4 ? (ActionMenuItemView) childAt : null;
                boolean z5 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z6 = z5;
                if (i20 <= 0 || (z5 && i20 < 2)) {
                    i6 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i5 * i20, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i6 = measuredWidth / i5;
                    if (measuredWidth % i5 != 0) {
                        i6++;
                    }
                    if (z6 && i6 < 2) {
                        i6 = 2;
                    }
                }
                c22673.f8880 = !c22673.f8883 && z6;
                c22673.f8882 = i6;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i6 * i5, 1073741824), makeMeasureSpec);
                i15 = Math.max(i15, i6);
                if (c22672.f8880) {
                    i17++;
                }
                if (c22672.f8883) {
                    z3 = true;
                }
                i10 = i21 - i6;
                i13 = Math.max(i13, childAt.getMeasuredHeight());
                if (i6 == 1) {
                    j |= 1 << i16;
                }
            }
            i16++;
            size3 = i18;
            paddingBottom = i19;
            i12 = i5;
        }
        int i22 = size3;
        int i23 = i10;
        int i24 = i12;
        boolean z7 = z3 && i14 == 2;
        int i25 = i23;
        boolean z8 = false;
        while (i17 > 0 && i25 > 0) {
            int i26 = Integer.MAX_VALUE;
            long j2 = 0;
            int i27 = 0;
            int i28 = 0;
            while (i28 < childCount2) {
                int i29 = i13;
                C2267 c22674 = (C2267) getChildAt(i28).getLayoutParams();
                boolean z9 = z7;
                if (c22674.f8880) {
                    int i30 = c22674.f8882;
                    if (i30 < i26) {
                        j2 = 1 << i28;
                        i26 = i30;
                        i27 = 1;
                    } else if (i30 == i26) {
                        j2 |= 1 << i28;
                        i27++;
                    }
                }
                i28++;
                z7 = z9;
                i13 = i29;
            }
            i4 = i13;
            boolean z10 = z7;
            j |= j2;
            if (i27 > i25) {
                break;
            }
            int i31 = i26 + 1;
            int i32 = 0;
            while (i32 < childCount2) {
                View childAt2 = getChildAt(i32);
                C2267 c22675 = (C2267) childAt2.getLayoutParams();
                boolean z11 = z3;
                long j3 = 1 << i32;
                if ((j2 & j3) != 0) {
                    if (z10 && c22675.f8881) {
                        r11 = 1;
                        r11 = 1;
                        if (i25 == 1) {
                            childAt2.setPadding(i3 + i24, 0, i3, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    c22675.f8882 += r11;
                    c22675.f8884 = r11;
                    i25--;
                } else if (c22675.f8882 == i31) {
                    j |= j3;
                }
                i32++;
                z3 = z11;
            }
            z7 = z10;
            i13 = i4;
            z8 = true;
        }
        i4 = i13;
        boolean z12 = !z3 && i14 == 1;
        if (i25 > 0 && j != 0 && (i25 < i14 - 1 || z12 || i15 > 1)) {
            float bitCount = Long.bitCount(j);
            if (!z12) {
                if ((j & 1) != 0 && !((C2267) getChildAt(0).getLayoutParams()).f8881) {
                    bitCount -= 0.5f;
                }
                int i33 = childCount2 - 1;
                if ((j & (1 << i33)) != 0 && !((C2267) getChildAt(i33).getLayoutParams()).f8881) {
                    bitCount -= 0.5f;
                }
            }
            int i34 = bitCount > 0.0f ? (int) ((i25 * i24) / bitCount) : 0;
            boolean z13 = z8;
            for (int i35 = 0; i35 < childCount2; i35++) {
                if ((j & (1 << i35)) != 0) {
                    View childAt3 = getChildAt(i35);
                    C2267 c22676 = (C2267) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c22676.f8879 = i34;
                        c22676.f8884 = true;
                        if (i35 == 0 && !c22676.f8881) {
                            ((LinearLayout.LayoutParams) c22676).leftMargin = (-i34) / 2;
                        }
                        z13 = true;
                    } else if (c22676.f8883) {
                        c22676.f8879 = i34;
                        c22676.f8884 = true;
                        ((LinearLayout.LayoutParams) c22676).rightMargin = (-i34) / 2;
                        z13 = true;
                    } else {
                        if (i35 != 0) {
                            ((LinearLayout.LayoutParams) c22676).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) c22676).rightMargin = i34 / 2;
                        }
                    }
                }
            }
            z8 = z13;
        }
        if (z8) {
            for (int i36 = 0; i36 < childCount2; i36++) {
                View childAt4 = getChildAt(i36);
                C2267 c22677 = (C2267) childAt4.getLayoutParams();
                if (c22677.f8884) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c22677.f8882 * i24) + c22677.f8879, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i8, mode != 1073741824 ? i4 : i22);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f138.f9012 = z;
    }

    public void setOnMenuItemClickListener(InterfaceC2323 interfaceC2323) {
        this.f132 = interfaceC2323;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C2308 c2308 = this.f138;
        C2256 c2256 = c2308.f9021;
        if (c2256 != null) {
            c2256.setImageDrawable(drawable);
        } else {
            c2308.f9020 = true;
            c2308.f9015 = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.f130 = z;
    }

    public void setPopupTheme(int i) {
        if (this.f135 != i) {
            this.f135 = i;
            if (i == 0) {
                this.f136 = getContext();
            } else {
                this.f136 = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C2308 c2308) {
        this.f138 = c2308;
        c2308.f9009 = this;
        this.f137 = c2308.f9003;
    }

    @Override // p353.InterfaceC4306
    /* renamed from: ʽ */
    public final boolean mo29(C4329 c4329) {
        return this.f137.m8730(c4329, null, 0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    @Override // p137.AbstractC2247
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2295 generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // p137.AbstractC2247
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* bridge */ /* synthetic */ C2295 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m53(layoutParams);
    }

    @Override // p353.InterfaceC4319
    /* renamed from: ⁱˊ */
    public final void mo30(MenuC4312 menuC4312) {
        this.f137 = menuC4312;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m56(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC2346)) {
            z = ((InterfaceC2346) childAt).mo27();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC2346)) ? z : ((InterfaceC2346) childAt2).mo24() | z;
    }

    @Override // p137.AbstractC2247
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* bridge */ /* synthetic */ C2295 generateDefaultLayoutParams() {
        return m52();
    }
}
