package p411;

import p137.AbstractC2305;
import p152.AbstractC2444;

/* renamed from: ﹳˎ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4891 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f18240;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18241;

    public C4891(String str, String str2) {
        this.f18241 = str;
        this.f18240 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4891)) {
            return false;
        }
        C4891 c4891 = (C4891) obj;
        return AbstractC2444.m5562(this.f18241, c4891.f18241) && AbstractC2444.m5562(this.f18240, c4891.f18240);
    }

    public final int hashCode() {
        String str = this.f18241;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f18240;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FirebaseInstallationId(fid=");
        sb.append(this.f18241);
        sb.append(", authToken=");
        return AbstractC2305.m5384(sb, this.f18240, ')');
    }
}
