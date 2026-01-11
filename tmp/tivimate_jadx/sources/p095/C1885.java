package p095;

import java.io.Serializable;
import java.util.List;

/* renamed from: ˆʽ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1885 implements InterfaceC1883, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f7530;

    public C1885(List list) {
        this.f7530 = list;
    }

    @Override // p095.InterfaceC1883
    public final boolean apply(Object obj) {
        int i = 0;
        while (true) {
            List list = this.f7530;
            if (i >= list.size()) {
                return true;
            }
            if (!((InterfaceC1883) list.get(i)).apply(obj)) {
                return false;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1885) {
            return this.f7530.equals(((C1885) obj).f7530);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7530.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : this.f7530) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
