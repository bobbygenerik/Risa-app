package p044;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import ar.tvplayer.tv.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import java.util.Locale;
import p129.AbstractC2185;
import p137.C2254;
import p137.C2268;
import p184.AbstractC2764;
import p188.C2844;
import p259.AbstractC3399;
import ˉᵎ.ⁱˊ;

/* renamed from: ʽˊ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1321 extends C2268 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f5064;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AccessibilityManager f5065;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public ColorStateList f5066;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Rect f5067;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2254 f5068;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f5069;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final float f5070;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public ColorStateList f5071;

    public C1321(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, R.attr.136, 0), attributeSet);
        this.f5067 = new Rect();
        Context context2 = getContext();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13272, R.attr.136, R.style.f2662468u, new int[0]);
        if (m5186.hasValue(0) && m5186.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f5064 = m5186.getResourceId(3, R.layout.2li);
        this.f5070 = m5186.getDimensionPixelOffset(1, R.dimen.5c7);
        if (m5186.hasValue(2)) {
            this.f5066 = ColorStateList.valueOf(m5186.getColor(2, 0));
        }
        this.f5069 = m5186.getColor(4, 0);
        this.f5071 = ⁱˊ.ﹳᐧ(context2, m5186, 5);
        this.f5065 = (AccessibilityManager) context2.getSystemService("accessibility");
        C2254 c2254 = new C2254(context2, null, R.attr.oh, 0);
        this.f5068 = c2254;
        c2254.f8834 = true;
        c2254.f8835.setFocusable(true);
        c2254.f8837 = this;
        c2254.f8835.setInputMethodMode(2);
        c2254.mo5270(getAdapter());
        c2254.f8845 = new C1334(0, this);
        if (m5186.hasValue(6)) {
            setSimpleItems(m5186.getResourceId(6, 0));
        }
        m5186.recycle();
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        if (m3949()) {
            this.f5068.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.f5066;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout m3950 = m3950();
        return (m3950 == null || !m3950.f2841) ? super.getHint() : m3950.getHint();
    }

    public float getPopupElevation() {
        return this.f5070;
    }

    public int getSimpleItemSelectedColor() {
        return this.f5069;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f5071;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m3950 = m3950();
        if (m3950 != null && m3950.f2841 && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("meizu")) {
                setHint("");
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5068.dismiss();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = i == 66 || i == 23;
        boolean z2 = i == 62;
        if (getKeyListener() == null ? !(z || z2) : !(z && getMaxLines() == 1)) {
            return super.onKeyDown(i, keyEvent);
        }
        TextInputLayout m3950 = m3950();
        if (m3950 != null) {
            m3950.getEndIconView().performClick();
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout m3950 = m3950();
            int i3 = 0;
            if (adapter != null && m3950 != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                C2254 c2254 = this.f5068;
                int min = Math.min(adapter.getCount(), Math.max(0, !c2254.f8835.isShowing() ? -1 : c2254.f8832.getSelectedItemPosition()) + 15);
                View view = null;
                int i4 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i3) {
                        view = null;
                        i3 = itemViewType;
                    }
                    view = adapter.getView(max, view, m3950);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i4 = Math.max(i4, view.getMeasuredWidth());
                }
                Drawable background = c2254.f8835.getBackground();
                if (background != null) {
                    Rect rect = this.f5067;
                    background.getPadding(rect);
                    i4 += rect.left + rect.right;
                }
                i3 = m3950.getEndIconView().getMeasuredWidth() + i4;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i3), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        if (m3949()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f5068.mo5270(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        C2254 c2254 = this.f5068;
        if (c2254 != null) {
            c2254.m5269(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.f5066 = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof C2844) {
            ((C2844) dropDownBackground).m6321(this.f5066);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f5068.f8844 = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i) {
        super.setRawInputType(i);
        TextInputLayout m3950 = m3950();
        if (m3950 != null) {
            m3950.m2429();
        }
    }

    public void setSimpleItemSelectedColor(int i) {
        this.f5069 = i;
        if (getAdapter() instanceof C1327) {
            ((C1327) getAdapter()).m3978();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.f5071 = colorStateList;
        if (getAdapter() instanceof C1327) {
            ((C1327) getAdapter()).m3978();
        }
    }

    public void setSimpleItems(int i) {
        setSimpleItems(getResources().getStringArray(i));
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new C1327(this, getContext(), this.f5064, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (m3949()) {
            this.f5068.mo5273();
        } else {
            super.showDropDown();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m3949() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f5065;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) == null) {
            return false;
        }
        for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
            if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final TextInputLayout m3950() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }
}
