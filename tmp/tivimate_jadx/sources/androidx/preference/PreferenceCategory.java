package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import p011.C0856;
import p143.AbstractC2392;

/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, AbstractC2392.m5495(context, R.attr.43n, android.R.attr.preferenceCategoryStyle), 0);
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʼˎ */
    public final boolean mo830() {
        return false;
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˈٴ */
    public final boolean mo816() {
        return !super.mo830();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ */
    public final void mo813(C0856 c0856) {
        super.mo813(c0856);
        if (Build.VERSION.SDK_INT >= 28) {
            c0856.f10176.setAccessibilityHeading(true);
        }
    }
}
