package p441;

import p332.AbstractC4200;

/* renamed from: ﹶᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5194 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f19516 = new int[256];

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f19517 = new int[3];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) == 1 ? (i2 >>> 1) ^ (-306674912) : i2 >>> 1;
            }
            f19516[i] = i2;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10171(byte b) {
        int[] iArr = this.f19517;
        int i = iArr[0];
        int i2 = i >>> 8;
        int i3 = (b ^ i) & 255;
        int[] iArr2 = f19516;
        int i4 = iArr2[i3] ^ i2;
        iArr[0] = i4;
        int i5 = iArr[1] + (i4 & 255);
        iArr[1] = i5;
        int i6 = (i5 * 134775813) + 1;
        iArr[1] = i6;
        int i7 = iArr[2];
        iArr[2] = iArr2[(i7 ^ ((byte) (i6 >> 24))) & 255] ^ (i7 >>> 8);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10172(char[] cArr, boolean z) {
        int[] iArr = this.f19517;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (byte b : AbstractC4200.m8611(cArr, z)) {
            m10171((byte) (b & 255));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte m10173() {
        int i = this.f19517[2] | 2;
        return (byte) ((i * (i ^ 1)) >>> 8);
    }
}
