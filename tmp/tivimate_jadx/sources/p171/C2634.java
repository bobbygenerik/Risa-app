package p171;

import java.util.Arrays;

/* renamed from: ˊﾞ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2634 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f9984;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f9985;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f9986;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9987;

    public C2634(int i, int i2, int i3, byte[] bArr) {
        this.f9987 = i;
        this.f9986 = bArr;
        this.f9984 = i2;
        this.f9985 = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2634.class == obj.getClass()) {
            C2634 c2634 = (C2634) obj;
            if (this.f9987 == c2634.f9987 && this.f9984 == c2634.f9984 && this.f9985 == c2634.f9985 && Arrays.equals(this.f9986, c2634.f9986)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f9986) + (this.f9987 * 31)) * 31) + this.f9984) * 31) + this.f9985;
    }
}
