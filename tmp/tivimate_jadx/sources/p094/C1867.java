package p094;

import j$.util.Objects;

/* renamed from: ˆʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1867 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7494;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7495;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7496;

    public C1867(String str, String str2, String str3) {
        super("COMM");
        this.f7496 = str;
        this.f7494 = str2;
        this.f7495 = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1867.class == obj.getClass()) {
            C1867 c1867 = (C1867) obj;
            if (Objects.equals(this.f7494, c1867.f7494) && Objects.equals(this.f7496, c1867.f7496) && Objects.equals(this.f7495, c1867.f7495)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f7496;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f7494;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f7495;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": language=" + this.f7496 + ", description=" + this.f7494 + ", text=" + this.f7495;
    }
}
