package p094;

import j$.util.Objects;
import java.util.Arrays;
import p055.C1459;

/* renamed from: ˆʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1873 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7504;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f7505;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] f7506;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7507;

    public C1873(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f7507 = str;
        this.f7504 = str2;
        this.f7505 = i;
        this.f7506 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1873.class == obj.getClass()) {
            C1873 c1873 = (C1873) obj;
            if (this.f7505 == c1873.f7505 && Objects.equals(this.f7507, c1873.f7507) && Objects.equals(this.f7504, c1873.f7504) && Arrays.equals(this.f7506, c1873.f7506)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (527 + this.f7505) * 31;
        String str = this.f7507;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f7504;
        return Arrays.hashCode(this.f7506) + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": mimeType=" + this.f7507 + ", description=" + this.f7504;
    }

    @Override // p094.AbstractC1863, p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final void mo2792(C1459 c1459) {
        c1459.m4247(this.f7505, this.f7506);
    }
}
