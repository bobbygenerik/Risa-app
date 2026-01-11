package p017;

import java.io.Serializable;

/* renamed from: ʼʻ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0970 extends AbstractC0955 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0955 f3929;

    public C0970(AbstractC0955 abstractC0955) {
        this.f3929 = abstractC0955;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f3929.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0970) {
            return this.f3929.equals(((C0970) obj).f3929);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f3929.hashCode();
    }

    public final String toString() {
        return this.f3929 + ".reverse()";
    }

    @Override // p017.AbstractC0955
    /* renamed from: ﹳٴ */
    public final AbstractC0955 mo3242() {
        return this.f3929;
    }
}
