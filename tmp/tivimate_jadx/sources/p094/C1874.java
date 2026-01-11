package p094;

import j$.util.Objects;

/* renamed from: ˆʻ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1874 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7508;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7509;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7510;

    public C1874(String str, String str2, String str3) {
        super("----");
        this.f7510 = str;
        this.f7508 = str2;
        this.f7509 = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1874.class == obj.getClass()) {
            C1874 c1874 = (C1874) obj;
            if (Objects.equals(this.f7508, c1874.f7508) && Objects.equals(this.f7510, c1874.f7510) && Objects.equals(this.f7509, c1874.f7509)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f7510;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f7508;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f7509;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": domain=" + this.f7510 + ", description=" + this.f7508;
    }
}
