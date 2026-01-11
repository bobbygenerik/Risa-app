package p122;

import java.util.Arrays;

/* renamed from: ˈˋ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2065 extends AbstractC2093 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f8096;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8097;

    public C2065(String str, byte[] bArr) {
        this.f8097 = str;
        this.f8096 = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2093) {
            AbstractC2093 abstractC2093 = (AbstractC2093) obj;
            C2065 c2065 = (C2065) abstractC2093;
            if (this.f8097.equals(c2065.f8097)) {
                if (Arrays.equals(this.f8096, abstractC2093 instanceof C2065 ? ((C2065) abstractC2093).f8096 : c2065.f8096)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f8097.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f8096);
    }

    public final String toString() {
        return "File{filename=" + this.f8097 + ", contents=" + Arrays.toString(this.f8096) + "}";
    }
}
