package p055;

import java.util.Arrays;
import java.util.List;
import p305.AbstractC3712;
import ˈˋ.ʾˊ;

/* renamed from: ʽⁱ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1476 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f5772;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1465[] f5773;

    public C1476(long j, InterfaceC1465... interfaceC1465Arr) {
        this.f5772 = j;
        this.f5773 = interfaceC1465Arr;
    }

    public C1476(List list) {
        this((InterfaceC1465[]) list.toArray(new InterfaceC1465[0]));
    }

    public C1476(InterfaceC1465... interfaceC1465Arr) {
        this(-9223372036854775807L, interfaceC1465Arr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1476.class == obj.getClass()) {
            C1476 c1476 = (C1476) obj;
            if (Arrays.equals(this.f5773, c1476.f5773) && this.f5772 == c1476.f5772) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ʾˊ.ʾᵎ(this.f5772) + (Arrays.hashCode(this.f5773) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.f5773));
        long j = this.f5772;
        if (j == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1476 m4281(C1476 c1476) {
        return c1476 == null ? this : m4282(c1476.f5773);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1476 m4282(InterfaceC1465... interfaceC1465Arr) {
        if (interfaceC1465Arr.length == 0) {
            return this;
        }
        String str = AbstractC3712.f14481;
        InterfaceC1465[] interfaceC1465Arr2 = this.f5773;
        Object[] copyOf = Arrays.copyOf(interfaceC1465Arr2, interfaceC1465Arr2.length + interfaceC1465Arr.length);
        System.arraycopy(interfaceC1465Arr, 0, copyOf, interfaceC1465Arr2.length, interfaceC1465Arr.length);
        return new C1476(this.f5772, (InterfaceC1465[]) copyOf);
    }
}
