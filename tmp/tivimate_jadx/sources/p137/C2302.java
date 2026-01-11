package p137;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import p012.C0882;
import p415.InterfaceC4927;

/* renamed from: ˉˆ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2302 extends ToggleButton implements InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2297 f8987;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f8988;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2315 f8989;

    public C2302(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        AbstractC2281.m5326(getContext(), this);
        C0882 c0882 = new C0882(this);
        this.f8988 = c0882;
        c0882.m3123(attributeSet, R.attr.buttonStyleToggle);
        C2315 c2315 = new C2315(this);
        this.f8989 = c2315;
        c2315.m5415(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().m5346(attributeSet, R.attr.buttonStyleToggle);
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f8987 == null) {
            this.f8987 = new C2297(this);
        }
        return this.f8987;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f8989;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f8989.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f8989.m5408();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m5344(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8989;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8989;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m5345(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m5347(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f8988;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f8989;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f8989;
        c2315.m5407(mode);
        c2315.m5412();
    }
}
