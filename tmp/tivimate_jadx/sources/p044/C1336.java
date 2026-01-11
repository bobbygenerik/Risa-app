package p044;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import p137.C2312;
import p236.AbstractC3200;
import ˉᵎ.ⁱˊ;
import ﹳˋ.ʽʽ;

/* renamed from: ʽˊ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1336 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public ColorStateList f5131;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public C2312 f5132;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public LinearLayout f5133;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public CharSequence f5134;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f5135;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f5136;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ColorStateList f5137;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f5138;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f5139;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final TimeInterpolator f5140;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final float f5141;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f5142;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f5143;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final TimeInterpolator f5144;

    /* renamed from: יـ, reason: contains not printable characters */
    public CharSequence f5145;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public CharSequence f5146;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public FrameLayout f5147;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Typeface f5148;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Context f5149;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f5150;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final TextInputLayout f5151;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f5152;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public int f5153;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5154;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5155;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public C2312 f5156;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public AnimatorSet f5157;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final TimeInterpolator f5158;

    public C1336(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f5149 = context;
        this.f5151 = textInputLayout;
        this.f5141 = context.getResources().getDimensionPixelSize(R.dimen.1s2);
        this.f5155 = ʽʽ.ʻٴ(context, R.attr.5kp, 217);
        this.f5154 = ʽʽ.ʻٴ(context, R.attr.4uq, 167);
        this.f5135 = ʽʽ.ʻٴ(context, R.attr.5kp, 167);
        this.f5140 = ʽʽ.ـˆ(context, R.attr.7as, AbstractC3200.f12244);
        LinearInterpolator linearInterpolator = AbstractC3200.f12246;
        this.f5144 = ʽʽ.ـˆ(context, R.attr.7as, linearInterpolator);
        this.f5158 = ʽʽ.ـˆ(context, R.attr.1da, linearInterpolator);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m3991(int i, int i2, boolean z) {
        TextView m3994;
        TextView m39942;
        C1336 c1336 = this;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            c1336.f5157 = animatorSet;
            ArrayList arrayList = new ArrayList();
            c1336.m3993(arrayList, c1336.f5138, c1336.f5132, 2, i, i2);
            c1336.m3993(arrayList, c1336.f5152, c1336.f5156, 1, i, i2);
            int size = arrayList.size();
            long j = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Animator animator = (Animator) arrayList.get(i3);
                j = Math.max(j, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
            ofInt.setDuration(j);
            arrayList.add(0, ofInt);
            animatorSet.playTogether(arrayList);
            C1347 c1347 = new C1347(this, i2, m3994(i), i, c1336.m3994(i2));
            c1336 = this;
            animatorSet.addListener(c1347);
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (m39942 = c1336.m3994(i2)) != null) {
                m39942.setVisibility(0);
                m39942.setAlpha(1.0f);
            }
            if (i != 0 && (m3994 = m3994(i)) != null) {
                m3994.setVisibility(4);
                if (i == 1) {
                    m3994.setText((CharSequence) null);
                }
            }
            c1336.f5150 = i2;
        }
        TextInputLayout textInputLayout = c1336.f5151;
        textInputLayout.m2434();
        textInputLayout.m2437(z, false);
        textInputLayout.m2443();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3992() {
        AnimatorSet animatorSet = this.f5157;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3993(ArrayList arrayList, boolean z, C2312 c2312, int i, int i2, int i3) {
        if (c2312 == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            boolean z2 = i3 == i;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c2312, (Property<C2312, Float>) View.ALPHA, z2 ? 1.0f : 0.0f);
            int i4 = this.f5135;
            ofFloat.setDuration(z2 ? this.f5154 : i4);
            ofFloat.setInterpolator(z2 ? this.f5144 : this.f5158);
            if (i == i3 && i2 != 0) {
                ofFloat.setStartDelay(i4);
            }
            arrayList.add(ofFloat);
            if (i3 != i || i2 == 0) {
                return;
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c2312, (Property<C2312, Float>) View.TRANSLATION_Y, -this.f5141, 0.0f);
            ofFloat2.setDuration(this.f5155);
            ofFloat2.setInterpolator(this.f5140);
            ofFloat2.setStartDelay(i4);
            arrayList.add(ofFloat2);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final TextView m3994(int i) {
        if (i == 1) {
            return this.f5156;
        }
        if (i != 2) {
            return null;
        }
        return this.f5132;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3995(C2312 c2312, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f5133;
        if (linearLayout == null) {
            return;
        }
        if ((i == 0 || i == 1) && (frameLayout = this.f5147) != null) {
            frameLayout.removeView(c2312);
        } else {
            linearLayout.removeView(c2312);
        }
        int i2 = this.f5139 - 1;
        this.f5139 = i2;
        LinearLayout linearLayout2 = this.f5133;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m3996(C2312 c2312, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f5151;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled()) {
            return (this.f5142 == this.f5150 && c2312 != null && TextUtils.equals(c2312.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3997() {
        if (this.f5133 != null) {
            TextInputLayout textInputLayout = this.f5151;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f5149;
                boolean z = ⁱˊ.ᴵᵔ(context);
                LinearLayout linearLayout = this.f5133;
                int paddingStart = editText.getPaddingStart();
                if (z) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.52r);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.2o9);
                if (z) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.74q);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (z) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.52r);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3998(C2312 c2312, int i) {
        if (this.f5133 == null && this.f5147 == null) {
            Context context = this.f5149;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f5133 = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f5133;
            TextInputLayout textInputLayout = this.f5151;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f5147 = new FrameLayout(context);
            this.f5133.addView(this.f5147, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                m3997();
            }
        }
        if (i == 0 || i == 1) {
            this.f5147.setVisibility(0);
            this.f5147.addView(c2312);
        } else {
            this.f5133.addView(c2312, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f5133.setVisibility(0);
        this.f5139++;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3999() {
        this.f5134 = null;
        m3992();
        if (this.f5150 == 1) {
            if (!this.f5138 || TextUtils.isEmpty(this.f5146)) {
                this.f5142 = 0;
            } else {
                this.f5142 = 2;
            }
        }
        m3991(this.f5150, this.f5142, m3996(this.f5156, ""));
    }
}
