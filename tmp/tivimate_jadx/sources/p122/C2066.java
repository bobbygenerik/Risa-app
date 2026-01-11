package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2066 extends AbstractC2046 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8098;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8099;

    public C2066(String str, String str2) {
        this.f8099 = str;
        this.f8098 = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2046) {
            C2066 c2066 = (C2066) ((AbstractC2046) obj);
            if (this.f8099.equals(c2066.f8099) && this.f8098.equals(c2066.f8098)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f8099.hashCode() ^ 1000003) * 1000003) ^ this.f8098.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CustomAttribute{key=");
        sb.append(this.f8099);
        sb.append(", value=");
        return AbstractC1220.m3775(sb, this.f8098, "}");
    }
}
