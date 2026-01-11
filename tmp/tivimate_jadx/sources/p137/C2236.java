package p137;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import com.google.android.gms.internal.measurement.ˏʻ;
import com.parse.ٴʼ;
import p012.C0882;
import p415.InterfaceC4927;
import ᴵˋ.ˊʻ;

/* renamed from: ˉˆ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2236 extends MultiAutoCompleteTextView implements InterfaceC4927 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int[] f8769 = {R.attr.popupBackground};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2250 f8770;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f8771;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2315 f8772;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2236(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ar.tvplayer.tv.R.attr.136);
        AbstractC2339.m5434(context);
        AbstractC2281.m5326(getContext(), this);
        ٴʼ r5 = ٴʼ.ʿᵢ(ar.tvplayer.tv.R.attr.136, 0, getContext(), attributeSet, f8769);
        if (((TypedArray) r5.ᴵˊ).hasValue(0)) {
            setDropDownBackgroundDrawable(r5.ˑٴ(0));
        }
        r5.ᐧᴵ();
        C0882 c0882 = new C0882(this);
        this.f8771 = c0882;
        c0882.m3123(attributeSet, ar.tvplayer.tv.R.attr.136);
        C2315 c2315 = new C2315(this);
        this.f8772 = c2315;
        c2315.m5415(attributeSet, ar.tvplayer.tv.R.attr.136);
        c2315.m5412();
        C2250 c2250 = new C2250(this);
        this.f8770 = c2250;
        c2250.mo5266(attributeSet, ar.tvplayer.tv.R.attr.136);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = isFocusable();
        boolean isClickable = isClickable();
        boolean isLongClickable = isLongClickable();
        int inputType = getInputType();
        KeyListener m5267 = c2250.m5267(keyListener);
        if (m5267 == keyListener) {
            return;
        }
        super.setKeyListener(m5267);
        setRawInputType(inputType);
        setFocusable(isFocusable);
        setClickable(isClickable);
        setLongClickable(isLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f8772;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f8772.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f8772.m5408();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        ˏʻ.ʼʼ(editorInfo, onCreateInputConnection, this);
        return this.f8770.m5263(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8772;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8772;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.f8770.m5264(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f8770.m5267(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f8771;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f8772;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f8772;
        c2315.m5407(mode);
        c2315.m5412();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2315 c2315 = this.f8772;
        if (c2315 != null) {
            c2315.m5410(context, i);
        }
    }
}
