package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.leanback.widget.C0097;
import com.parse.ٴʼ;
import java.util.WeakHashMap;
import p021.AbstractC1031;
import p137.AbstractC2257;
import p137.AbstractC2281;
import p137.AbstractC2307;
import p137.C2289;
import p137.C2297;
import p137.C2315;
import p186.AbstractC2823;
import p186.C2770;
import p275.C3508;
import p350.AbstractC4295;
import p448.C5358;
import ᴵˋ.ˊʻ;
import ﹳˋ.ٴﹶ;
import ﹳٴ.ﹳٴ;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public StaticLayout f161;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public int f162;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f163;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public PorterDuff.Mode f164;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final Rect f165;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Drawable f166;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final int f167;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public float f168;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f169;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public CharSequence f170;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final TextPaint f171;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f172;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public float f173;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final VelocityTracker f174;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public PorterDuff.Mode f175;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Drawable f176;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public CharSequence f177;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public int f178;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public CharSequence f179;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public int f180;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final C5358 f181;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public CharSequence f182;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f183;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public C2289 f184;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f185;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f186;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ColorStateList f187;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public ObjectAnimator f188;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public int f189;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f190;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public int f191;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ColorStateList f192;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public float f193;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f194;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public C2297 f195;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f196;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f197;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f198;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f199;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f200;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final int f201;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public StaticLayout f202;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final ColorStateList f203;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public static final C0097 f160 = new C0097(Float.class, "thumbPos", 4);

    /* renamed from: י, reason: contains not printable characters */
    public static final int[] f159 = {R.attr.state_checked};

    /* JADX WARN: Type inference failed for: r14v11, types: [java.lang.Object, ﾞʻ.ﹳٴ] */
    public SwitchCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ar.tvplayer.tv.R.attr.5pa);
        int resourceId;
        this.f192 = null;
        this.f164 = null;
        this.f172 = false;
        this.f194 = false;
        this.f187 = null;
        this.f175 = null;
        this.f198 = false;
        this.f186 = false;
        this.f174 = VelocityTracker.obtain();
        this.f185 = true;
        this.f165 = new Rect();
        AbstractC2281.m5326(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.f171 = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = AbstractC4295.f15898;
        ٴʼ r10 = ٴʼ.ʿᵢ(ar.tvplayer.tv.R.attr.5pa, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) r10.ᴵˊ;
        AbstractC2823.m6282(this, context, iArr, attributeSet, typedArray, ar.tvplayer.tv.R.attr.5pa);
        Drawable drawable = r10.ˑٴ(2);
        this.f166 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = r10.ˑٴ(11);
        this.f176 = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        setTextOnInternal(typedArray.getText(0));
        setTextOffInternal(typedArray.getText(1));
        this.f163 = typedArray.getBoolean(3, true);
        this.f196 = typedArray.getDimensionPixelSize(8, 0);
        this.f199 = typedArray.getDimensionPixelSize(5, 0);
        this.f169 = typedArray.getDimensionPixelSize(6, 0);
        this.f200 = typedArray.getBoolean(4, false);
        ColorStateList colorStateList = r10.ˈʿ(9);
        if (colorStateList != null) {
            this.f192 = colorStateList;
            this.f172 = true;
        }
        PorterDuff.Mode m5386 = AbstractC2307.m5386(typedArray.getInt(10, -1), null);
        if (this.f164 != m5386) {
            this.f164 = m5386;
            this.f194 = true;
        }
        if (this.f172 || this.f194) {
            m62();
        }
        ColorStateList colorStateList2 = r10.ˈʿ(12);
        if (colorStateList2 != null) {
            this.f187 = colorStateList2;
            this.f198 = true;
        }
        PorterDuff.Mode m53862 = AbstractC2307.m5386(typedArray.getInt(13, -1), null);
        if (this.f175 != m53862) {
            this.f175 = m53862;
            this.f186 = true;
        }
        if (this.f198 || this.f186) {
            m61();
        }
        int resourceId2 = typedArray.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId2, AbstractC4295.f15913);
            ColorStateList colorStateList3 = (!obtainStyledAttributes.hasValue(3) || (resourceId = obtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList3 = AbstractC1031.m3358(context, resourceId)) == null) ? obtainStyledAttributes.getColorStateList(3) : colorStateList3;
            if (colorStateList3 != null) {
                this.f203 = colorStateList3;
            } else {
                this.f203 = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i = obtainStyledAttributes.getInt(1, -1);
            int i2 = obtainStyledAttributes.getInt(2, -1);
            Typeface typeface = i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            if (i2 > 0) {
                Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
                setSwitchTypeface(defaultFromStyle);
                int i3 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i2;
                textPaint.setFakeBoldText((i3 & 1) != 0);
                textPaint.setTextSkewX((2 & i3) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (obtainStyledAttributes.getBoolean(14, false)) {
                Context context2 = getContext();
                ?? obj = new Object();
                obj.f20393 = context2.getResources().getConfiguration().locale;
                this.f181 = obj;
            } else {
                this.f181 = null;
            }
            setTextOnInternal(this.f170);
            setTextOffInternal(this.f179);
            obtainStyledAttributes.recycle();
        }
        new C2315(this).m5415(attributeSet, ar.tvplayer.tv.R.attr.5pa);
        r10.ᐧᴵ();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f201 = viewConfiguration.getScaledTouchSlop();
        this.f167 = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().m5346(attributeSet, ar.tvplayer.tv.R.attr.5pa);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f195 == null) {
            this.f195 = new C2297(this);
        }
        return this.f195;
    }

    private boolean getTargetCheckedState() {
        return this.f168 > 0.5f;
    }

    private int getThumbOffset() {
        boolean z = AbstractC2257.f8861;
        return (int) (((getLayoutDirection() == 1 ? 1.0f - this.f168 : this.f168) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f176;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f165;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f166;
        Rect m5387 = drawable2 != null ? AbstractC2307.m5387(drawable2) : AbstractC2307.f8999;
        return ((((this.f197 - this.f189) - rect.left) - rect.right) - m5387.left) - m5387.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f179 = charSequence;
        TransformationMethod transformationMethod = ((ٴﹶ) getEmojiTextViewHelper().f8978.ᴵˊ).ˆﾞ(this.f181);
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        this.f177 = charSequence;
        this.f161 = null;
        if (this.f163) {
            m60();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f170 = charSequence;
        TransformationMethod transformationMethod = ((ٴﹶ) getEmojiTextViewHelper().f8978.ᴵˊ).ˆﾞ(this.f181);
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        this.f182 = charSequence;
        this.f202 = null;
        if (this.f163) {
            m60();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = this.f180;
        int i4 = this.f191;
        int i5 = this.f162;
        int i6 = this.f178;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f166;
        Rect m5387 = drawable != null ? AbstractC2307.m5387(drawable) : AbstractC2307.f8999;
        Drawable drawable2 = this.f176;
        Rect rect = this.f165;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (m5387 != null) {
                int i8 = m5387.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = m5387.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = m5387.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = m5387.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.f176.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.f176.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f166;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.f189 + rect.right;
            this.f166.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f166;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.f176;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f166;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f176;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z = AbstractC2257.f8861;
        if (getLayoutDirection() != 1) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f197;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f169 : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z = AbstractC2257.f8861;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f197;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f169 : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return ﹳٴ.ᴵˑ(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f163;
    }

    public boolean getSplitTrack() {
        return this.f200;
    }

    public int getSwitchMinWidth() {
        return this.f199;
    }

    public int getSwitchPadding() {
        return this.f169;
    }

    public CharSequence getTextOff() {
        return this.f179;
    }

    public CharSequence getTextOn() {
        return this.f170;
    }

    public Drawable getThumbDrawable() {
        return this.f166;
    }

    public final float getThumbPosition() {
        return this.f168;
    }

    public int getThumbTextPadding() {
        return this.f196;
    }

    public ColorStateList getThumbTintList() {
        return this.f192;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f164;
    }

    public Drawable getTrackDrawable() {
        return this.f176;
    }

    public ColorStateList getTrackTintList() {
        return this.f187;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f175;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f166;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f176;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f188;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f188.end();
        this.f188 = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f159);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f176;
        Rect rect = this.f165;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.f191;
        int i2 = this.f178;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f166;
        if (drawable != null) {
            if (!this.f200 || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m5387 = AbstractC2307.m5387(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m5387.left;
                rect.right -= m5387.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f202 : this.f161;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            TextPaint textPaint = this.f171;
            ColorStateList colorStateList = this.f203;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f170 : this.f179;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        int i9 = 0;
        if (this.f166 != null) {
            Drawable drawable = this.f176;
            Rect rect = this.f165;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m5387 = AbstractC2307.m5387(this.f166);
            i5 = Math.max(0, m5387.left - rect.left);
            i9 = Math.max(0, m5387.right - rect.right);
        } else {
            i5 = 0;
        }
        boolean z2 = AbstractC2257.f8861;
        if (getLayoutDirection() == 1) {
            i6 = getPaddingLeft() + i5;
            width = ((this.f197 + i6) - i5) - i9;
        } else {
            width = (getWidth() - getPaddingRight()) - i9;
            i6 = (width - this.f197) + i5 + i9;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i10 = this.f190;
            int i11 = height - (i10 / 2);
            i7 = i10 + i11;
            i8 = i11;
        } else if (gravity != 80) {
            i8 = getPaddingTop();
            i7 = this.f190 + i8;
        } else {
            i7 = getHeight() - getPaddingBottom();
            i8 = i7 - this.f190;
        }
        this.f180 = i6;
        this.f191 = i8;
        this.f178 = i7;
        this.f162 = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (this.f163) {
            StaticLayout staticLayout = this.f202;
            TextPaint textPaint = this.f171;
            if (staticLayout == null) {
                CharSequence charSequence = this.f182;
                this.f202 = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f161 == null) {
                CharSequence charSequence2 = this.f177;
                this.f161 = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f166;
        Rect rect = this.f165;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.f166.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f166.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.f189 = Math.max(this.f163 ? (this.f196 * 2) + Math.max(this.f202.getWidth(), this.f161.getWidth()) : 0, i3);
        Drawable drawable2 = this.f176;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f176.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f166;
        if (drawable3 != null) {
            Rect m5387 = AbstractC2307.m5387(drawable3);
            i6 = Math.max(i6, m5387.left);
            i7 = Math.max(i7, m5387.right);
        }
        int max = this.f185 ? Math.max(this.f199, (this.f189 * 2) + i6 + i7) : this.f199;
        int max2 = Math.max(i5, i4);
        this.f197 = max;
        this.f190 = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f170 : this.f179;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if (r1 != 3) goto L82;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m5344(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object obj = this.f170;
                if (obj == null) {
                    obj = getResources().getString(ar.tvplayer.tv.R.string.16f);
                }
                Object obj2 = obj;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                new C2770(ar.tvplayer.tv.R.id.63q, CharSequence.class, 64, 30, 2).m5093(this, obj2);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object obj3 = this.f179;
            if (obj3 == null) {
                obj3 = getResources().getString(ar.tvplayer.tv.R.string.4m7);
            }
            Object obj4 = obj3;
            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
            new C2770(ar.tvplayer.tv.R.id.63q, CharSequence.class, 64, 30, 2).m5093(this, obj4);
        }
        if (getWindowToken() == null || !isLaidOut()) {
            ObjectAnimator objectAnimator = this.f188;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f160, isChecked ? 1.0f : 0.0f);
        this.f188 = ofFloat;
        ofFloat.setDuration(250L);
        this.f188.setAutoCancel(true);
        this.f188.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ˉـ(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m5345(z);
        setTextOnInternal(this.f170);
        setTextOffInternal(this.f179);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z) {
        this.f185 = z;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m5347(inputFilterArr));
    }

    public void setShowText(boolean z) {
        if (this.f163 != z) {
            this.f163 = z;
            requestLayout();
            if (z) {
                m60();
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.f200 = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f199 = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f169 = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f171;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object obj = this.f179;
        if (obj == null) {
            obj = getResources().getString(ar.tvplayer.tv.R.string.4m7);
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        new C2770(ar.tvplayer.tv.R.id.63q, CharSequence.class, 64, 30, 2).m5093(this, obj);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object obj = this.f170;
        if (obj == null) {
            obj = getResources().getString(ar.tvplayer.tv.R.string.16f);
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        new C2770(ar.tvplayer.tv.R.id.63q, CharSequence.class, 64, 30, 2).m5093(this, obj);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f166;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f166 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f168 = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f196 = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f192 = colorStateList;
        this.f172 = true;
        m62();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f164 = mode;
        this.f194 = true;
        m62();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f176;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f176 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f187 = colorStateList;
        this.f198 = true;
        m61();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f175 = mode;
        this.f186 = true;
        m61();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f166 || drawable == this.f176;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m59() {
        setTextOnInternal(this.f170);
        setTextOffInternal(this.f179);
        requestLayout();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m60() {
        if (this.f184 == null && ((ٴﹶ) this.f195.f8978.ᴵˊ).ʾˋ() && C3508.f13826 != null) {
            C3508 m7473 = C3508.m7473();
            int m7477 = m7473.m7477();
            if (m7477 == 3 || m7477 == 0) {
                C2289 c2289 = new C2289(this);
                this.f184 = c2289;
                m7473.m7478(c2289);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m61() {
        Drawable drawable = this.f176;
        if (drawable != null) {
            if (this.f198 || this.f186) {
                Drawable mutate = drawable.mutate();
                this.f176 = mutate;
                if (this.f198) {
                    mutate.setTintList(this.f187);
                }
                if (this.f186) {
                    this.f176.setTintMode(this.f175);
                }
                if (this.f176.isStateful()) {
                    this.f176.setState(getDrawableState());
                }
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m62() {
        Drawable drawable = this.f166;
        if (drawable != null) {
            if (this.f172 || this.f194) {
                Drawable mutate = drawable.mutate();
                this.f166 = mutate;
                if (this.f172) {
                    mutate.setTintList(this.f192);
                }
                if (this.f194) {
                    this.f166.setTintMode(this.f164);
                }
                if (this.f166.isStateful()) {
                    this.f166.setState(getDrawableState());
                }
            }
        }
    }
}
