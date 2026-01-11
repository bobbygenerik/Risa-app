package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.C0661;
import com.google.android.material.timepicker.C0682;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p129.AbstractC2185;
import p184.AbstractC2764;
import p186.AbstractC2823;
import p188.C2865;
import p188.C2867;
import p259.AbstractC3399;
import p283.AbstractC3566;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends AbstractC3566 {

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ int f2656 = 0;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f2657;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f2658;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public HashSet f2659;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f2660;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final LinkedHashSet f2661;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f2662;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, R.attr.3rh, R.style.f26781253), attributeSet);
        this.f2661 = new LinkedHashSet();
        this.f2657 = false;
        this.f2659 = new HashSet();
        TypedArray m5186 = AbstractC2185.m5186(getContext(), attributeSet, AbstractC3399.f13282, R.attr.3rh, R.style.f26781253, new int[0]);
        setSingleSelection(m5186.getBoolean(7, false));
        this.f2660 = m5186.getResourceId(2, -1);
        this.f2658 = m5186.getBoolean(4, false);
        if (this.f13926 == null) {
            this.f13926 = C2865.m6369(new C2867(0.0f));
        }
        setEnabled(m5186.getBoolean(0, true));
        m5186.recycle();
        setImportantForAccessibility(1);
    }

    private String getChildrenA11yClassName() {
        return (this.f2662 ? RadioButton.class : ToggleButton.class).getName();
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && getChildAt(i2).getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // p283.AbstractC3566, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setupButtonChild(materialButton);
            m2373(materialButton.getId(), materialButton.f2632);
            AbstractC2823.m6273(materialButton, new C0661(4, this));
        }
    }

    public int getCheckedButtonId() {
        if (!this.f2662 || this.f2659.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f2659.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            if (this.f2659.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f2660;
        if (i != -1) {
            m2372(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getVisibleButtonCount(), false, this.f2662 ? 1 : 2));
    }

    public void setSelectionRequired(boolean z) {
        this.f2658 = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f2662 != z) {
            this.f2662 = z;
            m2372(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setA11yClassName(childrenA11yClassName);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m2372(Set set) {
        HashSet hashSet = this.f2659;
        this.f2659 = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.f2657 = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.f2657 = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.f2661.iterator();
                while (it.hasNext()) {
                    ((C0682) it.next()).m2460();
                }
            }
        }
        invalidate();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m2373(int i, boolean z) {
        if (i == -1) {
            String str = "Button ID is not valid: " + i;
            return;
        }
        HashSet hashSet = new HashSet(this.f2659);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.f2662 && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.f2658 || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        m2372(hashSet);
    }
}
