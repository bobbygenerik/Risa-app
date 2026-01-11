package p137;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import p012.C0882;
import p415.InterfaceC4927;
import ﹳٴ.ﹳٴ;

/* renamed from: ˉˆ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2240 extends Button implements InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2297 f8777;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f8778;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2315 f8779;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2240(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC2339.m5434(context);
        AbstractC2281.m5326(getContext(), this);
        C0882 c0882 = new C0882(this);
        this.f8778 = c0882;
        c0882.m3123(attributeSet, i);
        C2315 c2315 = new C2315(this);
        this.f8779 = c2315;
        c2315.m5415(attributeSet, i);
        c2315.m5412();
        getEmojiTextViewHelper().m5346(attributeSet, i);
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f8777 == null) {
            this.f8777 = new C2297(this);
        }
        return this.f8777;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeMaxTextSize();
        }
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
        return c2315 != null ? c2315.f9040.f8913 : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (AbstractC2257.f8859) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            return c2315.f9040.f8912;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return ﹳٴ.ᴵˑ(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f8779.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f8779.m5408();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C2315 c2315 = this.f8779;
        if (c2315 == null || AbstractC2257.f8859) {
            return;
        }
        c2315.f9040.m5318();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
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
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            c2315.m5409(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            c0882.m3117(i);
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

    public void setSupportAllCaps(boolean z) {
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            c2315.f9050.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f8778;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f8779;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f8779;
        c2315.m5407(mode);
        c2315.m5412();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            c2315.m5410(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = AbstractC2257.f8859;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C2315 c2315 = this.f8779;
        if (c2315 != null) {
            C2274 c2274 = c2315.f9040;
            if (z || c2274.m5319()) {
                return;
            }
            c2274.m5316(i, f);
        }
    }
}
