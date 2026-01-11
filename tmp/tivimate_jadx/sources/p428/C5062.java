package p428;

import java.util.Arrays;

/* renamed from: ﹶʽ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5062 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f19052;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC5067[] f19053;

    public C5062(InterfaceC5067... interfaceC5067Arr) {
        this.f19053 = interfaceC5067Arr;
        int length = interfaceC5067Arr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5062.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f19053, ((C5062) obj).f19053);
    }

    public final int hashCode() {
        if (this.f19052 == 0) {
            this.f19052 = 527 + Arrays.hashCode(this.f19053);
        }
        return this.f19052;
    }
}
