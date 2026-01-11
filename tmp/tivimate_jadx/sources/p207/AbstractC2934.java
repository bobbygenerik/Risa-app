package p207;

/* renamed from: ˎᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2934 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC2936 f11101;

    public AbstractC2934(AbstractC2936 abstractC2936) {
        this.f11101 = abstractC2936;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC2934 abstractC2934 = (AbstractC2934) obj;
        if (this.f11101 != abstractC2934.f11101) {
            return false;
        }
        return mo4944() != null ? mo4944().equals(abstractC2934.mo4944()) : abstractC2934.mo4944() == null;
    }

    public final int hashCode() {
        return this.f11101.f11117;
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + mo6460() + "]";
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String mo6460() {
        if (mo4944() != null) {
            return mo4944().toString();
        }
        return null;
    }

    /* renamed from: ﹳٴ */
    public abstract Object mo4944();
}
