package androidx.leanback.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.media.session.AbstractC0001;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import ar.tvplayer.tv.R;
import java.util.WeakHashMap;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p272.AbstractC3483;

/* loaded from: classes.dex */
public class SearchOrbView extends FrameLayout implements View.OnClickListener {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final /* synthetic */ int f743 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final View f744;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public View.OnClickListener f745;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f746;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final ArgbEvaluator f747;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ImageView f748;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f749;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C0116 f750;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C0081 f751;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public ValueAnimator f752;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C0081 f753;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final float f754;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final float f755;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final View f756;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Drawable f757;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final float f758;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f759;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public ValueAnimator f760;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f761;

    public SearchOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ob);
    }

    public SearchOrbView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f747 = new ArgbEvaluator();
        this.f753 = new C0081(0, this);
        this.f751 = new C0081(1, this);
        Resources resources = context.getResources();
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResourceId(), (ViewGroup) this, true);
        this.f756 = inflate;
        this.f744 = inflate.findViewById(R.id.34m);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        this.f748 = imageView;
        this.f755 = context.getResources().getFraction(R.fraction.21m, 1, 1);
        this.f749 = context.getResources().getInteger(R.integer.4mr);
        this.f759 = context.getResources().getInteger(R.integer.6n1);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.3bl);
        this.f758 = dimensionPixelSize;
        this.f754 = context.getResources().getDimensionPixelSize(R.dimen.1tl);
        int[] iArr = AbstractC3483.f13668;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        Drawable drawable = obtainStyledAttributes.getDrawable(2);
        setOrbIcon(drawable == null ? resources.getDrawable(2131231113) : drawable);
        int color = obtainStyledAttributes.getColor(1, resources.getColor(R.color.5g0));
        setOrbColors(new C0116(color, obtainStyledAttributes.getColor(0, color), obtainStyledAttributes.getColor(3, 0)));
        obtainStyledAttributes.recycle();
        setFocusable(true);
        setClipChildren(false);
        setOnClickListener(this);
        setSoundEffectsEnabled(false);
        setSearchOrbZ(0.0f);
        AbstractC2776.m6182(imageView, dimensionPixelSize);
    }

    public float getFocusedZoom() {
        return this.f755;
    }

    public int getLayoutResourceId() {
        return R.layout.lb_search_orb;
    }

    public int getOrbColor() {
        return this.f750.f927;
    }

    public C0116 getOrbColors() {
        return this.f750;
    }

    public Drawable getOrbIcon() {
        return this.f757;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f761 = true;
        m553();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f745;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f761 = false;
        m553();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        m554(z);
    }

    public void setOnOrbClickedListener(View.OnClickListener onClickListener) {
        this.f745 = onClickListener;
    }

    public void setOrbColor(int i) {
        setOrbColors(new C0116(i, i, 0));
    }

    public void setOrbColors(C0116 c0116) {
        this.f750 = c0116;
        this.f748.setColorFilter(c0116.f925);
        if (this.f760 == null) {
            setOrbViewColor(this.f750.f927);
        } else {
            this.f746 = true;
            m553();
        }
    }

    public void setOrbIcon(Drawable drawable) {
        this.f757 = drawable;
        this.f748.setImageDrawable(drawable);
    }

    public void setOrbViewColor(int i) {
        View view = this.f744;
        if (view.getBackground() instanceof GradientDrawable) {
            ((GradientDrawable) view.getBackground()).setColor(i);
        }
    }

    public void setSearchOrbZ(float f) {
        float f2 = this.f754;
        float m23 = AbstractC0001.m23(this.f758, f2, f, f2);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2776.m6182(this.f744, m23);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m553() {
        ValueAnimator valueAnimator = this.f760;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f760 = null;
        }
        if (this.f746 && this.f761) {
            ValueAnimator ofObject = ValueAnimator.ofObject(this.f747, Integer.valueOf(this.f750.f927), Integer.valueOf(this.f750.f926), Integer.valueOf(this.f750.f927));
            this.f760 = ofObject;
            ofObject.setRepeatCount(-1);
            this.f760.setDuration(this.f749 * 2);
            this.f760.addUpdateListener(this.f753);
            this.f760.start();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m554(boolean z) {
        float f = z ? this.f755 : 1.0f;
        ViewPropertyAnimator scaleY = this.f756.animate().scaleX(f).scaleY(f);
        long j = this.f759;
        scaleY.setDuration(j).start();
        if (this.f752 == null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f752 = ofFloat;
            ofFloat.addUpdateListener(this.f751);
        }
        if (z) {
            this.f752.start();
        } else {
            this.f752.reverse();
        }
        this.f752.setDuration(j);
        this.f746 = z;
        m553();
    }
}
