package p080;

import java.security.MessageDigest;
import p031.InterfaceC1141;

/* renamed from: ʿʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1715 implements InterfaceC1141 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1141 f7012;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1141 f7013;

    public C1715(InterfaceC1141 interfaceC1141, InterfaceC1141 interfaceC11412) {
        this.f7013 = interfaceC1141;
        this.f7012 = interfaceC11412;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C1715) {
            C1715 c1715 = (C1715) obj;
            if (this.f7013.equals(c1715.f7013) && this.f7012.equals(c1715.f7012)) {
                return true;
            }
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return this.f7012.hashCode() + (this.f7013.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f7013 + ", signature=" + this.f7012 + '}';
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        this.f7013.mo3574(messageDigest);
        this.f7012.mo3574(messageDigest);
    }
}
