package p005;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import p331.C4194;

/* renamed from: ʻˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0823 extends Drawable.ConstantState {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f3515;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3516;

    public /* synthetic */ C0823(int i, Object obj) {
        this.f3516 = i;
        this.f3515 = obj;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        switch (this.f3516) {
            case 0:
                return ((Drawable.ConstantState) this.f3515).canApplyTheme();
            default:
                return super.canApplyTheme();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f3516) {
            case 0:
                return ((Drawable.ConstantState) this.f3515).getChangingConfigurations();
            default:
                return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f3516) {
            case 0:
                C0833 c0833 = new C0833(null, 0);
                Drawable newDrawable = ((Drawable.ConstantState) this.f3515).newDrawable();
                c0833.f3480 = newDrawable;
                newDrawable.setCallback(c0833.f3569);
                return c0833;
            default:
                return new C4194(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        switch (this.f3516) {
            case 0:
                C0833 c0833 = new C0833(null, 0);
                Drawable newDrawable = ((Drawable.ConstantState) this.f3515).newDrawable(resources);
                c0833.f3480 = newDrawable;
                newDrawable.setCallback(c0833.f3569);
                return c0833;
            default:
                return new C4194(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        switch (this.f3516) {
            case 0:
                C0833 c0833 = new C0833(null, 0);
                Drawable newDrawable = ((Drawable.ConstantState) this.f3515).newDrawable(resources, theme);
                c0833.f3480 = newDrawable;
                newDrawable.setCallback(c0833.f3569);
                return c0833;
            default:
                return super.newDrawable(resources, theme);
        }
    }
}
