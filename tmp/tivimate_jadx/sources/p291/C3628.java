package p291;

import j$.util.Objects;

/* renamed from: ٴᴵ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3628 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f14193;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14194;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14195;

    public C3628(String str, String str2, String str3) {
        this.f14195 = str;
        this.f14194 = str2;
        this.f14193 = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3628.class == obj.getClass()) {
            C3628 c3628 = (C3628) obj;
            if (Objects.equals(this.f14195, c3628.f14195) && Objects.equals(this.f14194, c3628.f14194) && Objects.equals(this.f14193, c3628.f14193)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f14195.hashCode() * 31;
        String str = this.f14194;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f14193;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
