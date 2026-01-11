package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2098 extends AbstractC2099 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8212;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8213;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8214;

    public C2098(String str, String str2, String str3) {
        this.f8214 = str;
        this.f8213 = str2;
        this.f8212 = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2099) {
            C2098 c2098 = (C2098) ((AbstractC2099) obj);
            if (this.f8214.equals(c2098.f8214) && this.f8213.equals(c2098.f8213) && this.f8212.equals(c2098.f8212)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f8214.hashCode() ^ 1000003) * 1000003) ^ this.f8213.hashCode()) * 1000003) ^ this.f8212.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BuildIdMappingForArch{arch=");
        sb.append(this.f8214);
        sb.append(", libraryName=");
        sb.append(this.f8213);
        sb.append(", buildId=");
        return AbstractC1220.m3775(sb, this.f8212, "}");
    }
}
