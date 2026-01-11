package p429;

import java.nio.charset.Charset;

/* renamed from: ﹶˆ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5087 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Charset f19176 = Charset.forName("UTF-8");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static byte[] m9991(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = AbstractC5084.f19171;
        int i = (length / 3) * 4;
        if (length % 3 > 0) {
            i += 4;
        }
        byte[] bArr3 = new byte[i];
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            int i5 = i2 + 3;
            if (i5 > length) {
                break;
            }
            int i6 = (bArr[i2 + 2] & 255) | ((bArr[i2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8);
            bArr3[i3] = bArr2[(i6 >> 18) & 63];
            bArr3[i3 + 1] = bArr2[(i6 >> 12) & 63];
            bArr3[i3 + 2] = bArr2[(i6 >> 6) & 63];
            bArr3[i3 + 3] = bArr2[i6 & 63];
            int i7 = i3 + 4;
            i4--;
            if (i4 == 0) {
                i3 += 5;
                bArr3[i7] = 10;
                i4 = 19;
            } else {
                i3 = i7;
            }
            i2 = i5;
        }
        if (i2 == length - 1) {
            int i8 = (bArr[i2] & 255) << 4;
            bArr3[i3] = bArr2[(i8 >> 6) & 63];
            bArr3[i3 + 1] = bArr2[i8 & 63];
            bArr3[i3 + 2] = 61;
            bArr3[i3 + 3] = 61;
            return bArr3;
        }
        if (i2 == length - 2) {
            int i9 = ((bArr[i2 + 1] & 255) << 2) | ((bArr[i2] & 255) << 10);
            bArr3[i3] = bArr2[(i9 >> 12) & 63];
            bArr3[i3 + 1] = bArr2[(i9 >> 6) & 63];
            bArr3[i3 + 2] = bArr2[i9 & 63];
            bArr3[i3 + 3] = 61;
        }
        return bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00e2, code lost:
    
        if (r7 != 4) goto L58;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m9992(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p429.AbstractC5087.m9992(java.lang.String):byte[]");
    }
}
