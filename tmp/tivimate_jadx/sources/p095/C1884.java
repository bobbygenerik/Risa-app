package p095;

import com.google.android.gms.internal.measurement.ᵎ;
import java.io.Serializable;
import java.util.Arrays;

/* renamed from: ˆʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1884 implements InterfaceC1882, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f7529;

    public C1884(Object obj) {
        this.f7529 = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1884) {
            return ᵎ.ᵎﹶ(this.f7529, ((C1884) obj).f7529);
        }
        return false;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        return this.f7529;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7529});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.f7529 + ")";
    }
}
