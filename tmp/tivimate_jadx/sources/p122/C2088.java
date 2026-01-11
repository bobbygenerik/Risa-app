package p122;

import java.util.List;
import p035.AbstractC1220;

/* renamed from: ˈˋ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2088 extends AbstractC2077 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8172;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f8173;

    public C2088(String str, List list) {
        this.f8173 = list;
        this.f8172 = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2077) {
            C2088 c2088 = (C2088) ((AbstractC2077) obj);
            String str2 = c2088.f8172;
            if (this.f8173.equals(c2088.f8173) && ((str = this.f8172) != null ? str.equals(str2) : str2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f8173.hashCode() ^ 1000003) * 1000003;
        String str = this.f8172;
        return hashCode ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FilesPayload{files=");
        sb.append(this.f8173);
        sb.append(", orgId=");
        return AbstractC1220.m3775(sb, this.f8172, "}");
    }
}
