package p308;

/* renamed from: ᐧٴ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3771 extends AbstractC3745 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3778 f14650;

    public C3771(C3778 c3778) {
        this.f14650 = c3778;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3745)) {
            return false;
        }
        AbstractC3745 abstractC3745 = (AbstractC3745) obj;
        Object obj2 = EnumC3752.f14606;
        if (obj2.equals(obj2)) {
            return this.f14650.equals(((C3771) abstractC3745).f14650);
        }
        return false;
    }

    public final int hashCode() {
        return ((EnumC3752.f14606.hashCode() ^ 1000003) * 1000003) ^ this.f14650.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + EnumC3752.f14606 + ", androidClientInfo=" + this.f14650 + "}";
    }
}
