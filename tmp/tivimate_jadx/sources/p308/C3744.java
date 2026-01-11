package p308;

/* renamed from: ᐧٴ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3744 extends AbstractC3769 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC3765 f14589;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC3758 f14590;

    public C3744(EnumC3758 enumC3758, EnumC3765 enumC3765) {
        this.f14590 = enumC3758;
        this.f14589 = enumC3765;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC3769) {
            AbstractC3769 abstractC3769 = (AbstractC3769) obj;
            EnumC3758 enumC3758 = this.f14590;
            if (enumC3758 != null ? enumC3758.equals(((C3744) abstractC3769).f14590) : ((C3744) abstractC3769).f14590 == null) {
                EnumC3765 enumC3765 = this.f14589;
                if (enumC3765 != null ? enumC3765.equals(((C3744) abstractC3769).f14589) : ((C3744) abstractC3769).f14589 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        EnumC3758 enumC3758 = this.f14590;
        int hashCode = ((enumC3758 == null ? 0 : enumC3758.hashCode()) ^ 1000003) * 1000003;
        EnumC3765 enumC3765 = this.f14589;
        return (enumC3765 != null ? enumC3765.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f14590 + ", mobileSubtype=" + this.f14589 + "}";
    }
}
