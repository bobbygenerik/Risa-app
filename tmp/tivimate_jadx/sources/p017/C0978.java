package p017;

import com.parse.ʼᐧ;
import java.io.Serializable;

/* renamed from: ʼʻ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0978 extends AbstractC0955 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʼᐧ f3948;

    public C0978(ʼᐧ r1) {
        this.f3948 = r1;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f3948.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0978) {
            return this.f3948.equals(((C0978) obj).f3948);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3948.hashCode();
    }

    public final String toString() {
        return this.f3948.toString();
    }
}
