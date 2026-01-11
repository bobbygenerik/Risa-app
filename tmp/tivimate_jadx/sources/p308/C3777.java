package p308;

/* renamed from: ᐧٴ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3777 extends AbstractC3755 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3773 f14669;

    public C3777(C3773 c3773) {
        this.f14669 = c3773;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3755)) {
            return false;
        }
        return this.f14669.equals(((C3777) ((AbstractC3755) obj)).f14669);
    }

    public final int hashCode() {
        return this.f14669.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f14669 + "}";
    }
}
