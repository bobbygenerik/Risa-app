package p005;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* renamed from: ʻˈ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0828 extends Drawable.ConstantState {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Drawable.ConstantState f3533;

    public C0828(Drawable.ConstantState constantState) {
        this.f3533 = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f3533.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f3533.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        C0831 c0831 = new C0831();
        c0831.f3480 = (VectorDrawable) this.f3533.newDrawable();
        return c0831;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        C0831 c0831 = new C0831();
        c0831.f3480 = (VectorDrawable) this.f3533.newDrawable(resources);
        return c0831;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        C0831 c0831 = new C0831();
        c0831.f3480 = (VectorDrawable) this.f3533.newDrawable(resources, theme);
        return c0831;
    }
}
