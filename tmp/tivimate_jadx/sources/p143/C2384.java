package p143;

import android.content.res.Resources;
import j$.util.Objects;

/* renamed from: ˉٴ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2384 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Resources.Theme f9213;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Resources f9214;

    public C2384(Resources resources, Resources.Theme theme) {
        this.f9214 = resources;
        this.f9213 = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2384.class == obj.getClass()) {
            C2384 c2384 = (C2384) obj;
            if (this.f9214.equals(c2384.f9214) && Objects.equals(this.f9213, c2384.f9213)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f9214, this.f9213);
    }
}
