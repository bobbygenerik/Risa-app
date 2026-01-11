package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import ar.tvplayer.tv.R;
import p136.AbstractC2228;
import p137.AbstractC2257;
import p137.C2308;
import p137.C2349;
import p186.AbstractC2823;
import p186.C2798;
import p186.InterfaceC2796;
import p350.AbstractC4295;
import p353.InterfaceC4319;
import p353.MenuC4312;
import ʾﾞ.ﹳٴ;
import ᴵˋ.ˊʻ;

/* loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f79;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ActionMenuView f80;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ﹳٴ f81;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public View f82;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public TextView f83;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2308 f84;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f85;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C2798 f86;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f87;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final int f88;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public TextView f89;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final int f90;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public CharSequence f91;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f92;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Context f93;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f94;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public View f95;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public CharSequence f96;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public View f97;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public LinearLayout f98;

    /* JADX WARN: Type inference failed for: r1v0, types: [ʾﾞ.ﹳٴ, java.lang.Object] */
    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.3ee);
        int resourceId;
        ?? obj = new Object();
        ((ﹳٴ) obj).ʽ = this;
        ((ﹳٴ) obj).ﹳٴ = false;
        this.f81 = obj;
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.20n, typedValue, true) || typedValue.resourceId == 0) {
            this.f93 = context;
        } else {
            this.f93 = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15907, R.attr.3ee, 0);
        setBackground((!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : ˊʻ.ﹳᐧ(context, resourceId));
        this.f88 = obtainStyledAttributes.getResourceId(5, 0);
        this.f87 = obtainStyledAttributes.getResourceId(4, 0);
        this.f94 = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f90 = obtainStyledAttributes.getResourceId(2, R.layout.6oi);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m31(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m34(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, i - view.getMeasuredWidth());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f86 != null ? this.f81.ⁱˊ : getVisibility();
    }

    public int getContentHeight() {
        return this.f94;
    }

    public CharSequence getSubtitle() {
        return this.f91;
    }

    public CharSequence getTitle() {
        return this.f96;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, AbstractC4295.f15921, R.attr.35d, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        C2308 c2308 = this.f84;
        if (c2308 != null) {
            Configuration configuration2 = c2308.f9017.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            c2308.f9013 = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            MenuC4312 menuC4312 = c2308.f9003;
            if (menuC4312 != null) {
                menuC4312.m8722(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C2308 c2308 = this.f84;
        if (c2308 != null) {
            c2308.m5389();
            C2349 c2349 = this.f84.f9014;
            if (c2349 == null || !c2349.m8749()) {
                return;
            }
            c2349.f16008.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f85 = false;
        }
        if (!this.f85) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f85 = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f85 = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = AbstractC2257.f8861;
        boolean z3 = getLayoutDirection() == 1;
        int paddingRight = z3 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f95;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f95.getLayoutParams();
            int i5 = z3 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = z3 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = z3 ? paddingRight - i5 : paddingRight + i5;
            int m31 = m31(this.f95, i7, paddingTop, paddingTop2, z3) + i7;
            paddingRight = z3 ? m31 - i6 : m31 + i6;
        }
        LinearLayout linearLayout = this.f98;
        if (linearLayout != null && this.f82 == null && linearLayout.getVisibility() != 8) {
            paddingRight += m31(this.f98, paddingRight, paddingTop, paddingTop2, z3);
        }
        View view2 = this.f82;
        if (view2 != null) {
            m31(view2, paddingRight, paddingTop, paddingTop2, z3);
        }
        int paddingLeft = z3 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f80;
        if (actionMenuView != null) {
            m31(actionMenuView, paddingLeft, paddingTop, paddingTop2, !z3);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.f94;
        if (i3 <= 0) {
            i3 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i4 = i3 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        View view = this.f95;
        if (view != null) {
            int m34 = m34(view, paddingLeft, makeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f95.getLayoutParams();
            paddingLeft = m34 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f80;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = m34(this.f80, paddingLeft, makeMeasureSpec);
        }
        LinearLayout linearLayout = this.f98;
        if (linearLayout != null && this.f82 == null) {
            if (this.f79) {
                this.f98.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f98.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f98.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = m34(linearLayout, paddingLeft, makeMeasureSpec);
            }
        }
        View view2 = this.f82;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width;
            int i6 = i5 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i7 = layoutParams.height;
            int i8 = i7 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i7 >= 0) {
                i4 = Math.min(i7, i4);
            }
            this.f82.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(i4, i8));
        }
        if (this.f94 > 0) {
            setMeasuredDimension(size, i3);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f92 = false;
        }
        if (!this.f92) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f92 = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f92 = false;
        return true;
    }

    public void setContentHeight(int i) {
        this.f94 = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f82;
        if (view2 != null) {
            removeView(view2);
        }
        this.f82 = view;
        if (view != null && (linearLayout = this.f98) != null) {
            removeView(linearLayout);
            this.f98 = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f91 = charSequence;
        m37();
    }

    public void setTitle(CharSequence charSequence) {
        this.f96 = charSequence;
        m37();
        AbstractC2823.m6278(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f79) {
            requestLayout();
        }
        this.f79 = z;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2798 m35(int i, long j) {
        C2798 c2798 = this.f86;
        if (c2798 != null) {
            c2798.m6229();
        }
        InterfaceC2796 interfaceC2796 = this.f81;
        if (i != 0) {
            C2798 m6281 = AbstractC2823.m6281(this);
            m6281.m6230(0.0f);
            m6281.m6226(j);
            ((ActionBarContextView) ((ﹳٴ) interfaceC2796).ʽ).f86 = m6281;
            ((ﹳٴ) interfaceC2796).ⁱˊ = i;
            m6281.m6227(interfaceC2796);
            return m6281;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        C2798 m62812 = AbstractC2823.m6281(this);
        m62812.m6230(1.0f);
        m62812.m6226(j);
        ((ActionBarContextView) ((ﹳٴ) interfaceC2796).ʽ).f86 = m62812;
        ((ﹳٴ) interfaceC2796).ⁱˊ = i;
        m62812.m6227(interfaceC2796);
        return m62812;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m36(AbstractC2228 abstractC2228) {
        View view = this.f95;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f90, (ViewGroup) this, false);
            this.f95 = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f95);
        }
        View findViewById = this.f95.findViewById(R.id.3ra);
        this.f97 = findViewById;
        findViewById.setOnClickListener(new ViewOnClickListenerC0083(4, abstractC2228));
        MenuC4312 mo5217 = abstractC2228.mo5217();
        C2308 c2308 = this.f84;
        if (c2308 != null) {
            c2308.m5389();
            C2349 c2349 = c2308.f9014;
            if (c2349 != null && c2349.m8749()) {
                c2349.f16008.dismiss();
            }
        }
        C2308 c23082 = new C2308(getContext());
        this.f84 = c23082;
        c23082.f9022 = true;
        c23082.f9005 = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        mo5217.m8731(this.f84, this.f93);
        C2308 c23083 = this.f84;
        InterfaceC4319 interfaceC4319 = c23083.f9009;
        if (interfaceC4319 == null) {
            InterfaceC4319 interfaceC43192 = (InterfaceC4319) c23083.f9007.inflate(c23083.f9010, (ViewGroup) this, false);
            c23083.f9009 = interfaceC43192;
            interfaceC43192.mo30(c23083.f9003);
            c23083.mo5355();
        }
        InterfaceC4319 interfaceC43193 = c23083.f9009;
        if (interfaceC4319 != interfaceC43193) {
            ((ActionMenuView) interfaceC43193).setPresenter(c23083);
        }
        ActionMenuView actionMenuView = (ActionMenuView) interfaceC43193;
        this.f80 = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f80, layoutParams);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m37() {
        if (this.f98 == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.24l, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f98 = linearLayout;
            this.f83 = (TextView) linearLayout.findViewById(R.id.6b0);
            this.f89 = (TextView) this.f98.findViewById(R.id.6ff);
            int i = this.f88;
            if (i != 0) {
                this.f83.setTextAppearance(getContext(), i);
            }
            int i2 = this.f87;
            if (i2 != 0) {
                this.f89.setTextAppearance(getContext(), i2);
            }
        }
        this.f83.setText(this.f96);
        this.f89.setText(this.f91);
        boolean isEmpty = TextUtils.isEmpty(this.f96);
        boolean isEmpty2 = TextUtils.isEmpty(this.f91);
        this.f89.setVisibility(!isEmpty2 ? 0 : 8);
        this.f98.setVisibility((isEmpty && isEmpty2) ? 8 : 0);
        if (this.f98.getParent() == null) {
            addView(this.f98);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m38() {
        removeAllViews();
        this.f82 = null;
        this.f80 = null;
        this.f84 = null;
        View view = this.f97;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.View
    /* renamed from: ᵔᵢ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void setVisibility(int i) {
        if (i != getVisibility()) {
            C2798 c2798 = this.f86;
            if (c2798 != null) {
                c2798.m6229();
            }
            super.setVisibility(i);
        }
    }
}
