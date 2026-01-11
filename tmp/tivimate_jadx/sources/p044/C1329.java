package p044;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.parse.ٴʼ;
import p129.AbstractC2185;
import p137.C2312;
import ʻʿ.ˈ;
import ˉᵎ.ⁱˊ;
import ˑˊ.ﹳٴ;

/* renamed from: ʽˊ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1329 extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public CharSequence f5113;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final TextInputLayout f5114;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final CheckableImageButton f5115;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ImageView.ScaleType f5116;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public PorterDuff.Mode f5117;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f5118;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f5119;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2312 f5120;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ColorStateList f5121;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public View.OnLongClickListener f5122;

    public C1329(TextInputLayout textInputLayout, ٴʼ r12) {
        super(textInputLayout.getContext());
        this.f5114 = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.7dk, (ViewGroup) this, false);
        this.f5115 = checkableImageButton;
        C2312 c2312 = new C2312(getContext(), null);
        this.f5120 = c2312;
        if (ⁱˊ.ᴵᵔ(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f5122;
        checkableImageButton.setOnClickListener(null);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
        this.f5122 = null;
        checkableImageButton.setOnLongClickListener(null);
        ﹳٴ.ʼˎ(checkableImageButton, (View.OnLongClickListener) null);
        TypedArray typedArray = (TypedArray) r12.ᴵˊ;
        if (typedArray.hasValue(70)) {
            this.f5121 = ⁱˊ.יـ(getContext(), r12, 70);
        }
        if (typedArray.hasValue(71)) {
            this.f5117 = AbstractC2185.m5189(typedArray.getInt(71, -1), null);
        }
        if (typedArray.hasValue(67)) {
            m3980(r12.ˑٴ(67));
            if (typedArray.hasValue(66)) {
                m3983(typedArray.getText(66));
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.39s));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f5119) {
            this.f5119 = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(69)) {
            ImageView.ScaleType scaleType = ﹳٴ.ⁱˊ(typedArray.getInt(69, -1));
            this.f5116 = scaleType;
            checkableImageButton.setScaleType(scaleType);
        }
        c2312.setVisibility(8);
        c2312.setId(R.id.2fu);
        c2312.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        c2312.setAccessibilityLiveRegion(1);
        c2312.setTextAppearance(typedArray.getResourceId(61, 0));
        if (typedArray.hasValue(62)) {
            c2312.setTextColor(r12.ˈʿ(62));
        }
        CharSequence text = typedArray.getText(60);
        this.f5113 = TextUtils.isEmpty(text) ? null : text;
        c2312.setText(text);
        m3985();
        addView(checkableImageButton);
        addView(c2312);
        checkableImageButton.setOnFocusableChangedListener(new ˈ(10, this));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m3982();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3980(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f5115;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f5121;
            PorterDuff.Mode mode = this.f5117;
            TextInputLayout textInputLayout = this.f5114;
            ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, colorStateList, mode);
            m3981(true);
            ﹳٴ.ᵎﹶ(textInputLayout, checkableImageButton, this.f5121);
            return;
        }
        m3981(false);
        View.OnLongClickListener onLongClickListener = this.f5122;
        checkableImageButton.setOnClickListener(null);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
        this.f5122 = null;
        checkableImageButton.setOnLongClickListener(null);
        ﹳٴ.ʼˎ(checkableImageButton, (View.OnLongClickListener) null);
        m3983(null);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3981(boolean z) {
        CheckableImageButton checkableImageButton = this.f5115;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            checkableImageButton.setVisibility(z ? 0 : 8);
            m3982();
            m3985();
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3982() {
        EditText editText = this.f5114.f2896;
        if (editText == null) {
            return;
        }
        this.f5120.setPaddingRelative(this.f5115.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.74e), editText.getCompoundPaddingBottom());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3983(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f5115;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
            ﹳٴ.ﾞʻ(checkableImageButton, this.f5122, charSequence);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m3984() {
        int i;
        CheckableImageButton checkableImageButton = this.f5115;
        if (checkableImageButton.getVisibility() == 0) {
            i = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            i = 0;
        }
        return this.f5120.getPaddingStart() + getPaddingStart() + i;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3985() {
        int i = (this.f5113 == null || this.f5118) ? 8 : 0;
        setVisibility((this.f5115.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.f5120.setVisibility(i);
        this.f5114.m2436();
    }
}
