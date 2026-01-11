package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
import ar.tvplayer.tv.R;
import p011.AbstractC0869;
import p011.C0856;
import p011.C0877;
import p143.AbstractC2392;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final String f1408;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final String f1409;

    /* renamed from: ˑ, reason: contains not printable characters */
    public final C0877 f1410;

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, AbstractC2392.m5495(context, R.attr.1o, android.R.attr.switchPreferenceStyle), 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f1410 = new C0877(this, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3712, i, i2);
        String string = obtainStyledAttributes.getString(7);
        this.f1414 = string == null ? obtainStyledAttributes.getString(0) : string;
        if (this.f1417) {
            mo815();
        }
        String string2 = obtainStyledAttributes.getString(6);
        this.f1418 = string2 == null ? obtainStyledAttributes.getString(1) : string2;
        if (!this.f1417) {
            mo815();
        }
        String string3 = obtainStyledAttributes.getString(9);
        this.f1408 = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        mo815();
        String string4 = obtainStyledAttributes.getString(8);
        this.f1409 = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        mo815();
        this.f1415 = obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʽﹳ */
    public final void mo811(View view) {
        super.mo811(view);
        if (((AccessibilityManager) this.f1350.getSystemService("accessibility")).isEnabled()) {
            m854(view.findViewById(android.R.id.switch_widget));
            m856(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m854(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f1417);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.f1408);
            r4.setTextOff(this.f1409);
            r4.setOnCheckedChangeListener(this.f1410);
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ */
    public void mo813(C0856 c0856) {
        super.mo813(c0856);
        m854(c0856.m3054(android.R.id.switch_widget));
        m856(c0856.m3054(android.R.id.summary));
    }
}
