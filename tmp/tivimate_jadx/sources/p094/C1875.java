package p094;

import j$.util.Objects;
import java.util.Arrays;

/* renamed from: ˆʻ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1875 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7511;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7512;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] f7513;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7514;

    public C1875(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f7514 = str;
        this.f7511 = str2;
        this.f7512 = str3;
        this.f7513 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1875.class == obj.getClass()) {
            C1875 c1875 = (C1875) obj;
            if (Objects.equals(this.f7514, c1875.f7514) && Objects.equals(this.f7511, c1875.f7511) && Objects.equals(this.f7512, c1875.f7512) && Arrays.equals(this.f7513, c1875.f7513)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f7514;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f7511;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f7512;
        return Arrays.hashCode(this.f7513) + ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": mimeType=" + this.f7514 + ", filename=" + this.f7511 + ", description=" + this.f7512;
    }
}
