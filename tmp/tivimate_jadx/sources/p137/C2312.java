package p137;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p012.C0882;
import p119.AbstractC2002;
import p119.C2001;
import p158.AbstractC2541;
import p349.AbstractC4288;
import p415.InterfaceC4927;
import ᴵˋ.ˊʻ;
import ﹳˋ.ٴﹶ;
import ﹳٴ.ﹳٴ;

/* renamed from: ˉˆ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2312 extends TextView implements InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2250 f9029;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f9030;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2297 f9031;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ʿ f9032;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Future f9033;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2315 f9034;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f9035;

    public C2312(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2312(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC2339.m5434(context);
        this.f9035 = false;
        this.f9032 = null;
        AbstractC2281.m5326(getContext(), this);
        C0882 c0882 = new C0882(this);
        this.f9030 = c0882;
        c0882.m3123(attributeSet, i);
        C2315 c2315 = new C2315(this);
        this.f9034 = c2315;
        c2315.m5415(attributeSet, i);
        c2315.m5412();
        C2250 c2250 = new C2250();
        c2250.f8823 = this;
        this.f9029 = c2250;
        getEmojiTextViewHelper().m5346(attributeSet, i);
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f9031 == null) {
            this.f9031 = new C2297(this);
        }
        return this.f9031;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeMaxTextSize();
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            return Math.round(c2315.f9040.f8907);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeMinTextSize();
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            return Math.round(c2315.f9040.f8906);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeStepGranularity();
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            return Math.round(c2315.f9040.f8904);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C2315 c2315 = this.f9034;
        return c2315 != null ? c2315.f9040.f8913 : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            return c2315.f9040.f8912;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return ﹳٴ.ᴵˑ(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public InterfaceC2269 getSuperCaller() {
        if (this.f9032 == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                this.f9032 = new C2320(this);
            } else if (i >= 28) {
                this.f9032 = new C2255(this);
            } else if (i >= 26) {
                this.f9032 = new ʿ(0, this);
            }
        }
        return this.f9032;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f9034.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f9034.m5408();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future future = this.f9033;
        if (future != null) {
            try {
                this.f9033 = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                ﹳٴ.ᵢˏ(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C2250 c2250;
        if (Build.VERSION.SDK_INT >= 28 || (c2250 = this.f9029) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) c2250.f8822;
        return textClassifier == null ? AbstractC2279.m5322((TextView) c2250.f8823) : textClassifier;
    }

    public C2001 getTextMetricsParamsCompat() {
        return ﹳٴ.ᵢˏ(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f9034.getClass();
        C2315.m5403(editorInfo, onCreateInputConnection, this);
        ˏʻ.ʼʼ(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C2315 c2315 = this.f9034;
        if (c2315 == null || AbstractC2257.f8859) {
            return;
        }
        c2315.f9040.m5318();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future future = this.f9033;
        if (future != null) {
            try {
                this.f9033 = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                ﹳٴ.ᵢˏ(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            C2274 c2274 = c2315.f9040;
            if (AbstractC2257.f8859 || !c2274.m5319()) {
                return;
            }
            c2274.m5318();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m5344(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (AbstractC2257.f8859) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5404(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (AbstractC2257.f8859) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5405(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC2257.f8859) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5409(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? ˊʻ.ﹳᐧ(context, i) : null, i2 != 0 ? ˊʻ.ﹳᐧ(context, i2) : null, i3 != 0 ? ˊʻ.ﹳᐧ(context, i3) : null, i4 != 0 ? ˊʻ.ﹳᐧ(context, i4) : null);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? ˊʻ.ﹳᐧ(context, i) : null, i2 != 0 ? ˊʻ.ﹳᐧ(context, i2) : null, i3 != 0 ? ˊʻ.ﹳᐧ(context, i3) : null, i4 != 0 ? ˊʻ.ﹳᐧ(context, i4) : null);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ˉـ(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m5345(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m5347(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().m5303(i);
        } else {
            ﹳٴ.ᵔٴ(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().m5302(i);
        } else {
            ﹳٴ.ˈʿ(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        ﹳٴ.ˑٴ(this, i);
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i, float f) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            getSuperCaller().m5304(i, f);
        } else if (i2 >= 34) {
            AbstractC2541.m5684(this, i, f);
        } else {
            ﹳٴ.ˑٴ(this, Math.round(TypedValue.applyDimension(i, f, getResources().getDisplayMetrics())));
        }
    }

    public void setPrecomputedText(AbstractC2002 abstractC2002) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        ﹳٴ.ᵢˏ(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f9030;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f9034;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f9034;
        c2315.m5407(mode);
        c2315.m5412();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            c2315.m5410(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C2250 c2250;
        if (Build.VERSION.SDK_INT >= 28 || (c2250 = this.f9029) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c2250.f8822 = textClassifier;
        }
    }

    public void setTextFuture(Future<AbstractC2002> future) {
        this.f9033 = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C2001 c2001) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = c2001.f7872;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i = 7;
            }
        }
        setTextDirection(i);
        getPaint().set(c2001.f7873);
        setBreakStrategy(c2001.f7870);
        setHyphenationFrequency(c2001.f7871);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = AbstractC2257.f8859;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C2315 c2315 = this.f9034;
        if (c2315 != null) {
            C2274 c2274 = c2315.f9040;
            if (z || c2274.m5319()) {
                return;
            }
            c2274.m5316(i, f);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (this.f9035) {
            return;
        }
        if (typeface == null || i <= 0) {
            typeface2 = null;
        } else {
            Context context = getContext();
            ٴﹶ r1 = AbstractC4288.f15875;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typeface2 = Typeface.create(typeface, i);
        }
        this.f9035 = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f9035 = false;
        }
    }
}
