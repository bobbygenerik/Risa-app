package androidx.preference;

import android.R;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import p011.C0856;
import p011.C0877;

/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: ˑ, reason: contains not printable characters */
    public final C0877 f1327;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CheckBoxPreference(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = 2130968802(0x7f0400e2, float:1.7546268E38)
            r1 = 16842895(0x101008f, float:2.369396E-38)
            int r0 = p143.AbstractC2392.m5495(r5, r0, r1)
            r1 = 0
            r4.<init>(r5, r6, r0, r1)
            ʻᐧ.ﹳٴ r2 = new ʻᐧ.ﹳٴ
            r3 = 0
            r2.<init>(r4, r3)
            r4.f1327 = r2
            int[] r2 = p011.AbstractC0869.f3710
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r2, r0, r1)
            r6 = 5
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L27
            java.lang.String r6 = r5.getString(r1)
        L27:
            r4.f1414 = r6
            boolean r6 = r4.f1417
            if (r6 == 0) goto L30
            r4.mo815()
        L30:
            r6 = 4
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L3c
            r6 = 1
            java.lang.String r6 = r5.getString(r6)
        L3c:
            r4.f1418 = r6
            boolean r6 = r4.f1417
            if (r6 != 0) goto L45
            r4.mo815()
        L45:
            r6 = 2
            boolean r6 = r5.getBoolean(r6, r1)
            r0 = 3
            boolean r6 = r5.getBoolean(r0, r6)
            r4.f1415 = r6
            r5.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.CheckBoxPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo811(View view) {
        super.mo811(view);
        if (((AccessibilityManager) this.f1350.getSystemService("accessibility")).isEnabled()) {
            m812(view.findViewById(R.id.checkbox));
            m856(view.findViewById(R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m812(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f1417);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f1327);
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo813(C0856 c0856) {
        super.mo813(c0856);
        m812(c0856.m3054(R.id.checkbox));
        m856(c0856.m3054(R.id.summary));
    }
}
