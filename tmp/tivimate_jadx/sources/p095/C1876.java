package p095;

/* renamed from: ˆʽ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1876 extends AbstractC1889 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f7515;

    public C1876(Object obj) {
        this.f7515 = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1876) {
            return this.f7515.equals(((C1876) obj).f7515);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7515.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f7515 + ")";
    }

    @Override // p095.AbstractC1889
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo4812() {
        return true;
    }

    @Override // p095.AbstractC1889
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo4813() {
        return this.f7515;
    }
}
