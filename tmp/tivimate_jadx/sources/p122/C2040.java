package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2040 extends AbstractC2070 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7965;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7966;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f7967;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f7968;

    public C2040(long j, long j2, String str, String str2) {
        this.f7968 = j;
        this.f7967 = j2;
        this.f7965 = str;
        this.f7966 = str2;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2070) {
            C2040 c2040 = (C2040) ((AbstractC2070) obj);
            String str2 = c2040.f7966;
            if (this.f7968 == c2040.f7968 && this.f7967 == c2040.f7967 && this.f7965.equals(c2040.f7965) && ((str = this.f7966) != null ? str.equals(str2) : str2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f7968;
        long j2 = this.f7967;
        int hashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f7965.hashCode()) * 1000003;
        String str = this.f7966;
        return hashCode ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BinaryImage{baseAddress=");
        sb.append(this.f7968);
        sb.append(", size=");
        sb.append(this.f7967);
        sb.append(", name=");
        sb.append(this.f7965);
        sb.append(", uuid=");
        return AbstractC1220.m3775(sb, this.f7966, "}");
    }
}
