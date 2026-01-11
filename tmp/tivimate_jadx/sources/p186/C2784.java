package p186;

import android.view.DisplayCutout;
import j$.util.Objects;

/* renamed from: ˋᵔ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2784 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final DisplayCutout f10542;

    public C2784(DisplayCutout displayCutout) {
        this.f10542 = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2784.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f10542, ((C2784) obj).f10542);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f10542;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f10542 + "}";
    }
}
