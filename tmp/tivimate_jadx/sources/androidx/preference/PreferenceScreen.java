package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import p053.AbstractC1436;
import p143.AbstractC2392;
import ʼⁱ.ʼᐧ;

/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final boolean f1395;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, AbstractC2392.m5495(context, R.attr.4vi, android.R.attr.preferenceScreenStyle), 0);
        this.f1395 = true;
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˉˆ */
    public final void mo814() {
        ʼᐧ r0;
        boolean z;
        if (this.f1383 != null || this.f1354 != null || this.f1394.size() == 0 || (r0 = this.f1375.f3638) == null) {
            return;
        }
        if (r0.mo3062() instanceof AbstractC1436) {
            ((AbstractC1436) r0.mo3062()).ˑˆ(this);
            z = true;
        } else {
            z = false;
        }
        for (ʼᐧ r3 = r0; !z && r3 != null; r3 = r3.f11928) {
            if (r3 instanceof AbstractC1436) {
                ((AbstractC1436) r3).ˑˆ(this);
                z = true;
            }
        }
        if (!z) {
            r0.mo4203();
        }
        if (z) {
            return;
        }
        r0.m6803();
    }
}
