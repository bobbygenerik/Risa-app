package p137;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;

/* renamed from: ˉˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2337 extends Drawable {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ActionBarContainer f9077;

    public C2337(ActionBarContainer actionBarContainer) {
        this.f9077 = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f9077;
        if (actionBarContainer.f75) {
            Drawable drawable = actionBarContainer.f74;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f72;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f77;
        if (drawable3 == null || !actionBarContainer.f73) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f9077;
        if (actionBarContainer.f75) {
            if (actionBarContainer.f74 != null) {
                actionBarContainer.f72.getOutline(outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f72;
            if (drawable != null) {
                drawable.getOutline(outline);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
