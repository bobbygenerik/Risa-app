package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
class GuidedActionItemContainer extends AbstractC0104 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f649;

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        new Rect();
        if (context.getApplicationInfo().targetSdkVersion < 23) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.foreground});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setForeground(drawable);
            }
            obtainStyledAttributes.recycle();
        }
        this.f649 = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        if (this.f649 || !ˈˆ.ﾞᴵ.ˈٴ(this, view)) {
            return super.focusSearch(view, i);
        }
        View focusSearch = super.focusSearch(view, i);
        if (ˈˆ.ﾞᴵ.ˈٴ(this, focusSearch)) {
            return focusSearch;
        }
        return null;
    }
}
