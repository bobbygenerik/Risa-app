package p308;

/* renamed from: ᐧٴ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3757 extends AbstractC3751 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3777 f14620;

    public C3757(C3777 c3777) {
        EnumC3774 enumC3774 = EnumC3774.f14654;
        this.f14620 = c3777;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3751)) {
            return false;
        }
        if (!this.f14620.equals(((C3757) ((AbstractC3751) obj)).f14620)) {
            return false;
        }
        Object obj2 = EnumC3774.f14654;
        return obj2.equals(obj2);
    }

    public final int hashCode() {
        return ((this.f14620.hashCode() ^ 1000003) * 1000003) ^ EnumC3774.f14654.hashCode();
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.f14620 + ", productIdOrigin=" + EnumC3774.f14654 + "}";
    }
}
