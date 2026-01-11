package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import ar.tvplayer.tv.R;
import p012.C0882;
import p415.InterfaceC4923;
import p415.InterfaceC4927;
import ᴵˋ.ˊʻ;

/* renamed from: ˉˆ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2314 extends RadioButton implements InterfaceC4923, InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2315 f9036;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2294 f9037;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2297 f9038;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0882 f9039;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2314(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.53);
        AbstractC2339.m5434(context);
        AbstractC2281.m5326(getContext(), this);
        C2294 c2294 = new C2294(this);
        this.f9037 = c2294;
        c2294.m5341(attributeSet, R.attr.53);
        C0882 c0882 = new C0882(this);
        this.f9039 = c0882;
        c0882.m3123(attributeSet, R.attr.53);
        C2315 c2315 = new C2315(this);
        this.f9036 = c2315;
        c2315.m5415(attributeSet, R.attr.53);
        getEmojiTextViewHelper().m5346(attributeSet, R.attr.53);
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f9038 == null) {
            this.f9038 = new C2297(this);
        }
        return this.f9038;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f9036;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    @Override // p415.InterfaceC4923
    public ColorStateList getSupportButtonTintList() {
        C2294 c2294 = this.f9037;
        if (c2294 != null) {
            return c2294.f8974;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C2294 c2294 = this.f9037;
        if (c2294 != null) {
            return c2294.f8973;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f9036.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f9036.m5408();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m5344(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C2294 c2294 = this.f9037;
        if (c2294 != null) {
            if (c2294.f8972) {
                c2294.f8972 = false;
            } else {
                c2294.f8972 = true;
                c2294.m5343();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9036;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9036;
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
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f9039;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4923
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C2294 c2294 = this.f9037;
        if (c2294 != null) {
            c2294.f8974 = colorStateList;
            c2294.f8970 = true;
            c2294.m5343();
        }
    }

    @Override // p415.InterfaceC4923
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C2294 c2294 = this.f9037;
        if (c2294 != null) {
            c2294.f8973 = mode;
            c2294.f8971 = true;
            c2294.m5343();
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f9036;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f9036;
        c2315.m5407(mode);
        c2315.m5412();
    }
}
