package p044;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.ViewOnClickListenerC0663;
import com.google.android.material.internal.CheckableImageButton;
import p236.AbstractC3200;
import ʼⁱ.ٴﹳ;
import ﹳˋ.ʽʽ;

/* renamed from: ʽˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1325 extends AbstractC1343 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public EditText f5098;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ViewOnClickListenerC0663 f5099;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ValueAnimator f5100;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5101;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ٴﹳ f5102;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final TimeInterpolator f5103;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final TimeInterpolator f5104;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public AnimatorSet f5105;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f5106;

    public C1325(C1324 c1324) {
        super(c1324);
        this.f5099 = new ViewOnClickListenerC0663(3, this);
        this.f5102 = new ٴﹳ(2, this);
        this.f5101 = ʽʽ.ʻٴ(c1324.getContext(), R.attr.770, 100);
        this.f5106 = ʽʽ.ʻٴ(c1324.getContext(), R.attr.770, 150);
        this.f5103 = ʽʽ.ـˆ(c1324.getContext(), R.attr.1da, AbstractC3200.f12246);
        this.f5104 = ʽʽ.ـˆ(c1324.getContext(), R.attr.532, AbstractC3200.f12244);
    }

    @Override // p044.AbstractC1343
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo3966() {
        return R.string.4ba;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo3967() {
        return R.drawable.p3;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo3968(boolean z) {
        if (this.f5182.f5087 == null) {
            return;
        }
        m3971(z);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m3969() {
        EditText editText = this.f5098;
        if (editText != null) {
            return (editText.hasFocus() || this.f5181.hasFocus()) && this.f5098.getText().length() > 0;
        }
        return false;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final View.OnFocusChangeListener mo3970() {
        return this.f5102;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m3971(boolean z) {
        boolean z2 = this.f5182.m3954() == z;
        if (z && !this.f5105.isRunning()) {
            this.f5100.cancel();
            this.f5105.start();
            if (z2) {
                this.f5105.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f5105.cancel();
        this.f5100.start();
        if (z2) {
            this.f5100.end();
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final View.OnFocusChangeListener mo3972() {
        return this.f5102;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo3973() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.f5104);
        ofFloat.setDuration(this.f5106);
        final int i = 1;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ʽˊ.ﹳٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C1325 f5188;

            {
                this.f5188 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        C1325 c1325 = this.f5188;
                        c1325.getClass();
                        c1325.f5181.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C1325 c13252 = this.f5188;
                        c13252.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c13252.f5181;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f5103;
        ofFloat2.setInterpolator(timeInterpolator);
        int i2 = this.f5101;
        ofFloat2.setDuration(i2);
        final int i3 = 0;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ʽˊ.ﹳٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C1325 f5188;

            {
                this.f5188 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        C1325 c1325 = this.f5188;
                        c1325.getClass();
                        c1325.f5181.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C1325 c13252 = this.f5188;
                        c13252.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c13252.f5181;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f5105 = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f5105.addListener(new C1345(this, i3));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i2);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ʽˊ.ﹳٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C1325 f5188;

            {
                this.f5188 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        C1325 c1325 = this.f5188;
                        c1325.getClass();
                        c1325.f5181.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C1325 c13252 = this.f5188;
                        c13252.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c13252.f5181;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        this.f5100 = ofFloat3;
        ofFloat3.addListener(new C1345(this, i));
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3974() {
        if (this.f5182.f5087 != null) {
            return;
        }
        m3971(m3969());
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo3975() {
        EditText editText = this.f5098;
        if (editText != null) {
            editText.post(new RunnableC0197(12, this));
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo3976(EditText editText) {
        this.f5098 = editText;
        this.f5183.setEndIconVisible(m3969());
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final View.OnClickListener mo3977() {
        return this.f5099;
    }
}
