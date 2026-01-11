package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import ar.tvplayer.tv.R;
import p011.AbstractC0869;
import p011.C0856;
import p011.C0877;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final String f1411;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final String f1412;

    /* renamed from: ˑ, reason: contains not printable characters */
    public final C0877 f1413;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.5ft, 0);
        this.f1413 = new C0877(this, 2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3705, R.attr.5ft, 0);
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
        this.f1411 = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        mo815();
        String string4 = obtainStyledAttributes.getString(8);
        this.f1412 = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        mo815();
        this.f1415 = obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʽﹳ */
    public final void mo811(View view) {
        super.mo811(view);
        if (((AccessibilityManager) this.f1350.getSystemService("accessibility")).isEnabled()) {
            m855(view.findViewById(R.id.3bb));
            m856(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m855(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f1417);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.f1411);
            switchCompat.setTextOff(this.f1412);
            switchCompat.setOnCheckedChangeListener(this.f1413);
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ */
    public final void mo813(C0856 c0856) {
        super.mo813(c0856);
        m855(c0856.m3054(R.id.3bb));
        m856(c0856.m3054(android.R.id.summary));
    }
}
