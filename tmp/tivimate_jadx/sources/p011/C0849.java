package p011;

import android.text.TextUtils;
import androidx.preference.Preference;

/* renamed from: ʻᐧ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0849 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f3633;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f3634;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f3635;

    public C0849(Preference preference) {
        this.f3633 = preference.getClass().getName();
        this.f3635 = preference.f1362;
        this.f3634 = preference.f1368;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0849)) {
            return false;
        }
        C0849 c0849 = (C0849) obj;
        return this.f3635 == c0849.f3635 && this.f3634 == c0849.f3634 && TextUtils.equals(this.f3633, c0849.f3633);
    }

    public final int hashCode() {
        return this.f3633.hashCode() + ((((527 + this.f3635) * 31) + this.f3634) * 31);
    }
}
