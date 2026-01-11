package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import p011.AbstractC0864;
import p011.AbstractC0869;
import p011.C0859;
import p011.C0868;
import p011.C0873;
import p053.AbstractC1436;
import p143.AbstractC2392;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3137;
import p229.DialogInterfaceOnCancelListenerC3073;

/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final String f1328;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final String f1329;

    /* renamed from: ˑ, reason: contains not printable characters */
    public final int f1330;

    /* renamed from: י, reason: contains not printable characters */
    public final String f1331;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public CharSequence f1332;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final Drawable f1333;

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, AbstractC2392.m5495(context, R.attr.477, android.R.attr.dialogPreferenceStyle));
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3702, i, 0);
        String string = obtainStyledAttributes.getString(9);
        string = string == null ? obtainStyledAttributes.getString(0) : string;
        this.f1332 = string;
        if (string == null) {
            this.f1332 = this.f1381;
        }
        String string2 = obtainStyledAttributes.getString(8);
        this.f1328 = string2 == null ? obtainStyledAttributes.getString(1) : string2;
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.f1333 = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        String string3 = obtainStyledAttributes.getString(11);
        this.f1331 = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        String string4 = obtainStyledAttributes.getString(10);
        this.f1329 = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        this.f1330 = obtainStyledAttributes.getResourceId(7, obtainStyledAttributes.getResourceId(5, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void mo814() {
        DialogInterfaceOnCancelListenerC3073 c0868;
        AbstractC0864 abstractC0864 = this.f1375.f3636;
        if (abstractC0864 != null) {
            boolean m4202 = abstractC0864.mo3062() instanceof AbstractC1436 ? ((AbstractC1436) abstractC0864.mo3062()).m4202(abstractC0864, this) : false;
            for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = abstractC0864; !m4202 && abstractComponentCallbacksC3123 != null; abstractComponentCallbacksC3123 = abstractComponentCallbacksC3123.f11928) {
                if (abstractComponentCallbacksC3123 instanceof AbstractC1436) {
                    m4202 = ((AbstractC1436) abstractComponentCallbacksC3123).m4202(abstractC0864, this);
                }
            }
            if (!m4202) {
                abstractC0864.mo4203();
            }
            if (!m4202) {
                abstractC0864.m6803();
            }
            if (!m4202 && abstractC0864.m6805().m6697("androidx.preference.PreferenceFragment.DIALOG") == null) {
                if (this instanceof EditTextPreference) {
                    String str = this.f1353;
                    c0868 = new C0859();
                    Bundle bundle = new Bundle(1);
                    bundle.putString("key", str);
                    c0868.m6807(bundle);
                } else if (this instanceof ListPreference) {
                    String str2 = this.f1353;
                    c0868 = new C0873();
                    Bundle bundle2 = new Bundle(1);
                    bundle2.putString("key", str2);
                    c0868.m6807(bundle2);
                } else {
                    if (!(this instanceof MultiSelectListPreference)) {
                        throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                    }
                    String str3 = this.f1353;
                    c0868 = new C0868();
                    Bundle bundle3 = new Bundle(1);
                    bundle3.putString("key", str3);
                    c0868.m6807(bundle3);
                }
                c0868.m6790(abstractC0864);
                C3085 m6805 = abstractC0864.m6805();
                c0868.f11669 = false;
                c0868.f11671 = true;
                C3137 c3137 = new C3137(m6805);
                c3137.f11996 = true;
                c3137.m6879(0, c0868, "androidx.preference.PreferenceFragment.DIALOG", 1);
                c3137.m6890();
            }
        }
    }
}
