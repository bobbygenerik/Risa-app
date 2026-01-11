package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import p012.C0882;
import p137.AbstractC2281;
import p137.AbstractC2307;
import p137.AbstractC2339;
import p137.C2330;
import ᴵˋ.ˊʻ;

/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f142;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f143;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ʽﹳ f144;

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC2339.m5434(context);
        this.f142 = false;
        AbstractC2281.m5326(getContext(), this);
        C0882 c0882 = new C0882(this);
        this.f143 = c0882;
        c0882.m3123(attributeSet, i);
        ʽﹳ r1 = new ʽﹳ(this);
        this.f144 = r1;
        r1.ـˆ(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            c0882.m3135();
        }
        ʽﹳ r0 = this.f144;
        if (r0 != null) {
            r0.ﹳٴ();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        C2330 c2330;
        ʽﹳ r1 = this.f144;
        if (r1 == null || (c2330 = (C2330) r1.ˈٴ) == null) {
            return null;
        }
        return (ColorStateList) c2330.f9069;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C2330 c2330;
        ʽﹳ r1 = this.f144;
        if (r1 == null || (c2330 = (C2330) r1.ˈٴ) == null) {
            return null;
        }
        return (PorterDuff.Mode) c2330.f9070;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.f144.ʽʽ).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        ʽﹳ r1 = this.f144;
        if (r1 != null) {
            r1.ﹳٴ();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        ʽﹳ r0 = this.f144;
        if (r0 != null && drawable != null && !this.f142) {
            r0.ᴵˊ = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (r0 != null) {
            r0.ﹳٴ();
            if (this.f142) {
                return;
            }
            ImageView imageView = (ImageView) r0.ʽʽ;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(r0.ᴵˊ);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.f142 = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        ʽﹳ r0 = this.f144;
        if (r0 != null) {
            ImageView imageView = (ImageView) r0.ʽʽ;
            if (i != 0) {
                Drawable drawable = ˊʻ.ﹳᐧ(imageView.getContext(), i);
                if (drawable != null) {
                    AbstractC2307.m5388(drawable);
                }
                imageView.setImageDrawable(drawable);
            } else {
                imageView.setImageDrawable(null);
            }
            r0.ﹳٴ();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        ʽﹳ r1 = this.f144;
        if (r1 != null) {
            r1.ﹳٴ();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f143;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        ʽﹳ r0 = this.f144;
        if (r0 != null) {
            if (((C2330) r0.ˈٴ) == null) {
                r0.ˈٴ = new Object();
            }
            C2330 c2330 = (C2330) r0.ˈٴ;
            c2330.f9069 = colorStateList;
            c2330.f9071 = true;
            r0.ﹳٴ();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        ʽﹳ r0 = this.f144;
        if (r0 != null) {
            if (((C2330) r0.ˈٴ) == null) {
                r0.ˈٴ = new Object();
            }
            C2330 c2330 = (C2330) r0.ˈٴ;
            c2330.f9070 = mode;
            c2330.f9072 = true;
            r0.ﹳٴ();
        }
    }
}
