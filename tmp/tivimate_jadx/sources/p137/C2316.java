package p137;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import ar.tvplayer.tv.R;

/* renamed from: ˉˆ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2316 extends SeekBar {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2271 f9053;

    public C2316(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.13l);
        AbstractC2281.m5326(getContext(), this);
        C2271 c2271 = new C2271(this);
        this.f9053 = c2271;
        c2271.mo5266(attributeSet, R.attr.13l);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C2271 c2271 = this.f9053;
        C2316 c2316 = c2271.f8893;
        Drawable drawable = c2271.f8896;
        if (drawable != null && drawable.isStateful() && drawable.setState(c2316.getDrawableState())) {
            c2316.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f9053.f8896;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f9053.m5305(canvas);
    }
}
