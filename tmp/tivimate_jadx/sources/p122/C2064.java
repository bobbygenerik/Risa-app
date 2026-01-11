package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2064 extends AbstractC2051 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8091;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8092;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f8093;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8094;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8095;

    public C2064(long j, String str, String str2, long j2, int i) {
        this.f8095 = j;
        this.f8094 = str;
        this.f8091 = str2;
        this.f8092 = j2;
        this.f8093 = i;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2051) {
            C2064 c2064 = (C2064) ((AbstractC2051) obj);
            String str2 = c2064.f8091;
            if (this.f8095 == c2064.f8095 && this.f8094.equals(c2064.f8094) && ((str = this.f8091) != null ? str.equals(str2) : str2 == null) && this.f8092 == c2064.f8092 && this.f8093 == c2064.f8093) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f8095;
        int hashCode = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f8094.hashCode()) * 1000003;
        String str = this.f8091;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j2 = this.f8092;
        return ((hashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f8093;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Frame{pc=");
        sb.append(this.f8095);
        sb.append(", symbol=");
        sb.append(this.f8094);
        sb.append(", file=");
        sb.append(this.f8091);
        sb.append(", offset=");
        sb.append(this.f8092);
        sb.append(", importance=");
        return AbstractC1220.m3782(sb, this.f8093, "}");
    }
}
