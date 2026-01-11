package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import ar.tvplayer.tv.R;
import p272.AbstractC3483;

/* loaded from: classes.dex */
class GuidanceStylingRelativeLayout extends RelativeLayout {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final float f640;

    public GuidanceStylingRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f640 = m539(context);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static float m539(Context context) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(AbstractC3483.f13671);
        float f = obtainStyledAttributes.getFloat(46, 40.0f);
        obtainStyledAttributes.recycle();
        return f;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View findViewById = getRootView().findViewById(R.id.1qa);
        View findViewById2 = getRootView().findViewById(R.id.74g);
        View findViewById3 = getRootView().findViewById(R.id.72j);
        ImageView imageView = (ImageView) getRootView().findViewById(R.id.1kv);
        int measuredHeight = (int) ((getMeasuredHeight() * this.f640) / 100.0f);
        if (findViewById != null && findViewById.getParent() == this) {
            int baseline = (((measuredHeight - findViewById.getBaseline()) - findViewById2.getMeasuredHeight()) - findViewById.getPaddingTop()) - findViewById2.getTop();
            if (findViewById2.getParent() == this) {
                findViewById2.offsetTopAndBottom(baseline);
            }
            findViewById.offsetTopAndBottom(baseline);
            if (findViewById3 != null && findViewById3.getParent() == this) {
                findViewById3.offsetTopAndBottom(baseline);
            }
        }
        if (imageView == null || imageView.getParent() != this || imageView.getDrawable() == null) {
            return;
        }
        imageView.offsetTopAndBottom(measuredHeight - (imageView.getMeasuredHeight() / 2));
    }
}
