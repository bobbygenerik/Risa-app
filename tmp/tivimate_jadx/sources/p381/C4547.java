package p381;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.leanback.widget.C0144;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p005.C0820;
import p005.C0829;
import p005.C0833;
import p137.AbstractC2305;
import p137.C2328;
import ʽٴ.ˈ;
import ˈˋ.ʾˊ;
import ᴵˋ.ˊʻ;

/* renamed from: ⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4547 extends C2328 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int[] f17037;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public Drawable f17038;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public ColorStateList f17039;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public CompoundButton.OnCheckedChangeListener f17040;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C4549 f17041;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f17042;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final LinkedHashSet f17043;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f17044;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public PorterDuff.Mode f17045;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public ColorStateList f17046;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f17047;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f17048;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ColorStateList f17049;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C0833 f17050;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final LinkedHashSet f17051;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public CharSequence f17052;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f17053;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public Drawable f17054;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f17055;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public CharSequence f17056;

    /* renamed from: ʿ, reason: contains not printable characters */
    public static final int[] f17033 = {R.attr.22p};

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final int[] f17034 = {R.attr.63e};

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static final int[][] f17036 = {new int[]{android.R.attr.state_enabled, R.attr.63e}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static final int f17035 = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* JADX WARN: Removed duplicated region for block: B:13:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4547(android.content.Context r13, android.util.AttributeSet r14) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p381.C4547.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private String getButtonStateDescription() {
        int i = this.f17044;
        return i == 1 ? getResources().getString(R.string.5hk) : i == 0 ? getResources().getString(R.string.48b) : getResources().getString(R.string.3pf);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f17049 == null) {
            int i = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.46k));
            int i2 = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.5oi));
            int i3 = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.6pf));
            int i4 = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.3nl));
            this.f17049 = new ColorStateList(f17036, new int[]{ˈ.ˏי(1.0f, i3, i2), ˈ.ˏי(1.0f, i3, i), ˈ.ˏי(0.54f, i3, i4), ˈ.ˏי(0.38f, i3, i4), ˈ.ˏי(0.38f, i3, i4)});
        }
        return this.f17049;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f17039;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.f17054;
    }

    public Drawable getButtonIconDrawable() {
        return this.f17038;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f17046;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f17045;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f17039;
    }

    public int getCheckedState() {
        return this.f17044;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f17052;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f17044 == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f17042 && this.f17039 == null && this.f17046 == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] copyOf;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f17033);
        }
        if (this.f17048) {
            View.mergeDrawableStates(onCreateDrawableState, f17034);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= onCreateDrawableState.length) {
                copyOf = Arrays.copyOf(onCreateDrawableState, onCreateDrawableState.length + 1);
                copyOf[onCreateDrawableState.length] = 16842912;
                break;
            }
            int i3 = onCreateDrawableState[i2];
            if (i3 == 16842912) {
                copyOf = onCreateDrawableState;
                break;
            }
            if (i3 == 0) {
                copyOf = (int[]) onCreateDrawableState.clone();
                copyOf[i2] = 16842912;
                break;
            }
            i2++;
        }
        this.f17037 = copyOf;
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f17053 || !TextUtils.isEmpty(getText()) || (buttonDrawable = getButtonDrawable()) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f17048) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f17052));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4548)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4548 c4548 = (C4548) parcelable;
        super.onRestoreInstanceState(c4548.getSuperState());
        setCheckedState(c4548.f17057);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, ⁱ.ⁱˊ] */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.f17057 = getCheckedState();
        return baseSavedState;
    }

    @Override // p137.C2328, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    @Override // p137.C2328, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.f17054 = drawable;
        this.f17055 = false;
        m9119();
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f17038 = drawable;
        m9119();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f17046 == colorStateList) {
            return;
        }
        this.f17046 = colorStateList;
        m9119();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.f17045 == mode) {
            return;
        }
        this.f17045 = mode;
        m9119();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f17039 == colorStateList) {
            return;
        }
        this.f17039 = colorStateList;
        m9119();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        m9119();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.f17053 = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f17044 != i) {
            this.f17044 = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && this.f17056 == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f17047) {
                return;
            }
            this.f17047 = true;
            LinkedHashSet linkedHashSet = this.f17043;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw AbstractC2305.m5372(it);
                }
            }
            if (this.f17044 != 2 && (onCheckedChangeListener = this.f17040) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i2 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f17047 = false;
        }
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f17052 = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void setErrorShown(boolean z) {
        if (this.f17048 == z) {
            return;
        }
        this.f17048 = z;
        refreshDrawableState();
        Iterator it = this.f17051.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f17040 = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f17056 = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f17042 = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9119() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C0144 c0144;
        Drawable drawable = this.f17054;
        ColorStateList colorStateList3 = this.f17039;
        PorterDuff.Mode buttonTintMode = getButtonTintMode();
        if (drawable == null) {
            drawable = null;
        } else if (colorStateList3 != null) {
            drawable = drawable.mutate();
            if (buttonTintMode != null) {
                drawable.setTintMode(buttonTintMode);
            }
        }
        this.f17054 = drawable;
        Drawable drawable2 = this.f17038;
        ColorStateList colorStateList4 = this.f17046;
        PorterDuff.Mode mode = this.f17045;
        if (drawable2 == null) {
            drawable2 = null;
        } else if (colorStateList4 != null) {
            drawable2 = drawable2.mutate();
            if (mode != null) {
                drawable2.setTintMode(mode);
            }
        }
        this.f17038 = drawable2;
        if (this.f17055) {
            C0833 c0833 = this.f17050;
            if (c0833 != null) {
                C0820 c0820 = c0833.f3570;
                Drawable drawable3 = c0833.f3480;
                C4549 c4549 = this.f17041;
                if (drawable3 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable3;
                    if (c4549.f17059 == null) {
                        c4549.f17059 = new C0829(c4549);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(c4549.f17059);
                }
                ArrayList arrayList = c0833.f3571;
                if (arrayList != null && c4549 != null) {
                    arrayList.remove(c4549);
                    if (c0833.f3571.size() == 0 && (c0144 = c0833.f3568) != null) {
                        c0820.f3497.removeListener(c0144);
                        c0833.f3568 = null;
                    }
                }
                Drawable drawable4 = c0833.f3480;
                if (drawable4 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable4;
                    if (c4549.f17059 == null) {
                        c4549.f17059 = new C0829(c4549);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(c4549.f17059);
                } else if (c4549 != null) {
                    if (c0833.f3571 == null) {
                        c0833.f3571 = new ArrayList();
                    }
                    if (!c0833.f3571.contains(c4549)) {
                        c0833.f3571.add(c4549);
                        if (c0833.f3568 == null) {
                            c0833.f3568 = new C0144(1, c0833);
                        }
                        c0820.f3497.addListener(c0833.f3568);
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable5 = this.f17054;
                if ((drawable5 instanceof AnimatedStateListDrawable) && c0833 != null) {
                    ((AnimatedStateListDrawable) drawable5).addTransition(R.id.2sr, R.id.2ia, c0833, false);
                    ((AnimatedStateListDrawable) this.f17054).addTransition(R.id.32l, R.id.2ia, c0833, false);
                }
            }
        }
        Drawable drawable6 = this.f17054;
        if (drawable6 != null && (colorStateList2 = this.f17039) != null) {
            drawable6.setTintList(colorStateList2);
        }
        Drawable drawable7 = this.f17038;
        if (drawable7 != null && (colorStateList = this.f17046) != null) {
            drawable7.setTintList(colorStateList);
        }
        Drawable drawable8 = this.f17054;
        Drawable drawable9 = this.f17038;
        if (drawable8 == null) {
            drawable8 = drawable9;
        } else if (drawable9 != null) {
            int intrinsicWidth = drawable9.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable8.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable9.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable8.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable8.getIntrinsicWidth() || intrinsicHeight > drawable8.getIntrinsicHeight()) {
                float f = intrinsicWidth / intrinsicHeight;
                if (f >= drawable8.getIntrinsicWidth() / drawable8.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable8.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable8.getIntrinsicHeight();
                    intrinsicWidth = (int) (f * intrinsicHeight);
                }
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable8, drawable9});
            layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
            layerDrawable.setLayerGravity(1, 17);
            drawable8 = layerDrawable;
        }
        super.setButtonDrawable(drawable8);
        refreshDrawableState();
    }
}
