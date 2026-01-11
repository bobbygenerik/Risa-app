package p094;

import j$.util.Objects;
import p035.AbstractC1220;

/* renamed from: ˆʻ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1861 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7473;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7474;

    public C1861(String str, String str2, String str3) {
        super(str);
        this.f7474 = str2;
        this.f7473 = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1861.class == obj.getClass()) {
            C1861 c1861 = (C1861) obj;
            if (this.f7481.equals(c1861.f7481) && Objects.equals(this.f7474, c1861.f7474) && Objects.equals(this.f7473, c1861.f7473)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int m3780 = AbstractC1220.m3780(527, 31, this.f7481);
        String str = this.f7474;
        int hashCode = (m3780 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f7473;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": url=" + this.f7473;
    }
}
