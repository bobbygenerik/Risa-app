package p411;

import p035.AbstractC1220;

/* renamed from: ﹳˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4890 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f18237;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f18238;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18239;

    public C4890(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null crashlyticsInstallId");
        }
        this.f18239 = str;
        this.f18238 = str2;
        this.f18237 = str3;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4890) {
            C4890 c4890 = (C4890) obj;
            String str3 = c4890.f18237;
            String str4 = c4890.f18238;
            if (this.f18239.equals(c4890.f18239) && ((str = this.f18238) != null ? str.equals(str4) : str4 == null) && ((str2 = this.f18237) != null ? str2.equals(str3) : str3 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f18239.hashCode() ^ 1000003) * 1000003;
        String str = this.f18238;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f18237;
        return hashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallIds{crashlyticsInstallId=");
        sb.append(this.f18239);
        sb.append(", firebaseInstallationId=");
        sb.append(this.f18238);
        sb.append(", firebaseAuthenticationToken=");
        return AbstractC1220.m3775(sb, this.f18237, "}");
    }
}
