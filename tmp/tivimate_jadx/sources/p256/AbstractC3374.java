package p256;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.Arrays;

/* renamed from: יٴ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3374 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f13188 = m7239(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7237(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = iArr[i] + iArr[i2];
        iArr[i] = i5;
        int i6 = i5 ^ iArr[i4];
        int i7 = (i6 >>> (-16)) | (i6 << 16);
        iArr[i4] = i7;
        int i8 = iArr[i3] + i7;
        iArr[i3] = i8;
        int i9 = iArr[i2] ^ i8;
        int i10 = (i9 >>> (-12)) | (i9 << 12);
        iArr[i2] = i10;
        int i11 = iArr[i] + i10;
        iArr[i] = i11;
        int i12 = iArr[i4] ^ i11;
        int i13 = (i12 >>> (-8)) | (i12 << 8);
        iArr[i4] = i13;
        int i14 = iArr[i3] + i13;
        iArr[i3] = i14;
        int i15 = iArr[i2] ^ i14;
        iArr[i2] = (i15 >>> (-7)) | (i15 << 7);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m7238(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m7237(0, 4, 8, 12, iArr);
            m7237(1, 5, 9, 13, iArr);
            m7237(2, 6, 10, 14, iArr);
            m7237(3, 7, 11, 15, iArr);
            m7237(0, 5, 10, 15, iArr);
            m7237(1, 6, 11, 12, iArr);
            m7237(2, 7, 8, 13, iArr);
            m7237(3, 4, 9, 14, iArr);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int[] m7239(byte[] bArr) {
        if (bArr.length % 4 != 0) {
            throw new IllegalArgumentException("invalid input length");
        }
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int[] m7240(int[] iArr, int[] iArr2) {
        int[] iArr3 = f13188;
        System.arraycopy(iArr3, 0, r0, 0, iArr3.length);
        System.arraycopy(iArr, 0, r0, iArr3.length, 8);
        int[] iArr4 = {0, 0, 0, 0, iArr4[12], iArr4[13], iArr4[14], iArr4[15], 0, 0, 0, 0, iArr2[0], iArr2[1], iArr2[2], iArr2[3]};
        m7238(iArr4);
        return Arrays.copyOf(iArr4, 8);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m7241(byte[] bArr, byte[] bArr2) {
        int[] m7240 = m7240(m7239(bArr), m7239(bArr2));
        ByteBuffer order = ByteBuffer.allocate(m7240.length * 4).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(m7240);
        return order.array();
    }
}
