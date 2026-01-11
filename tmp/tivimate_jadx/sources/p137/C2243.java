package p137;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import ar.tvplayer.tv.R;

/* renamed from: ˉˆ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2243 extends RatingBar {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2250 f8790;

    public C2243(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.pt);
        AbstractC2281.m5326(getContext(), this);
        C2250 c2250 = new C2250(this);
        this.f8790 = c2250;
        c2250.mo5266(attributeSet, R.attr.pt);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmap = (Bitmap) this.f8790.f8822;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
