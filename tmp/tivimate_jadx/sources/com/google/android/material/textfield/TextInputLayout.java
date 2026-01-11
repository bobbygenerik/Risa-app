package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.C0099;
import androidx.leanback.widget.RunnableC0142;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.core.domain.ʽﹳ;
import com.google.android.material.datepicker.C0670;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
import com.parse.ٴʼ;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import p021.AbstractC1031;
import p035.AbstractC1220;
import p044.AbstractC1340;
import p044.C1321;
import p044.C1322;
import p044.C1324;
import p044.C1326;
import p044.C1328;
import p044.C1329;
import p044.C1335;
import p044.C1336;
import p044.C1338;
import p044.C1341;
import p044.C1344;
import p044.InterfaceC1339;
import p119.AbstractC2006;
import p119.C2004;
import p129.AbstractC2183;
import p129.AbstractC2185;
import p129.C2181;
import p129.C2186;
import p137.AbstractC2307;
import p137.C2284;
import p137.C2312;
import p184.AbstractC2764;
import p186.AbstractC2823;
import p188.C2844;
import p188.C2853;
import p188.C2861;
import p188.C2862;
import p188.C2867;
import p188.InterfaceC2852;
import p230.AbstractC3161;
import p230.AbstractC3180;
import p230.C3145;
import p236.AbstractC3200;
import p259.AbstractC3399;
import p323.AbstractC3985;
import p349.AbstractC4293;
import p401.C4762;
import p401.C4764;
import ʻʿ.ᵔﹳ;
import ʽٴ.ˈ;
import ˈˋ.ʾˊ;
import ˉᵎ.ⁱˊ;
import ˑˊ.ﹳٴ;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʽʽ;
import ﹳˋ.ٴﹶ;
import ﹳי.ʽ;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public static final int[][] f2837 = {new int[]{R.attr.state_pressed}, new int[0]};

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public int f2838;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public C2844 f2839;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final LinkedHashSet f2840;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f2841;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public CharSequence f2842;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public int f2843;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public int f2844;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1324 f2845;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public int f2846;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public int f2847;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final RectF f2848;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public int f2849;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final FrameLayout f2850;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public Typeface f2851;

    /* renamed from: ʿ, reason: contains not printable characters */
    public C3145 f2852;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public Drawable f2853;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public ColorStateList f2854;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f2855;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public InterfaceC1339 f2856;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public StateListDrawable f2857;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final C2181 f2858;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f2859;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public ColorStateList f2860;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public C3145 f2861;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f2862;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public CharSequence f2863;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f2864;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public C2844 f2865;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public int f2866;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public boolean f2867;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f2868;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public boolean f2869;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public ValueAnimator f2870;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final Rect f2871;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f2872;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f2873;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public C2862 f2874;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public boolean f2875;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C2312 f2876;

    /* renamed from: י, reason: contains not printable characters */
    public int f2877;

    /* renamed from: יˉ, reason: contains not printable characters */
    public int f2878;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final Rect f2879;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public ColorDrawable f2880;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f2881;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public int f2882;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public int f2883;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public C2844 f2884;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f2885;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public ColorStateList f2886;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f2887;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public boolean f2888;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public int f2889;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public ColorStateList f2890;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public int f2891;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public ColorStateList f2892;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public CharSequence f2893;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1329 f2894;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f2895;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public EditText f2896;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final int f2897;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public int f2898;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C1336 f2899;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public ColorStateList f2900;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f2901;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f2902;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f2903;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public boolean f2904;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public ColorDrawable f2905;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public ColorStateList f2906;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public int f2907;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C2312 f2908;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public boolean f2909;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public ColorStateList f2910;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public C2844 f2911;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public int f2912;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public int f2913;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f2914;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public boolean f2915;

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, ar.tvplayer.tv.R.attr.qa, ar.tvplayer.tv.R.style.f266742du), attributeSet, ar.tvplayer.tv.R.attr.qa);
        this.f2887 = -1;
        this.f2862 = -1;
        this.f2901 = -1;
        this.f2885 = -1;
        this.f2899 = new C1336(this);
        this.f2856 = new ᵔﹳ(22);
        this.f2871 = new Rect();
        this.f2879 = new Rect();
        this.f2848 = new RectF();
        this.f2840 = new LinkedHashSet();
        C2181 c2181 = new C2181(this);
        this.f2858 = c2181;
        this.f2867 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f2850 = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = AbstractC3200.f12246;
        c2181.f8581 = linearInterpolator;
        c2181.m5171(false);
        c2181.f8583 = linearInterpolator;
        c2181.m5171(false);
        if (c2181.f8604 != 8388659) {
            c2181.f8604 = 8388659;
            c2181.m5171(false);
        }
        AbstractC2185.m5188(context2, attributeSet, ar.tvplayer.tv.R.attr.qa, ar.tvplayer.tv.R.style.f266742du);
        int[] iArr = AbstractC3399.f13291;
        AbstractC2185.m5187(context2, attributeSet, iArr, ar.tvplayer.tv.R.attr.qa, ar.tvplayer.tv.R.style.f266742du, 22, 20, 40, 45, 50);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, ar.tvplayer.tv.R.attr.qa, ar.tvplayer.tv.R.style.f266742du);
        ٴʼ r6 = new ٴʼ(context2, obtainStyledAttributes);
        C1329 c1329 = new C1329(this, r6);
        this.f2894 = c1329;
        this.f2872 = obtainStyledAttributes.getBoolean(48, true);
        setHint(obtainStyledAttributes.getText(4));
        this.f2875 = obtainStyledAttributes.getBoolean(47, true);
        this.f2869 = obtainStyledAttributes.getBoolean(42, true);
        if (obtainStyledAttributes.hasValue(6)) {
            setMinEms(obtainStyledAttributes.getInt(6, -1));
        } else if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            setMaxEms(obtainStyledAttributes.getInt(5, -1));
        } else if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.f2874 = C2862.m6361(context2, attributeSet, ar.tvplayer.tv.R.attr.qa, ar.tvplayer.tv.R.style.f266742du).m6356();
        this.f2897 = context2.getResources().getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.432);
        this.f2847 = obtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.f2859 = getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.gu);
        this.f2877 = obtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.58l));
        this.f2849 = obtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.21r));
        this.f2891 = this.f2877;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        C2853 m6366 = this.f2874.m6366();
        if (dimension >= 0.0f) {
            m6366.f10719 = new C2867(dimension);
        }
        if (dimension2 >= 0.0f) {
            m6366.f10726 = new C2867(dimension2);
        }
        if (dimension3 >= 0.0f) {
            m6366.f10721 = new C2867(dimension3);
        }
        if (dimension4 >= 0.0f) {
            m6366.f10722 = new C2867(dimension4);
        }
        this.f2874 = m6366.m6356();
        ColorStateList colorStateList = ⁱˊ.יـ(context2, r6, 7);
        if (colorStateList != null) {
            int defaultColor = colorStateList.getDefaultColor();
            this.f2907 = defaultColor;
            this.f2843 = defaultColor;
            if (colorStateList.isStateful()) {
                this.f2913 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f2846 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f2866 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f2846 = this.f2907;
                ColorStateList m3358 = AbstractC1031.m3358(context2, ar.tvplayer.tv.R.color.4ci);
                this.f2913 = m3358.getColorForState(new int[]{-16842910}, -1);
                this.f2866 = m3358.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f2843 = 0;
            this.f2907 = 0;
            this.f2913 = 0;
            this.f2846 = 0;
            this.f2866 = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList2 = r6.ˈʿ(1);
            this.f2906 = colorStateList2;
            this.f2910 = colorStateList2;
        }
        ColorStateList colorStateList3 = ⁱˊ.יـ(context2, r6, 14);
        this.f2883 = obtainStyledAttributes.getColor(14, 0);
        this.f2838 = context2.getColor(ar.tvplayer.tv.R.color.76s);
        this.f2844 = context2.getColor(ar.tvplayer.tv.R.color.31h);
        this.f2912 = context2.getColor(ar.tvplayer.tv.R.color.60f);
        if (colorStateList3 != null) {
            setBoxStrokeColorStateList(colorStateList3);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(ⁱˊ.יـ(context2, r6, 15));
        }
        if (obtainStyledAttributes.getResourceId(50, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(50, 0));
        }
        this.f2892 = r6.ˈʿ(24);
        this.f2890 = r6.ˈʿ(25);
        int resourceId = obtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = obtainStyledAttributes.getText(35);
        int i = obtainStyledAttributes.getInt(34, 1);
        boolean z = obtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = obtainStyledAttributes.getText(43);
        int resourceId3 = obtainStyledAttributes.getResourceId(58, 0);
        CharSequence text3 = obtainStyledAttributes.getText(57);
        boolean z3 = obtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(19, -1));
        this.f2864 = obtainStyledAttributes.getResourceId(22, 0);
        this.f2868 = obtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(obtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i);
        setCounterOverflowTextAppearance(this.f2868);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f2864);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (obtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(r6.ˈʿ(41));
        }
        if (obtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(r6.ˈʿ(46));
        }
        if (obtainStyledAttributes.hasValue(51)) {
            setHintTextColor(r6.ˈʿ(51));
        }
        if (obtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(r6.ˈʿ(23));
        }
        if (obtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(r6.ˈʿ(21));
        }
        if (obtainStyledAttributes.hasValue(59)) {
            setPlaceholderTextColor(r6.ˈʿ(59));
        }
        C1324 c1324 = new C1324(this, r6);
        this.f2845 = c1324;
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        setHintMaxLines(obtainStyledAttributes.getInt(49, 1));
        r6.ᐧᴵ();
        setImportantForAccessibility(2);
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(1);
        }
        frameLayout.addView(c1329);
        frameLayout.addView(c1324);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f2896;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.f2865;
        }
        int i = ˈ.ٴﹶ(this.f2896, ar.tvplayer.tv.R.attr.56h);
        int i2 = this.f2882;
        int[][] iArr = f2837;
        if (i2 != 2) {
            if (i2 != 1) {
                return null;
            }
            C2844 c2844 = this.f2865;
            int i3 = this.f2843;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{ˈ.ˏי(0.1f, i, i3), i3}), c2844, c2844);
        }
        Context context = getContext();
        C2844 c28442 = this.f2865;
        int i4 = ˈ.ʼʼ(context, ʾˊ.ʾˋ(ar.tvplayer.tv.R.attr.6pf, context, "TextInputLayout"));
        C2844 c28443 = new C2844(c28442.m6315());
        int i5 = ˈ.ˏי(0.1f, i, i4);
        c28443.m6321(new ColorStateList(iArr, new int[]{i5, 0}));
        c28443.setTint(i4);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{i5, i4});
        C2844 c28444 = new C2844(c28442.m6315());
        c28444.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c28443, c28444), c28442});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f2857 == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f2857 = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f2857.addState(new int[0], m2441(false));
        }
        return this.f2857;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f2884 == null) {
            this.f2884 = m2441(true);
        }
        return this.f2884;
    }

    private void setEditText(EditText editText) {
        if (this.f2896 != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() == 3 || !(editText instanceof TextInputEditText)) {
        }
        this.f2896 = editText;
        int i = this.f2887;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.f2901);
        }
        int i2 = this.f2862;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.f2885);
        }
        this.f2914 = false;
        m2438();
        setTextInputAccessibilityDelegate(new C1328(this));
        Typeface typeface = this.f2896.getTypeface();
        C2181 c2181 = this.f2858;
        c2181.m5178(typeface);
        float textSize = this.f2896.getTextSize();
        if (c2181.f8608 != textSize) {
            c2181.f8608 = textSize;
            c2181.m5171(false);
        }
        float letterSpacing = this.f2896.getLetterSpacing();
        if (c2181.f8578 != letterSpacing) {
            c2181.f8578 = letterSpacing;
            c2181.m5171(false);
        }
        int gravity = this.f2896.getGravity();
        int i3 = (gravity & (-113)) | 48;
        if (c2181.f8604 != i3) {
            c2181.f8604 = i3;
            c2181.m5171(false);
        }
        if (c2181.f8618 != gravity) {
            c2181.f8618 = gravity;
            c2181.m5171(false);
        }
        this.f2878 = editText.getMinimumHeight();
        this.f2896.addTextChangedListener(new C1322(this, editText));
        if (this.f2910 == null) {
            this.f2910 = this.f2896.getHintTextColors();
        }
        if (this.f2872) {
            if (TextUtils.isEmpty(this.f2893)) {
                CharSequence hint = this.f2896.getHint();
                this.f2863 = hint;
                setHint(hint);
                this.f2896.setHint((CharSequence) null);
            }
            this.f2841 = true;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            m2446();
        }
        if (this.f2876 != null) {
            m2427(this.f2896.getText());
        }
        m2434();
        this.f2899.m3997();
        this.f2894.bringToFront();
        C1324 c1324 = this.f2845;
        c1324.bringToFront();
        Iterator it = this.f2840.iterator();
        while (it.hasNext()) {
            ((C1341) it.next()).m4010(this);
        }
        c1324.m3960();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m2437(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f2893)) {
            return;
        }
        this.f2893 = charSequence;
        C2181 c2181 = this.f2858;
        if (charSequence == null || !TextUtils.equals(c2181.f8598, charSequence)) {
            c2181.f8598 = charSequence;
            c2181.f8563 = null;
            c2181.m5171(false);
        }
        if (this.f2915) {
            return;
        }
        m2447();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f2881 == z) {
            return;
        }
        if (z) {
            C2312 c2312 = this.f2908;
            if (c2312 != null) {
                this.f2850.addView(c2312);
                this.f2908.setVisibility(0);
            }
        } else {
            C2312 c23122 = this.f2908;
            if (c23122 != null) {
                c23122.setVisibility(8);
            }
            this.f2908 = null;
        }
        this.f2881 = z;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m2423(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m2423((ViewGroup) childAt, z);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f2850;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        m2424();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f2896;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f2863 != null) {
            boolean z = this.f2841;
            this.f2841 = false;
            CharSequence hint = editText.getHint();
            this.f2896.setHint(this.f2863);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f2896.setHint(hint);
                this.f2841 = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.f2850;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f2896) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f2904 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f2904 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        C2844 c2844;
        Canvas canvas2 = canvas;
        super.draw(canvas);
        boolean z = this.f2872;
        C2181 c2181 = this.f2858;
        if (z) {
            TextPaint textPaint = c2181.f8572;
            RectF rectF = c2181.f8587;
            int save = canvas2.save();
            if (c2181.f8563 != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(c2181.f8593);
                float f = c2181.f8609;
                float f2 = c2181.f8614;
                float f3 = c2181.f8580;
                if (f3 != 1.0f) {
                    canvas2.scale(f3, f3, f, f2);
                }
                if ((c2181.f8597 > 1 || c2181.f8557 > 1) && !c2181.f8574 && c2181.m5174()) {
                    float lineStart = c2181.f8609 - c2181.f8568.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas2.translate(lineStart, f2);
                    float f4 = alpha;
                    textPaint.setAlpha((int) (c2181.f8595 * f4));
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 31) {
                        float f5 = c2181.f8579;
                        float f6 = c2181.f8603;
                        float f7 = c2181.f8592;
                        int i2 = c2181.f8601;
                        textPaint.setShadowLayer(f5, f6, f7, AbstractC4293.m8697(i2, (textPaint.getAlpha() * Color.alpha(i2)) / 255));
                    }
                    c2181.f8568.draw(canvas2);
                    textPaint.setAlpha((int) (c2181.f8596 * f4));
                    if (i >= 31) {
                        float f8 = c2181.f8579;
                        float f9 = c2181.f8603;
                        float f10 = c2181.f8592;
                        int i3 = c2181.f8601;
                        textPaint.setShadowLayer(f8, f9, f10, AbstractC4293.m8697(i3, (Color.alpha(i3) * textPaint.getAlpha()) / 255));
                    }
                    int lineBaseline = c2181.f8568.getLineBaseline(0);
                    CharSequence charSequence = c2181.f8585;
                    float f11 = lineBaseline;
                    canvas2.drawText(charSequence, 0, charSequence.length(), 0.0f, f11, textPaint);
                    if (i >= 31) {
                        textPaint.setShadowLayer(c2181.f8579, c2181.f8603, c2181.f8592, c2181.f8601);
                    }
                    String trim = c2181.f8585.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas2 = canvas;
                    canvas2.drawText(str, 0, Math.min(c2181.f8568.getLineEnd(0), str.length()), 0.0f, f11, (Paint) textPaint);
                } else {
                    canvas2.translate(f, f2);
                    c2181.f8568.draw(canvas2);
                }
                canvas2.restoreToCount(save);
            }
        }
        if (this.f2839 == null || (c2844 = this.f2911) == null) {
            return;
        }
        c2844.draw(canvas2);
        if (this.f2896.isFocused()) {
            Rect bounds = this.f2839.getBounds();
            Rect bounds2 = this.f2911.getBounds();
            float f12 = c2181.f8611;
            int centerX = bounds2.centerX();
            bounds.left = AbstractC3200.m7038(f12, centerX, bounds2.left);
            bounds.right = AbstractC3200.m7038(f12, centerX, bounds2.right);
            this.f2839.draw(canvas2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.f2909
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.f2909 = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            ˈᐧ.ʽ r3 = r4.f2858
            if (r3 == 0) goto L2f
            r3.f8570 = r1
            android.content.res.ColorStateList r1 = r3.f8594
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.f8569
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.m5171(r2)
            r1 = r0
            goto L30
        L2f:
            r1 = r2
        L30:
            android.widget.EditText r3 = r4.f2896
            if (r3 == 0) goto L45
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L41
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L41
            goto L42
        L41:
            r0 = r2
        L42:
            r4.m2437(r0, r2)
        L45:
            r4.m2434()
            r4.m2443()
            if (r1 == 0) goto L50
            r4.invalidate()
        L50:
            r4.f2909 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f2896;
        if (editText == null) {
            return super.getBaseline();
        }
        return m2435() + getPaddingTop() + editText.getBaseline();
    }

    public C2844 getBoxBackground() {
        int i = this.f2882;
        if (i == 1 || i == 2) {
            return this.f2865;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f2843;
    }

    public int getBoxBackgroundMode() {
        return this.f2882;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f2847;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f2848;
        return layoutDirection == 1 ? this.f2874.f10765.mo6342(rectF) : this.f2874.f10764.mo6342(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f2848;
        return layoutDirection == 1 ? this.f2874.f10764.mo6342(rectF) : this.f2874.f10765.mo6342(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f2848;
        return layoutDirection == 1 ? this.f2874.f10762.mo6342(rectF) : this.f2874.f10769.mo6342(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f2848;
        return layoutDirection == 1 ? this.f2874.f10769.mo6342(rectF) : this.f2874.f10762.mo6342(rectF);
    }

    public int getBoxStrokeColor() {
        return this.f2883;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f2886;
    }

    public int getBoxStrokeWidth() {
        return this.f2877;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f2849;
    }

    public int getCounterMaxLength() {
        return this.f2855;
    }

    public CharSequence getCounterOverflowDescription() {
        C2312 c2312;
        if (this.f2902 && this.f2903 && (c2312 = this.f2876) != null) {
            return c2312.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f2900;
    }

    public ColorStateList getCounterTextColor() {
        return this.f2854;
    }

    public ColorStateList getCursorColor() {
        return this.f2892;
    }

    public ColorStateList getCursorErrorColor() {
        return this.f2890;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f2910;
    }

    public EditText getEditText() {
        return this.f2896;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f2845.f5090.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f2845.f5090.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f2845.f5079;
    }

    public int getEndIconMode() {
        return this.f2845.f5094;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f2845.f5096;
    }

    public CheckableImageButton getEndIconView() {
        return this.f2845.f5090;
    }

    public CharSequence getError() {
        C1336 c1336 = this.f2899;
        if (c1336.f5152) {
            return c1336.f5134;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f2899.f5143;
    }

    public CharSequence getErrorContentDescription() {
        return this.f2899.f5145;
    }

    public int getErrorCurrentTextColors() {
        C2312 c2312 = this.f2899.f5156;
        if (c2312 != null) {
            return c2312.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f2845.f5077.getDrawable();
    }

    public CharSequence getHelperText() {
        C1336 c1336 = this.f2899;
        if (c1336.f5138) {
            return c1336.f5146;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C2312 c2312 = this.f2899.f5132;
        if (c2312 != null) {
            return c2312.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f2872) {
            return this.f2893;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f2858.m5181();
    }

    public final int getHintCurrentCollapsedTextColor() {
        C2181 c2181 = this.f2858;
        return c2181.m5177(c2181.f8594);
    }

    public int getHintMaxLines() {
        return this.f2858.f8597;
    }

    public ColorStateList getHintTextColor() {
        return this.f2906;
    }

    public InterfaceC1339 getLengthCounter() {
        return this.f2856;
    }

    public int getMaxEms() {
        return this.f2862;
    }

    public int getMaxWidth() {
        return this.f2885;
    }

    public int getMinEms() {
        return this.f2887;
    }

    public int getMinWidth() {
        return this.f2901;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f2845.f5090.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f2845.f5090.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f2881) {
            return this.f2842;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f2895;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f2860;
    }

    public CharSequence getPrefixText() {
        return this.f2894.f5113;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f2894.f5120.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f2894.f5120;
    }

    public C2862 getShapeAppearanceModel() {
        return this.f2874;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f2894.f5115.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f2894.f5115.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f2894.f5119;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f2894.f5116;
    }

    public CharSequence getSuffixText() {
        return this.f2845.f5087;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f2845.f5086.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f2845.f5086;
    }

    public Typeface getTypeface() {
        return this.f2851;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2858.m5169(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        C1324 c1324 = this.f2845;
        c1324.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.f2867 = false;
        if (this.f2896 != null && this.f2896.getMeasuredHeight() < (max = Math.max(c1324.getMeasuredHeight(), this.f2894.getMeasuredHeight()))) {
            this.f2896.setMinimumHeight(max);
            z = true;
        }
        boolean m2436 = m2436();
        if (z || m2436) {
            this.f2896.post(new RunnableC0197(14, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float descent;
        int i5;
        int compoundPaddingTop;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f2896;
        if (editText != null) {
            Rect rect = this.f2871;
            AbstractC2183.m5183(this, editText, rect);
            C2844 c2844 = this.f2911;
            if (c2844 != null) {
                int i6 = rect.bottom;
                c2844.setBounds(rect.left, i6 - this.f2877, rect.right, i6);
            }
            C2844 c28442 = this.f2839;
            if (c28442 != null) {
                int i7 = rect.bottom;
                c28442.setBounds(rect.left, i7 - this.f2849, rect.right, i7);
            }
            if (this.f2872) {
                float textSize = this.f2896.getTextSize();
                C2181 c2181 = this.f2858;
                float f = c2181.f8608;
                TextPaint textPaint = c2181.f8586;
                if (f != textSize) {
                    c2181.f8608 = textSize;
                    c2181.m5171(false);
                }
                int gravity = this.f2896.getGravity();
                int i8 = (gravity & (-113)) | 48;
                if (c2181.f8604 != i8) {
                    c2181.f8604 = i8;
                    c2181.m5171(false);
                }
                if (c2181.f8618 != gravity) {
                    c2181.f8618 = gravity;
                    c2181.m5171(false);
                }
                Rect m2432 = m2432(rect);
                int i9 = m2432.left;
                int i10 = m2432.top;
                int i11 = m2432.right;
                int i12 = m2432.bottom;
                Rect rect2 = c2181.f8571;
                if (rect2.left != i9 || rect2.top != i10 || rect2.right != i11 || rect2.bottom != i12) {
                    rect2.set(i9, i10, i11, i12);
                    c2181.f8607 = true;
                }
                if (this.f2896 == null) {
                    throw new IllegalStateException();
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(c2181.f8608);
                    textPaint.setTypeface(c2181.f8556);
                    textPaint.setLetterSpacing(c2181.f8578);
                    descent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(c2181.f8608);
                    textPaint.setTypeface(c2181.f8556);
                    textPaint.setLetterSpacing(c2181.f8578);
                    descent = c2181.f8617 * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.f2896.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.f2879;
                rect3.left = compoundPaddingLeft;
                if (this.f2882 != 1 || this.f2896.getMinLines() > 1) {
                    if (this.f2882 != 0 || getHintMaxLines() == 1) {
                        i5 = 0;
                    } else {
                        textPaint.setTextSize(c2181.f8608);
                        textPaint.setTypeface(c2181.f8556);
                        textPaint.setLetterSpacing(c2181.f8578);
                        i5 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.f2896.getCompoundPaddingTop() + rect.top) - i5;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (descent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.f2896.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f2882 != 1 || this.f2896.getMinLines() > 1) ? rect.bottom - this.f2896.getCompoundPaddingBottom() : (int) (rect3.top + descent);
                rect3.bottom = compoundPaddingBottom;
                int i13 = rect3.left;
                int i14 = rect3.top;
                int i15 = rect3.right;
                Rect rect4 = c2181.f8562;
                if (rect4.left != i13 || rect4.top != i14 || rect4.right != i15 || rect4.bottom != compoundPaddingBottom || true != c2181.f8615) {
                    rect4.set(i13, i14, i15, compoundPaddingBottom);
                    c2181.f8607 = true;
                    c2181.f8615 = true;
                }
                c2181.m5171(false);
                if (!m2439() || this.f2915) {
                    return;
                }
                m2447();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f;
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.f2867;
        C1324 c1324 = this.f2845;
        if (!z) {
            c1324.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f2867 = true;
        }
        if (this.f2908 != null && (editText = this.f2896) != null) {
            this.f2908.setGravity(editText.getGravity());
            this.f2908.setPadding(this.f2896.getCompoundPaddingLeft(), this.f2896.getCompoundPaddingTop(), this.f2896.getCompoundPaddingRight(), this.f2896.getCompoundPaddingBottom());
        }
        c1324.m3960();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.f2896.getMeasuredWidth() - this.f2896.getCompoundPaddingLeft()) - this.f2896.getCompoundPaddingRight();
        C2181 c2181 = this.f2858;
        TextPaint textPaint = c2181.f8586;
        textPaint.setTextSize(c2181.f8560);
        textPaint.setTypeface(c2181.f8588);
        textPaint.setLetterSpacing(c2181.f8599);
        float f2 = measuredWidth;
        c2181.f8573 = c2181.m5175(c2181.f8557, textPaint, c2181.f8598, (c2181.f8560 / c2181.f8608) * f2, c2181.f8574).getHeight();
        textPaint.setTextSize(c2181.f8608);
        textPaint.setTypeface(c2181.f8556);
        textPaint.setLetterSpacing(c2181.f8578);
        c2181.f8616 = c2181.m5175(c2181.f8597, textPaint, c2181.f8598, f2, c2181.f8574).getHeight();
        EditText editText2 = this.f2896;
        Rect rect = this.f2871;
        AbstractC2183.m5183(this, editText2, rect);
        Rect m2432 = m2432(rect);
        int i3 = m2432.left;
        int i4 = m2432.top;
        int i5 = m2432.right;
        int i6 = m2432.bottom;
        Rect rect2 = c2181.f8571;
        if (rect2.left != i3 || rect2.top != i4 || rect2.right != i5 || rect2.bottom != i6) {
            rect2.set(i3, i4, i5, i6);
            c2181.f8607 = true;
        }
        m2424();
        m2445();
        if (this.f2896 == null) {
            return;
        }
        int i7 = c2181.f8616;
        if (i7 != -1) {
            f = i7;
        } else {
            TextPaint textPaint2 = c2181.f8586;
            textPaint2.setTextSize(c2181.f8608);
            textPaint2.setTypeface(c2181.f8556);
            textPaint2.setLetterSpacing(c2181.f8578);
            f = -textPaint2.ascent();
        }
        float f3 = 0.0f;
        if (this.f2842 != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.f2908.getPaint());
            textPaint3.setTextSize(this.f2908.getTextSize());
            textPaint3.setTypeface(this.f2908.getTypeface());
            textPaint3.setLetterSpacing(this.f2908.getLetterSpacing());
            try {
                C2186 c2186 = new C2186(this.f2842, textPaint3, measuredWidth);
                c2186.f8636 = getLayoutDirection() == 1;
                c2186.f8632 = true;
                float lineSpacingExtra = this.f2908.getLineSpacingExtra();
                float lineSpacingMultiplier = this.f2908.getLineSpacingMultiplier();
                c2186.f8637 = lineSpacingExtra;
                c2186.f8638 = lineSpacingMultiplier;
                c2186.f8634 = new ʻʿ.ˈ(11, this);
                f3 = c2186.m5190().getHeight() + (this.f2882 == 1 ? c2181.m5181() + this.f2847 + this.f2859 : 0.0f);
            } catch (StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException e) {
                e.getCause().getMessage();
            }
        }
        float max = Math.max(f, f3);
        if (this.f2896.getMeasuredHeight() < max) {
            this.f2896.setMinimumHeight(Math.round(max));
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1326)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1326 c1326 = (C1326) parcelable;
        super.onRestoreInstanceState(c1326.f15355);
        setError(c1326.f5107);
        if (c1326.f5108) {
            post(new RunnableC0142(12, this));
        }
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, ˋⁱ.ᵔʾ] */
    /* JADX WARN: Type inference failed for: r8v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.f2888) {
            InterfaceC2852 interfaceC2852 = this.f2874.f10762;
            RectF rectF = this.f2848;
            float mo6342 = interfaceC2852.mo6342(rectF);
            float mo63422 = this.f2874.f10769.mo6342(rectF);
            float mo63423 = this.f2874.f10765.mo6342(rectF);
            float mo63424 = this.f2874.f10764.mo6342(rectF);
            C2862 c2862 = this.f2874;
            ٴﹶ r5 = c2862.f10767;
            ٴﹶ r6 = c2862.f10766;
            ٴﹶ r7 = c2862.f10761;
            ٴﹶ r4 = c2862.f10759;
            ?? obj = new Object();
            ?? obj2 = new Object();
            ?? obj3 = new Object();
            ?? obj4 = new Object();
            C2867 c2867 = new C2867(mo63422);
            C2867 c28672 = new C2867(mo6342);
            C2867 c28673 = new C2867(mo63424);
            C2867 c28674 = new C2867(mo63423);
            ?? obj5 = new Object();
            obj5.f10767 = r6;
            obj5.f10766 = r5;
            obj5.f10759 = r7;
            obj5.f10761 = r4;
            obj5.f10762 = c2867;
            obj5.f10769 = c28672;
            obj5.f10764 = c28674;
            obj5.f10765 = c28673;
            obj5.f10758 = obj;
            obj5.f10760 = obj2;
            obj5.f10763 = obj3;
            obj5.f10768 = obj4;
            this.f2888 = z;
            setShapeAppearanceModel(obj5);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, ʽˊ.ʽʽ, ᴵˑ.ⁱˊ] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        if (m2433()) {
            abstractC3985.f5107 = getError();
        }
        C1324 c1324 = this.f2845;
        abstractC3985.f5108 = c1324.f5094 != 0 && c1324.f5090.f2791;
        return abstractC3985;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f2843 != i) {
            this.f2843 = i;
            this.f2907 = i;
            this.f2846 = i;
            this.f2866 = i;
            m2428();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f2907 = defaultColor;
        this.f2843 = defaultColor;
        this.f2913 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f2846 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f2866 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        m2428();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f2882) {
            return;
        }
        this.f2882 = i;
        if (this.f2896 != null) {
            m2438();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.f2847 = i;
    }

    public void setBoxCornerFamily(int i) {
        C2853 m6366 = this.f2874.m6366();
        InterfaceC2852 interfaceC2852 = this.f2874.f10762;
        m6366.f10724 = ʽʽ.ᵎﹶ(i);
        m6366.f10719 = interfaceC2852;
        InterfaceC2852 interfaceC28522 = this.f2874.f10769;
        m6366.f10723 = ʽʽ.ᵎﹶ(i);
        m6366.f10726 = interfaceC28522;
        InterfaceC2852 interfaceC28523 = this.f2874.f10765;
        m6366.f10718 = ʽʽ.ᵎﹶ(i);
        m6366.f10722 = interfaceC28523;
        InterfaceC2852 interfaceC28524 = this.f2874.f10764;
        m6366.f10716 = ʽʽ.ᵎﹶ(i);
        m6366.f10721 = interfaceC28524;
        this.f2874 = m6366.m6356();
        m2428();
    }

    public void setBoxStrokeColor(int i) {
        if (this.f2883 != i) {
            this.f2883 = i;
            m2443();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f2838 = colorStateList.getDefaultColor();
            this.f2844 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f2912 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f2883 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f2883 != colorStateList.getDefaultColor()) {
            this.f2883 = colorStateList.getDefaultColor();
        }
        m2443();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f2886 != colorStateList) {
            this.f2886 = colorStateList;
            m2443();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f2877 = i;
        m2443();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f2849 = i;
        m2443();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f2902 != z) {
            C1336 c1336 = this.f2899;
            if (z) {
                C2312 c2312 = new C2312(getContext(), null);
                this.f2876 = c2312;
                c2312.setId(ar.tvplayer.tv.R.id.6sq);
                Typeface typeface = this.f2851;
                if (typeface != null) {
                    this.f2876.setTypeface(typeface);
                }
                this.f2876.setMaxLines(1);
                c1336.m3998(this.f2876, 2);
                ((ViewGroup.MarginLayoutParams) this.f2876.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.6tg));
                m2442();
                if (this.f2876 != null) {
                    EditText editText = this.f2896;
                    m2427(editText != null ? editText.getText() : null);
                }
            } else {
                c1336.m3995(this.f2876, 2);
                this.f2876 = null;
            }
            this.f2902 = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f2855 != i) {
            if (i > 0) {
                this.f2855 = i;
            } else {
                this.f2855 = -1;
            }
            if (!this.f2902 || this.f2876 == null) {
                return;
            }
            EditText editText = this.f2896;
            m2427(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f2868 != i) {
            this.f2868 = i;
            m2442();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f2900 != colorStateList) {
            this.f2900 = colorStateList;
            m2442();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f2864 != i) {
            this.f2864 = i;
            m2442();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f2854 != colorStateList) {
            this.f2854 = colorStateList;
            m2442();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.f2892 != colorStateList) {
            this.f2892 = colorStateList;
            m2446();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.f2890 != colorStateList) {
            this.f2890 = colorStateList;
            if (m2433() || (this.f2876 != null && this.f2903)) {
                m2446();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f2910 = colorStateList;
        this.f2906 = colorStateList;
        if (this.f2896 != null) {
            m2437(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m2423(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f2845.f5090.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f2845.f5090.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        C1324 c1324 = this.f2845;
        c1324.m3959(i != 0 ? c1324.getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        this.f2845.m3959(charSequence);
    }

    public void setEndIconDrawable(int i) {
        C1324 c1324 = this.f2845;
        Drawable drawable = i != 0 ? ˊʻ.ﹳᐧ(c1324.getContext(), i) : null;
        TextInputLayout textInputLayout = c1324.f5078;
        CheckableImageButton checkableImageButton = c1324.f5090;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, c1324.f5093, c1324.f5095);
            ﹳٴ.ᵎﹶ(textInputLayout, checkableImageButton, c1324.f5093);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        C1324 c1324 = this.f2845;
        TextInputLayout textInputLayout = c1324.f5078;
        CheckableImageButton checkableImageButton = c1324.f5090;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, c1324.f5093, c1324.f5095);
            ﹳٴ.ᵎﹶ(textInputLayout, checkableImageButton, c1324.f5093);
        }
    }

    public void setEndIconMinSize(int i) {
        C1324 c1324 = this.f2845;
        if (i < 0) {
            c1324.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i != c1324.f5079) {
            c1324.f5079 = i;
            CheckableImageButton checkableImageButton = c1324.f5090;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
            CheckableImageButton checkableImageButton2 = c1324.f5077;
            checkableImageButton2.setMinimumWidth(i);
            checkableImageButton2.setMinimumHeight(i);
        }
    }

    public void setEndIconMode(int i) {
        this.f2845.m3961(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        C1324 c1324 = this.f2845;
        CheckableImageButton checkableImageButton = c1324.f5090;
        View.OnLongClickListener onLongClickListener = c1324.f5080;
        checkableImageButton.setOnClickListener(onClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        C1324 c1324 = this.f2845;
        c1324.f5080 = onLongClickListener;
        CheckableImageButton checkableImageButton = c1324.f5090;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        C1324 c1324 = this.f2845;
        c1324.f5096 = scaleType;
        c1324.f5090.setScaleType(scaleType);
        c1324.f5077.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        C1324 c1324 = this.f2845;
        if (c1324.f5093 != colorStateList) {
            c1324.f5093 = colorStateList;
            ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5090, colorStateList, c1324.f5095);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        C1324 c1324 = this.f2845;
        if (c1324.f5095 != mode) {
            c1324.f5095 = mode;
            ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5090, c1324.f5093, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.f2845.m3951(z);
    }

    public void setError(CharSequence charSequence) {
        C1336 c1336 = this.f2899;
        if (!c1336.f5152) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            c1336.m3999();
            return;
        }
        c1336.m3992();
        c1336.f5134 = charSequence;
        c1336.f5156.setText(charSequence);
        int i = c1336.f5150;
        if (i != 1) {
            c1336.f5142 = 1;
        }
        c1336.m3991(i, c1336.f5142, c1336.m3996(c1336.f5156, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        C1336 c1336 = this.f2899;
        c1336.f5143 = i;
        C2312 c2312 = c1336.f5156;
        if (c2312 != null) {
            c2312.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        C1336 c1336 = this.f2899;
        c1336.f5145 = charSequence;
        C2312 c2312 = c1336.f5156;
        if (c2312 != null) {
            c2312.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        C1336 c1336 = this.f2899;
        TextInputLayout textInputLayout = c1336.f5151;
        if (c1336.f5152 == z) {
            return;
        }
        c1336.m3992();
        if (z) {
            C2312 c2312 = new C2312(c1336.f5149, null);
            c1336.f5156 = c2312;
            c2312.setId(ar.tvplayer.tv.R.id.30v);
            c1336.f5156.setTextAlignment(5);
            Typeface typeface = c1336.f5148;
            if (typeface != null) {
                c1336.f5156.setTypeface(typeface);
            }
            int i = c1336.f5136;
            c1336.f5136 = i;
            C2312 c23122 = c1336.f5156;
            if (c23122 != null) {
                c1336.f5151.m2440(c23122, i);
            }
            ColorStateList colorStateList = c1336.f5131;
            c1336.f5131 = colorStateList;
            C2312 c23123 = c1336.f5156;
            if (c23123 != null && colorStateList != null) {
                c23123.setTextColor(colorStateList);
            }
            CharSequence charSequence = c1336.f5145;
            c1336.f5145 = charSequence;
            C2312 c23124 = c1336.f5156;
            if (c23124 != null) {
                c23124.setContentDescription(charSequence);
            }
            int i2 = c1336.f5143;
            c1336.f5143 = i2;
            C2312 c23125 = c1336.f5156;
            if (c23125 != null) {
                c23125.setAccessibilityLiveRegion(i2);
            }
            c1336.f5156.setVisibility(4);
            c1336.m3998(c1336.f5156, 0);
        } else {
            c1336.m3999();
            c1336.m3995(c1336.f5156, 0);
            c1336.f5156 = null;
            textInputLayout.m2434();
            textInputLayout.m2443();
        }
        c1336.f5152 = z;
    }

    public void setErrorIconDrawable(int i) {
        C1324 c1324 = this.f2845;
        c1324.m3953(i != 0 ? ˊʻ.ﹳᐧ(c1324.getContext(), i) : null);
        ﹳٴ.ᵎﹶ(c1324.f5078, c1324.f5077, c1324.f5081);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f2845.m3953(drawable);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        C1324 c1324 = this.f2845;
        CheckableImageButton checkableImageButton = c1324.f5077;
        View.OnLongClickListener onLongClickListener = c1324.f5084;
        checkableImageButton.setOnClickListener(onClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        C1324 c1324 = this.f2845;
        c1324.f5084 = onLongClickListener;
        CheckableImageButton checkableImageButton = c1324.f5077;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        C1324 c1324 = this.f2845;
        if (c1324.f5081 != colorStateList) {
            c1324.f5081 = colorStateList;
            ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5077, colorStateList, c1324.f5092);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        C1324 c1324 = this.f2845;
        if (c1324.f5092 != mode) {
            c1324.f5092 = mode;
            ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5077, c1324.f5081, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        C1336 c1336 = this.f2899;
        c1336.f5136 = i;
        C2312 c2312 = c1336.f5156;
        if (c2312 != null) {
            c1336.f5151.m2440(c2312, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        C1336 c1336 = this.f2899;
        c1336.f5131 = colorStateList;
        C2312 c2312 = c1336.f5156;
        if (c2312 == null || colorStateList == null) {
            return;
        }
        c2312.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f2869 != z) {
            this.f2869 = z;
            m2437(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        C1336 c1336 = this.f2899;
        if (isEmpty) {
            if (c1336.f5138) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!c1336.f5138) {
            setHelperTextEnabled(true);
        }
        c1336.m3992();
        c1336.f5146 = charSequence;
        c1336.f5132.setText(charSequence);
        int i = c1336.f5150;
        if (i != 2) {
            c1336.f5142 = 2;
        }
        c1336.m3991(i, c1336.f5142, c1336.m3996(c1336.f5132, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        C1336 c1336 = this.f2899;
        c1336.f5137 = colorStateList;
        C2312 c2312 = c1336.f5132;
        if (c2312 == null || colorStateList == null) {
            return;
        }
        c2312.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        C1336 c1336 = this.f2899;
        TextInputLayout textInputLayout = c1336.f5151;
        if (c1336.f5138 == z) {
            return;
        }
        c1336.m3992();
        if (z) {
            C2312 c2312 = new C2312(c1336.f5149, null);
            c1336.f5132 = c2312;
            c2312.setId(ar.tvplayer.tv.R.id.30a);
            c1336.f5132.setTextAlignment(5);
            Typeface typeface = c1336.f5148;
            if (typeface != null) {
                c1336.f5132.setTypeface(typeface);
            }
            c1336.f5132.setVisibility(4);
            c1336.f5132.setAccessibilityLiveRegion(1);
            int i = c1336.f5153;
            c1336.f5153 = i;
            C2312 c23122 = c1336.f5132;
            if (c23122 != null) {
                c23122.setTextAppearance(i);
            }
            ColorStateList colorStateList = c1336.f5137;
            c1336.f5137 = colorStateList;
            C2312 c23123 = c1336.f5132;
            if (c23123 != null && colorStateList != null) {
                c23123.setTextColor(colorStateList);
            }
            c1336.m3998(c1336.f5132, 1);
            c1336.f5132.setAccessibilityDelegate(new C0099(1, c1336));
        } else {
            c1336.m3992();
            int i2 = c1336.f5150;
            if (i2 == 2) {
                c1336.f5142 = 0;
            }
            c1336.m3991(i2, c1336.f5142, c1336.m3996(c1336.f5132, ""));
            c1336.m3995(c1336.f5132, 1);
            c1336.f5132 = null;
            textInputLayout.m2434();
            textInputLayout.m2443();
        }
        c1336.f5138 = z;
    }

    public void setHelperTextTextAppearance(int i) {
        C1336 c1336 = this.f2899;
        c1336.f5153 = i;
        C2312 c2312 = c1336.f5132;
        if (c2312 != null) {
            c2312.setTextAppearance(i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f2872) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f2875 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f2872) {
            this.f2872 = z;
            if (z) {
                CharSequence hint = this.f2896.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f2893)) {
                        setHint(hint);
                    }
                    this.f2896.setHint((CharSequence) null);
                }
                this.f2841 = true;
            } else {
                this.f2841 = false;
                if (!TextUtils.isEmpty(this.f2893) && TextUtils.isEmpty(this.f2896.getHint())) {
                    this.f2896.setHint(this.f2893);
                }
                setHintInternal(null);
            }
            if (this.f2896 != null) {
                m2424();
            }
        }
    }

    public void setHintMaxLines(int i) {
        C2181 c2181 = this.f2858;
        if (i != c2181.f8557) {
            c2181.f8557 = i;
            c2181.m5171(false);
        }
        if (i != c2181.f8597) {
            c2181.f8597 = i;
            c2181.m5171(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(int i) {
        C2181 c2181 = this.f2858;
        TextInputLayout textInputLayout = c2181.f8613;
        C4762 c4762 = new C4762(textInputLayout.getContext(), i);
        ColorStateList colorStateList = c4762.f17985;
        if (colorStateList != null) {
            c2181.f8594 = colorStateList;
        }
        float f = c4762.f17991;
        if (f != 0.0f) {
            c2181.f8560 = f;
        }
        ColorStateList colorStateList2 = c4762.f17990;
        if (colorStateList2 != null) {
            c2181.f8575 = colorStateList2;
        }
        c2181.f8590 = c4762.f17992;
        c2181.f8612 = c4762.f17986;
        c2181.f8559 = c4762.f17988;
        c2181.f8599 = c4762.f17980;
        C4764 c4764 = c2181.f8610;
        if (c4764 != null) {
            c4764.f17997 = true;
        }
        ʽ r3 = new ʽ(c2181);
        c4762.m9530();
        c2181.f8610 = new C4764(r3, c4762.f17978);
        c4762.m9529(textInputLayout.getContext(), c2181.f8610);
        c2181.m5171(false);
        this.f2906 = c2181.f8594;
        if (this.f2896 != null) {
            m2437(false, false);
            m2424();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f2906 != colorStateList) {
            if (this.f2910 == null) {
                C2181 c2181 = this.f2858;
                if (c2181.f8594 != colorStateList) {
                    c2181.f8594 = colorStateList;
                    c2181.m5171(false);
                }
            }
            this.f2906 = colorStateList;
            if (this.f2896 != null) {
                m2437(false, false);
            }
        }
    }

    public void setLengthCounter(InterfaceC1339 interfaceC1339) {
        this.f2856 = interfaceC1339;
    }

    public void setMaxEms(int i) {
        this.f2862 = i;
        EditText editText = this.f2896;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(int i) {
        this.f2885 = i;
        EditText editText = this.f2896;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.f2887 = i;
        EditText editText = this.f2896;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(int i) {
        this.f2901 = i;
        EditText editText = this.f2896;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        C1324 c1324 = this.f2845;
        c1324.f5090.setContentDescription(i != 0 ? c1324.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f2845.f5090.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        C1324 c1324 = this.f2845;
        c1324.f5090.setImageDrawable(i != 0 ? ˊʻ.ﹳᐧ(c1324.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f2845.f5090.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        C1324 c1324 = this.f2845;
        if (z && c1324.f5094 != 1) {
            c1324.m3961(1);
        } else if (z) {
            c1324.getClass();
        } else {
            c1324.m3961(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        C1324 c1324 = this.f2845;
        c1324.f5093 = colorStateList;
        ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5090, colorStateList, c1324.f5095);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        C1324 c1324 = this.f2845;
        c1324.f5095 = mode;
        ﹳٴ.ﹳٴ(c1324.f5078, c1324.f5090, c1324.f5093, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f2908 == null) {
            C2312 c2312 = new C2312(getContext(), null);
            this.f2908 = c2312;
            c2312.setId(ar.tvplayer.tv.R.id.79g);
            this.f2908.setImportantForAccessibility(1);
            this.f2908.setAccessibilityLiveRegion(1);
            C3145 m2448 = m2448();
            this.f2861 = m2448;
            m2448.f12047 = 67L;
            this.f2852 = m2448();
            setPlaceholderTextAppearance(this.f2895);
            setPlaceholderTextColor(this.f2860);
            AbstractC2823.m6273(this.f2908, new C0670(3));
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f2881) {
                setPlaceholderTextEnabled(true);
            }
            this.f2842 = charSequence;
        }
        EditText editText = this.f2896;
        m2430(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f2895 = i;
        C2312 c2312 = this.f2908;
        if (c2312 != null) {
            c2312.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f2860 != colorStateList) {
            this.f2860 = colorStateList;
            C2312 c2312 = this.f2908;
            if (c2312 == null || colorStateList == null) {
                return;
            }
            c2312.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        C1329 c1329 = this.f2894;
        c1329.getClass();
        c1329.f5113 = TextUtils.isEmpty(charSequence) ? null : charSequence;
        c1329.f5120.setText(charSequence);
        c1329.m3985();
    }

    public void setPrefixTextAppearance(int i) {
        this.f2894.f5120.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f2894.f5120.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(C2862 c2862) {
        C2844 c2844 = this.f2865;
        if (c2844 == null || c2844.m6315() == c2862) {
            return;
        }
        this.f2874 = c2862;
        m2428();
    }

    public void setStartIconCheckable(boolean z) {
        this.f2894.f5115.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        this.f2894.m3983(charSequence);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? ˊʻ.ﹳᐧ(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f2894.m3980(drawable);
    }

    public void setStartIconMinSize(int i) {
        C1329 c1329 = this.f2894;
        if (i < 0) {
            c1329.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != c1329.f5119) {
            c1329.f5119 = i;
            CheckableImageButton checkableImageButton = c1329.f5115;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        C1329 c1329 = this.f2894;
        CheckableImageButton checkableImageButton = c1329.f5115;
        View.OnLongClickListener onLongClickListener = c1329.f5122;
        checkableImageButton.setOnClickListener(onClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        C1329 c1329 = this.f2894;
        c1329.f5122 = onLongClickListener;
        CheckableImageButton checkableImageButton = c1329.f5115;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        C1329 c1329 = this.f2894;
        c1329.f5116 = scaleType;
        c1329.f5115.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        C1329 c1329 = this.f2894;
        if (c1329.f5121 != colorStateList) {
            c1329.f5121 = colorStateList;
            ﹳٴ.ﹳٴ(c1329.f5114, c1329.f5115, colorStateList, c1329.f5117);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        C1329 c1329 = this.f2894;
        if (c1329.f5117 != mode) {
            c1329.f5117 = mode;
            ﹳٴ.ﹳٴ(c1329.f5114, c1329.f5115, c1329.f5121, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.f2894.m3981(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        C1324 c1324 = this.f2845;
        c1324.getClass();
        c1324.f5087 = TextUtils.isEmpty(charSequence) ? null : charSequence;
        c1324.f5086.setText(charSequence);
        c1324.m3956();
    }

    public void setSuffixTextAppearance(int i) {
        this.f2845.f5086.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f2845.f5086.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(C1328 c1328) {
        EditText editText = this.f2896;
        if (editText != null) {
            AbstractC2823.m6273(editText, c1328);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f2851) {
            this.f2851 = typeface;
            this.f2858.m5178(typeface);
            C1336 c1336 = this.f2899;
            if (typeface != c1336.f5148) {
                c1336.f5148 = typeface;
                C2312 c2312 = c1336.f5156;
                if (c2312 != null) {
                    c2312.setTypeface(typeface);
                }
                C2312 c23122 = c1336.f5132;
                if (c23122 != null) {
                    c23122.setTypeface(typeface);
                }
            }
            C2312 c23123 = this.f2876;
            if (c23123 != null) {
                c23123.setTypeface(typeface);
            }
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m2424() {
        if (this.f2882 != 1) {
            FrameLayout frameLayout = this.f2850;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int m2435 = m2435();
            if (m2435 != layoutParams.topMargin) {
                layoutParams.topMargin = m2435;
                frameLayout.requestLayout();
            }
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m2425(boolean z, boolean z2) {
        int defaultColor = this.f2886.getDefaultColor();
        int colorForState = this.f2886.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f2886.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.f2873 = colorForState2;
        } else if (z2) {
            this.f2873 = colorForState;
        } else {
            this.f2873 = defaultColor;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int m2426(int i, boolean z) {
        return ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.f2896.getCompoundPaddingLeft() : this.f2845.m3952() : this.f2894.m3984()) + i;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m2427(Editable editable) {
        this.f2856.getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.f2903;
        int i = this.f2855;
        if (i == -1) {
            this.f2876.setText(String.valueOf(length));
            this.f2876.setContentDescription(null);
            this.f2903 = false;
        } else {
            this.f2903 = length > i;
            Context context = getContext();
            this.f2876.setContentDescription(context.getString(this.f2903 ? ar.tvplayer.tv.R.string.2qq : ar.tvplayer.tv.R.string.2bm, Integer.valueOf(length), Integer.valueOf(this.f2855)));
            if (z != this.f2903) {
                m2442();
            }
            String str = C2004.f7878;
            C2004 c2004 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? C2004.f7877 : C2004.f7876;
            C2312 c2312 = this.f2876;
            String string = getContext().getString(ar.tvplayer.tv.R.string.1ud, Integer.valueOf(length), Integer.valueOf(this.f2855));
            c2004.getClass();
            ʽﹳ r3 = AbstractC2006.f7888;
            c2312.setText(string != null ? c2004.m4982(string).toString() : null);
        }
        if (this.f2896 == null || z == this.f2903) {
            return;
        }
        m2437(false, false);
        m2443();
        m2434();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m2428() {
        int i;
        int i2;
        C2844 c2844 = this.f2865;
        if (c2844 == null) {
            return;
        }
        C2862 m6315 = c2844.m6315();
        C2862 c2862 = this.f2874;
        if (m6315 != c2862) {
            this.f2865.setShapeAppearanceModel(c2862);
        }
        if (this.f2882 == 2 && (i = this.f2891) > -1 && (i2 = this.f2873) != 0) {
            C2844 c28442 = this.f2865;
            c28442.f10671.f10745 = i;
            c28442.invalidateSelf();
            ColorStateList valueOf = ColorStateList.valueOf(i2);
            C2861 c2861 = c28442.f10671;
            if (c2861.f10746 != valueOf) {
                c2861.f10746 = valueOf;
                c28442.onStateChange(c28442.getState());
            }
        }
        int i3 = this.f2843;
        if (this.f2882 == 1) {
            i3 = AbstractC4293.m8698(this.f2843, ˈ.ˆʾ(getContext(), ar.tvplayer.tv.R.attr.6pf, 0));
        }
        this.f2843 = i3;
        this.f2865.m6321(ColorStateList.valueOf(i3));
        C2844 c28443 = this.f2911;
        if (c28443 != null && this.f2839 != null) {
            if (this.f2891 > -1 && this.f2873 != 0) {
                c28443.m6321(this.f2896.isFocused() ? ColorStateList.valueOf(this.f2838) : ColorStateList.valueOf(this.f2873));
                this.f2839.m6321(ColorStateList.valueOf(this.f2873));
            }
            invalidate();
        }
        m2429();
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m2429() {
        EditText editText = this.f2896;
        if (editText == null || this.f2865 == null) {
            return;
        }
        if ((this.f2914 || editText.getBackground() == null) && this.f2882 != 0) {
            this.f2896.setBackground(getEditTextBoxBackground());
            this.f2914 = true;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m2430(Editable editable) {
        this.f2856.getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f2850;
        if (length != 0 || this.f2915) {
            C2312 c2312 = this.f2908;
            if (c2312 == null || !this.f2881) {
                return;
            }
            c2312.setText((CharSequence) null);
            AbstractC3180.m6996(frameLayout, this.f2852);
            this.f2908.setVisibility(4);
            return;
        }
        if (this.f2908 == null || !this.f2881 || TextUtils.isEmpty(this.f2842)) {
            return;
        }
        this.f2908.setText(this.f2842);
        AbstractC3180.m6996(frameLayout, this.f2861);
        this.f2908.setVisibility(0);
        this.f2908.bringToFront();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int m2431(int i, boolean z) {
        return i - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.f2896.getCompoundPaddingRight() : this.f2894.m3984() : this.f2845.m3952());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Rect m2432(Rect rect) {
        if (this.f2896 == null) {
            throw new IllegalStateException();
        }
        boolean z = getLayoutDirection() == 1;
        int i = rect.bottom;
        Rect rect2 = this.f2879;
        rect2.bottom = i;
        int i2 = this.f2882;
        if (i2 == 1) {
            rect2.left = m2426(rect.left, z);
            rect2.top = rect.top + this.f2847;
            rect2.right = m2431(rect.right, z);
            return rect2;
        }
        if (i2 != 2) {
            rect2.left = m2426(rect.left, z);
            rect2.top = getPaddingTop();
            rect2.right = m2431(rect.right, z);
            return rect2;
        }
        rect2.left = this.f2896.getPaddingLeft() + rect.left;
        rect2.top = rect.top - m2435();
        rect2.right = rect.right - this.f2896.getPaddingRight();
        return rect2;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m2433() {
        C1336 c1336 = this.f2899;
        return (c1336.f5142 != 1 || c1336.f5156 == null || TextUtils.isEmpty(c1336.f5134)) ? false : true;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m2434() {
        Drawable background;
        C2312 c2312;
        EditText editText = this.f2896;
        if (editText == null || this.f2882 != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = AbstractC2307.f9001;
        Drawable mutate = background.mutate();
        if (m2433()) {
            mutate.setColorFilter(C2284.m5329(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f2903 && (c2312 = this.f2876) != null) {
            mutate.setColorFilter(C2284.m5329(c2312.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            mutate.clearColorFilter();
            this.f2896.refreshDrawableState();
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m2435() {
        if (this.f2872) {
            int i = this.f2882;
            C2181 c2181 = this.f2858;
            if (i == 0) {
                return (int) c2181.m5181();
            }
            if (i == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (c2181.m5181() / 2.0f);
                }
                float m5181 = c2181.m5181();
                TextPaint textPaint = c2181.f8586;
                textPaint.setTextSize(c2181.f8560);
                textPaint.setTypeface(c2181.f8588);
                textPaint.setLetterSpacing(c2181.f8599);
                return Math.max(0, (int) (m5181 - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /* renamed from: יـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2436() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m2436():boolean");
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m2437(boolean z, boolean z2) {
        ColorStateList colorStateList;
        C2312 c2312;
        boolean isEnabled = isEnabled();
        EditText editText = this.f2896;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f2896;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f2910;
        C2181 c2181 = this.f2858;
        if (colorStateList2 != null) {
            c2181.m5176(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f2910;
            c2181.m5176(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f2844) : this.f2844));
        } else if (m2433()) {
            C2312 c23122 = this.f2899.f5156;
            c2181.m5176(c23122 != null ? c23122.getTextColors() : null);
        } else if (this.f2903 && (c2312 = this.f2876) != null) {
            c2181.m5176(c2312.getTextColors());
        } else if (z4 && (colorStateList = this.f2906) != null && c2181.f8594 != colorStateList) {
            c2181.f8594 = colorStateList;
            c2181.m5171(false);
        }
        C1324 c1324 = this.f2845;
        C1329 c1329 = this.f2894;
        if (z3 || !this.f2869 || (isEnabled() && z4)) {
            if (z2 || this.f2915) {
                ValueAnimator valueAnimator = this.f2870;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f2870.cancel();
                }
                if (z && this.f2875) {
                    m2444(1.0f);
                } else {
                    c2181.m5173(1.0f);
                }
                this.f2915 = false;
                if (m2439()) {
                    m2447();
                }
                EditText editText3 = this.f2896;
                m2430(editText3 != null ? editText3.getText() : null);
                c1329.f5118 = false;
                c1329.m3985();
                c1324.f5085 = false;
                c1324.m3956();
                return;
            }
            return;
        }
        if (z2 || !this.f2915) {
            ValueAnimator valueAnimator2 = this.f2870;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f2870.cancel();
            }
            if (z && this.f2875) {
                m2444(0.0f);
            } else {
                c2181.m5173(0.0f);
            }
            if (m2439() && !((AbstractC1340) this.f2865).f5177.f5130.isEmpty() && m2439()) {
                ((AbstractC1340) this.f2865).m4009(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f2915 = true;
            C2312 c23123 = this.f2908;
            if (c23123 != null && this.f2881) {
                c23123.setText((CharSequence) null);
                AbstractC3180.m6996(this.f2850, this.f2852);
                this.f2908.setVisibility(4);
            }
            c1329.f5118 = true;
            c1329.m3985();
            c1324.f5085 = true;
            c1324.m3956();
        }
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [ˋⁱ.ʼˎ, ʽˊ.ᵎﹶ] */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m2438() {
        int i = this.f2882;
        if (i == 0) {
            this.f2865 = null;
            this.f2911 = null;
            this.f2839 = null;
        } else if (i == 1) {
            this.f2865 = new C2844(this.f2874);
            this.f2911 = new C2844();
            this.f2839 = new C2844();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(AbstractC1220.m3782(new StringBuilder(), this.f2882, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.f2872 || (this.f2865 instanceof AbstractC1340)) {
                this.f2865 = new C2844(this.f2874);
            } else {
                C2862 c2862 = this.f2874;
                int i2 = AbstractC1340.f5176;
                if (c2862 == null) {
                    c2862 = new C2862();
                }
                C1335 c1335 = new C1335(c2862, new RectF());
                ?? c2844 = new C2844(c1335);
                c2844.f5177 = c1335;
                this.f2865 = c2844;
            }
            this.f2911 = null;
            this.f2839 = null;
        }
        m2429();
        m2443();
        if (this.f2882 == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f2847 = getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.1eb);
            } else if (ⁱˊ.ᴵᵔ(getContext())) {
                this.f2847 = getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.439);
            }
        }
        m2445();
        if (this.f2882 != 0) {
            m2424();
        }
        EditText editText = this.f2896;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.f2882;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m2439() {
        return this.f2872 && !TextUtils.isEmpty(this.f2893) && (this.f2865 instanceof AbstractC1340);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m2440(C2312 c2312, int i) {
        try {
            c2312.setTextAppearance(i);
            if (c2312.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        c2312.setTextAppearance(ar.tvplayer.tv.R.style.f263112t9);
        c2312.setTextColor(getContext().getColor(ar.tvplayer.tv.R.color.18u));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, ˋⁱ.ᵔʾ] */
    /* JADX WARN: Type inference failed for: r10v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [ﹳˋ.ٴﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0, types: [ﹳˋ.ٴﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [ﹳˋ.ٴﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [ﹳˋ.ٴﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2844 m2441(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.4i5);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f2896;
        float popupElevation = editText instanceof C1321 ? ((C1321) editText).getPopupElevation() : getResources().getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.25i);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.14i);
        ?? obj = new Object();
        ?? obj2 = new Object();
        ?? obj3 = new Object();
        ?? obj4 = new Object();
        ?? obj5 = new Object();
        ?? obj6 = new Object();
        ?? obj7 = new Object();
        ?? obj8 = new Object();
        C2867 c2867 = new C2867(f);
        C2867 c28672 = new C2867(f);
        C2867 c28673 = new C2867(dimensionPixelOffset);
        C2867 c28674 = new C2867(dimensionPixelOffset);
        ?? obj9 = new Object();
        obj9.f10767 = obj;
        obj9.f10766 = obj2;
        obj9.f10759 = obj3;
        obj9.f10761 = obj4;
        obj9.f10762 = c2867;
        obj9.f10769 = c28672;
        obj9.f10764 = c28674;
        obj9.f10765 = c28673;
        obj9.f10758 = obj5;
        obj9.f10760 = obj6;
        obj9.f10763 = obj7;
        obj9.f10768 = obj8;
        EditText editText2 = this.f2896;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof C1321 ? ((C1321) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = C2844.f10649;
            dropDownBackgroundTintList = ColorStateList.valueOf(ˈ.ʼʼ(context, ʾˊ.ʾˋ(ar.tvplayer.tv.R.attr.6pf, context, C2844.class.getSimpleName())));
        }
        C2844 c2844 = new C2844();
        c2844.m6332(context);
        c2844.m6321(dropDownBackgroundTintList);
        c2844.m6327(popupElevation);
        c2844.setShapeAppearanceModel(obj9);
        C2861 c2861 = c2844.f10671;
        if (c2861.f10751 == null) {
            c2861.f10751 = new Rect();
        }
        c2844.f10671.f10751.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        c2844.invalidateSelf();
        return c2844;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m2442() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C2312 c2312 = this.f2876;
        if (c2312 != null) {
            m2440(c2312, this.f2903 ? this.f2868 : this.f2864);
            if (!this.f2903 && (colorStateList2 = this.f2854) != null) {
                this.f2876.setTextColor(colorStateList2);
            }
            if (!this.f2903 || (colorStateList = this.f2900) == null) {
                return;
            }
            this.f2876.setTextColor(colorStateList);
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m2443() {
        C2312 c2312;
        EditText editText;
        EditText editText2;
        if (this.f2865 == null || this.f2882 == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.f2896) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.f2896) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f2873 = this.f2844;
        } else if (m2433()) {
            if (this.f2886 != null) {
                m2425(z, z2);
            } else {
                this.f2873 = getErrorCurrentTextColors();
            }
        } else if (!this.f2903 || (c2312 = this.f2876) == null) {
            if (z) {
                this.f2873 = this.f2883;
            } else if (z2) {
                this.f2873 = this.f2912;
            } else {
                this.f2873 = this.f2838;
            }
        } else if (this.f2886 != null) {
            m2425(z, z2);
        } else {
            this.f2873 = c2312.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            m2446();
        }
        C1324 c1324 = this.f2845;
        TextInputLayout textInputLayout = c1324.f5078;
        CheckableImageButton checkableImageButton = c1324.f5090;
        TextInputLayout textInputLayout2 = c1324.f5078;
        c1324.m3955();
        ﹳٴ.ᵎﹶ(textInputLayout2, c1324.f5077, c1324.f5081);
        ﹳٴ.ᵎﹶ(textInputLayout2, checkableImageButton, c1324.f5093);
        if (c1324.m3962() instanceof C1338) {
            if (!textInputLayout.m2433() || checkableImageButton.getDrawable() == null) {
                ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, c1324.f5093, c1324.f5095);
            } else {
                Drawable mutate = checkableImageButton.getDrawable().mutate();
                mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(mutate);
            }
        }
        C1329 c1329 = this.f2894;
        ﹳٴ.ᵎﹶ(c1329.f5114, c1329.f5115, c1329.f5121);
        if (this.f2882 == 2) {
            int i = this.f2891;
            if (z && isEnabled()) {
                this.f2891 = this.f2849;
            } else {
                this.f2891 = this.f2877;
            }
            if (this.f2891 != i && m2439() && !this.f2915) {
                if (m2439()) {
                    ((AbstractC1340) this.f2865).m4009(0.0f, 0.0f, 0.0f, 0.0f);
                }
                m2447();
            }
        }
        if (this.f2882 == 1) {
            if (!isEnabled()) {
                this.f2843 = this.f2913;
            } else if (z2 && !z) {
                this.f2843 = this.f2866;
            } else if (z) {
                this.f2843 = this.f2846;
            } else {
                this.f2843 = this.f2907;
            }
        }
        m2428();
        if (getEndIconMode() == 3) {
            EditText editText3 = this.f2896;
            if ((editText3 instanceof AutoCompleteTextView) && editText3.getInputType() == 0) {
                getEndIconView().setFocusable(false);
                getEndIconView().setClickable(false);
            } else {
                getEndIconView().setFocusable(true);
                getEndIconView().setClickable(true);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2444(float f) {
        C2181 c2181 = this.f2858;
        if (c2181.f8611 == f) {
            return;
        }
        int i = 0;
        if (this.f2870 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f2870 = valueAnimator;
            valueAnimator.setInterpolator(ʽʽ.ـˆ(getContext(), ar.tvplayer.tv.R.attr.532, AbstractC3200.f12245));
            this.f2870.setDuration(ʽʽ.ʻٴ(getContext(), ar.tvplayer.tv.R.attr.4uq, 167));
            this.f2870.addUpdateListener(new C1344(i, this));
        }
        this.f2870.setFloatValues(c2181.f8611, f);
        this.f2870.start();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2445() {
        if (this.f2896 == null || this.f2882 != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.f2896;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.f2858.m5181() + this.f2859), this.f2896.getPaddingEnd(), getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.1su));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.f2896;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.5q0), this.f2896.getPaddingEnd(), getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.2ib));
        } else if (ⁱˊ.ᴵᵔ(getContext())) {
            EditText editText3 = this.f2896;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.5f0), this.f2896.getPaddingEnd(), getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.1su));
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m2446() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f2892;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue typedValue = ʾˊ.ʼʼ(context, ar.tvplayer.tv.R.attr.46k);
            if (typedValue != null) {
                int i = typedValue.resourceId;
                if (i != 0) {
                    colorStateList2 = AbstractC1031.m3358(context, i);
                } else {
                    int i2 = typedValue.data;
                    if (i2 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i2);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.f2896;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable mutate = this.f2896.getTextCursorDrawable().mutate();
        if ((m2433() || (this.f2876 != null && this.f2903)) && (colorStateList = this.f2890) != null) {
            colorStateList2 = colorStateList;
        }
        mutate.setTintList(colorStateList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2447() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m2447():void");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˑʿ.ʼˎ, ˑʿ.ˋᵔ, ˑʿ.ʻٴ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3145 m2448() {
        ?? abstractC3161 = new AbstractC3161();
        abstractC3161.f12030 = ʽʽ.ʻٴ(getContext(), ar.tvplayer.tv.R.attr.37r, 87);
        abstractC3161.f12036 = ʽʽ.ـˆ(getContext(), ar.tvplayer.tv.R.attr.1da, AbstractC3200.f12246);
        return abstractC3161;
    }
}
