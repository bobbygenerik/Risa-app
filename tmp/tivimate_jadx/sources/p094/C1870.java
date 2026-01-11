package p094;

import j$.util.Objects;
import java.util.Arrays;

/* renamed from: ˆʻ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1870 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f7498;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7499;

    public C1870(String str, byte[] bArr) {
        super("PRIV");
        this.f7499 = str;
        this.f7498 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1870.class == obj.getClass()) {
            C1870 c1870 = (C1870) obj;
            if (Objects.equals(this.f7499, c1870.f7499) && Arrays.equals(this.f7498, c1870.f7498)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f7499;
        return Arrays.hashCode(this.f7498) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": owner=" + this.f7499;
    }
}
