package p105;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˆי.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1932 extends AbstractC1930 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7682;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7683;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f7684;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7685;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f7686;

    public C1932(long j, String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new NullPointerException("Null rolloutId");
        }
        this.f7685 = str;
        if (str2 == null) {
            throw new NullPointerException("Null parameterKey");
        }
        this.f7682 = str2;
        if (str3 == null) {
            throw new NullPointerException("Null parameterValue");
        }
        this.f7683 = str3;
        if (str4 == null) {
            throw new NullPointerException("Null variantId");
        }
        this.f7684 = str4;
        this.f7686 = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1930) {
            C1932 c1932 = (C1932) ((AbstractC1930) obj);
            if (this.f7685.equals(c1932.f7685) && this.f7682.equals(c1932.f7682) && this.f7683.equals(c1932.f7683) && this.f7684.equals(c1932.f7684) && this.f7686 == c1932.f7686) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f7685.hashCode() ^ 1000003) * 1000003) ^ this.f7682.hashCode()) * 1000003) ^ this.f7683.hashCode()) * 1000003) ^ this.f7684.hashCode()) * 1000003;
        long j = this.f7686;
        return hashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.f7685);
        sb.append(", parameterKey=");
        sb.append(this.f7682);
        sb.append(", parameterValue=");
        sb.append(this.f7683);
        sb.append(", variantId=");
        sb.append(this.f7684);
        sb.append(", templateVersion=");
        return AbstractC0001.m8(sb, this.f7686, "}");
    }
}
