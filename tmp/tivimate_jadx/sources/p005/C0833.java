package p005;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.leanback.widget.C0144;
import com.bumptech.glide.ˈ;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: ʻˈ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0833 extends AbstractC0816 implements Animatable {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ int f3566 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Context f3567;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C0144 f3568 = null;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ArrayList f3571 = null;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0818 f3569 = new C0818(this);

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0820 f3570 = new Drawable.ConstantState();

    /* JADX WARN: Type inference failed for: r1v1, types: [android.graphics.drawable.Drawable$ConstantState, ʻˈ.ˈ] */
    public C0833(Context context, int i) {
        this.f3567 = context;
    }

    @Override // p005.AbstractC0816, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        C0820 c0820 = this.f3570;
        c0820.f3498.draw(canvas);
        if (c0820.f3497.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getAlpha() : this.f3570.f3498.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f3570.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getColorFilter() : this.f3570.f3498.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f3480 == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0823(0, this.f3480.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f3570.f3498.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f3570.f3498.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getOpacity() : this.f3570.f3498.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x017e, code lost:
    
        if (r8.f3497 != null) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0180, code lost:
    
        r8.f3497 = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0187, code lost:
    
        r8.f3497.playTogether(r8.f3495);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x018e, code lost:
    
        return;
     */
    /* JADX WARN: Type inference failed for: r11v10, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void inflate(android.content.res.Resources r22, org.xmlpull.v1.XmlPullParser r23, android.util.AttributeSet r24, android.content.res.Resources.Theme r25) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p005.C0833.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.isAutoMirrored() : this.f3570.f3498.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f3480;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f3570.f3497.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.isStateful() : this.f3570.f3498.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f3570.f3498.setBounds(rect);
        }
    }

    @Override // p005.AbstractC0816, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.setLevel(i) : this.f3570.f3498.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.setState(iArr) : this.f3570.f3498.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f3570.f3498.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f3570.f3498.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f3570.f3498.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            ˈ.ˉٴ(drawable, i);
        } else {
            this.f3570.f3498.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        } else {
            this.f3570.f3498.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setTintMode(mode);
        } else {
            this.f3570.f3498.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f3570.f3498.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        C0820 c0820 = this.f3570;
        if (c0820.f3497.isStarted()) {
            return;
        }
        c0820.f3497.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f3570.f3497.end();
        }
    }
}
