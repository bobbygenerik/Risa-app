package p135;

import j$.util.Objects;
import java.util.Locale;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˉʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2216 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8682;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f8683;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8684;

    public C2216(int i, long j, long j2) {
        AbstractC3731.m7849(j < j2);
        this.f8684 = j;
        this.f8683 = j2;
        this.f8682 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2216.class == obj.getClass()) {
            C2216 c2216 = (C2216) obj;
            if (this.f8684 == c2216.f8684 && this.f8683 == c2216.f8683 && this.f8682 == c2216.f8682) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f8684), Long.valueOf(this.f8683), Integer.valueOf(this.f8682));
    }

    public final String toString() {
        String str = AbstractC3712.f14481;
        Locale locale = Locale.US;
        StringBuilder m3770 = AbstractC1220.m3770(this.f8684, "Segment: startTimeMs=", ", endTimeMs=");
        m3770.append(this.f8683);
        m3770.append(", speedDivisor=");
        m3770.append(this.f8682);
        return m3770.toString();
    }
}
