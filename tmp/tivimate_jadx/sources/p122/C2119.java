package p122;

/* renamed from: ˈˋ.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2119 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2074 f8295;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2089 f8296;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2035 f8297;

    public C2119(C2035 c2035, C2089 c2089, C2074 c2074) {
        this.f8297 = c2035;
        this.f8296 = c2089;
        this.f8295 = c2074;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2119) {
            C2119 c2119 = (C2119) obj;
            if (this.f8297.equals(c2119.f8297) && this.f8296.equals(c2119.f8296) && this.f8295.equals(c2119.f8295)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f8297.hashCode() ^ 1000003) * 1000003) ^ this.f8296.hashCode()) * 1000003) ^ this.f8295.hashCode();
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.f8297 + ", osData=" + this.f8296 + ", deviceData=" + this.f8295 + "}";
    }
}
