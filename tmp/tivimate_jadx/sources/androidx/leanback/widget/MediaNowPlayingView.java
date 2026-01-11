package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public class MediaNowPlayingView extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ImageView f665;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ImageView f666;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ObjectAnimator f667;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ObjectAnimator f668;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ImageView f669;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ObjectAnimator f670;

    public MediaNowPlayingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        LayoutInflater.from(context).inflate(R.layout.61b, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.4ui);
        this.f666 = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.6h2);
        this.f669 = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.5ga);
        this.f665 = imageView3;
        imageView.setPivotY(imageView.getDrawable().getIntrinsicHeight());
        imageView2.setPivotY(imageView2.getDrawable().getIntrinsicHeight());
        imageView3.setPivotY(imageView3.getDrawable().getIntrinsicHeight());
        setDropScale(imageView);
        setDropScale(imageView2);
        setDropScale(imageView3);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, "scaleY", 0.41666666f, 0.25f, 0.41666666f, 0.5833333f, 0.75f, 0.8333333f, 0.9166667f, 1.0f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.5f, 0.33333334f, 0.16666667f, 0.33333334f, 0.5f, 0.5833333f, 0.75f, 0.9166667f, 0.75f, 0.5833333f, 0.41666666f, 0.25f, 0.41666666f, 0.6666667f, 0.41666666f, 0.25f, 0.33333334f, 0.41666666f);
        this.f667 = ofFloat;
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(2320L);
        ofFloat.setInterpolator(linearInterpolator);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(imageView2, "scaleY", 1.0f, 0.9166667f, 0.8333333f, 0.9166667f, 1.0f, 0.9166667f, 0.75f, 0.5833333f, 0.75f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.8333333f, 1.0f, 0.9166667f, 0.75f, 0.41666666f, 0.25f, 0.41666666f, 0.6666667f, 0.8333333f, 1.0f, 0.8333333f, 0.75f, 0.6666667f, 1.0f);
        this.f670 = ofFloat2;
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setDuration(2080L);
        ofFloat2.setInterpolator(linearInterpolator);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(imageView3, "scaleY", 0.6666667f, 0.75f, 0.8333333f, 1.0f, 0.9166667f, 0.75f, 0.5833333f, 0.41666666f, 0.5833333f, 0.6666667f, 0.75f, 1.0f, 0.9166667f, 1.0f, 0.75f, 0.5833333f, 0.75f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.75f, 0.5833333f, 0.41666666f, 0.25f, 0.6666667f);
        this.f668 = ofFloat3;
        ofFloat3.setRepeatCount(-1);
        ofFloat3.setDuration(2000L);
        ofFloat3.setInterpolator(linearInterpolator);
    }

    public static void setDropScale(View view) {
        view.setScaleY(0.083333336f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            m542();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m541();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 8) {
            m541();
        } else {
            m542();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m541() {
        ObjectAnimator objectAnimator = this.f667;
        boolean isStarted = objectAnimator.isStarted();
        ImageView imageView = this.f666;
        if (isStarted) {
            objectAnimator.cancel();
            setDropScale(imageView);
        }
        ObjectAnimator objectAnimator2 = this.f670;
        boolean isStarted2 = objectAnimator2.isStarted();
        ImageView imageView2 = this.f669;
        if (isStarted2) {
            objectAnimator2.cancel();
            setDropScale(imageView2);
        }
        ObjectAnimator objectAnimator3 = this.f668;
        boolean isStarted3 = objectAnimator3.isStarted();
        ImageView imageView3 = this.f665;
        if (isStarted3) {
            objectAnimator3.cancel();
            setDropScale(imageView3);
        }
        imageView.setVisibility(8);
        imageView2.setVisibility(8);
        imageView3.setVisibility(8);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m542() {
        ObjectAnimator objectAnimator = this.f667;
        if (!objectAnimator.isStarted()) {
            objectAnimator.start();
        }
        ObjectAnimator objectAnimator2 = this.f670;
        if (!objectAnimator2.isStarted()) {
            objectAnimator2.start();
        }
        ObjectAnimator objectAnimator3 = this.f668;
        if (!objectAnimator3.isStarted()) {
            objectAnimator3.start();
        }
        this.f666.setVisibility(0);
        this.f669.setVisibility(0);
        this.f665.setVisibility(0);
    }
}
