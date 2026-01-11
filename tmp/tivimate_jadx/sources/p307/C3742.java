package p307;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import p010.AbstractC0844;

/* renamed from: ᐧـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3742 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f14581;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14582;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14583;

    public C3742(String str, long j, int i) {
        this.f14583 = str;
        this.f14582 = j;
        this.f14581 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ʽﹳ m7951() {
        ʽﹳ r0 = new ʽﹳ((byte) 0, 18);
        r0.ˈٴ = 0L;
        return r0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3742)) {
            return false;
        }
        C3742 c3742 = (C3742) obj;
        int i = c3742.f14581;
        String str = c3742.f14583;
        String str2 = this.f14583;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (this.f14582 != c3742.f14582) {
            return false;
        }
        int i2 = this.f14581;
        return i2 == 0 ? i == 0 : AbstractC0844.m3021(i2, i);
    }

    public final int hashCode() {
        String str = this.f14583;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f14582;
        int i = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        int i2 = this.f14581;
        return (i2 != 0 ? AbstractC0844.m3018(i2) : 0) ^ i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TokenResult{token=");
        sb.append(this.f14583);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f14582);
        sb.append(", responseCode=");
        int i = this.f14581;
        sb.append(i != 1 ? i != 2 ? i != 3 ? "null" : "AUTH_ERROR" : "BAD_CONFIG" : "OK");
        sb.append("}");
        return sb.toString();
    }
}
