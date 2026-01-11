package p053;

import android.os.Bundle;
import androidx.preference.DialogPreference;
import p011.AbstractC0864;
import p137.AbstractC2305;
import p229.AbstractComponentCallbacksC3123;
import ﹳˋ.ʽʽ;

/* renamed from: ʽᵔ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1439 extends AbstractComponentCallbacksC3123 {

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public DialogPreference f5617;

    public C1439() {
        ʽʽ.ⁱˊ(this);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public void mo421(Bundle bundle) {
        super.mo421(bundle);
        AbstractComponentCallbacksC3123 m6802 = m6802(true);
        if (!(m6802 instanceof AbstractC0864)) {
            throw new IllegalStateException(AbstractC2305.m5361("Target fragment ", m6802, " must implement TargetFragment interface"));
        }
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final DialogPreference m4204() {
        if (this.f5617 == null) {
            this.f5617 = (DialogPreference) ((AbstractC0864) m6802(true)).m3069(this.f11906.getString("key"));
        }
        return this.f5617;
    }
}
