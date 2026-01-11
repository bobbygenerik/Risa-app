package p071;

import java.util.Arrays;
import ʼ.ᵎﹶ;

/* renamed from: ʾᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1631 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f6496;

    public C1631(int i, byte[] bArr) {
        byte[] bArr2 = new byte[i];
        this.f6496 = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1631 m4412(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("data must be non-null");
        }
        int length = bArr.length;
        if (length > bArr.length) {
            length = bArr.length;
        }
        return new C1631(length, bArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1631) {
            return Arrays.equals(((C1631) obj).f6496, this.f6496);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6496);
    }

    public final String toString() {
        return "Bytes(" + ᵎﹶ.ﹳᐧ(this.f6496) + ")";
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] m4413() {
        byte[] bArr = this.f6496;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
