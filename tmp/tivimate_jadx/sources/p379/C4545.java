package p379;

import java.security.InvalidKeyException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.InvalidCipherTextException;
import p008.C0838;
import p198.AbstractC2903;
import p215.C3009;
import p215.C3010;

/* renamed from: ᵢᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4545 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f17030;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17031;

    public /* synthetic */ C4545(int i) {
        this.f17031 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9116(int i, byte[] bArr, byte[] bArr2) {
        int i2;
        int i3;
        switch (this.f17031) {
            case 0:
                C0838 c0838 = (C0838) this.f17030;
                C3010 c3010 = (C3010) c0838.f3576;
                byte[] bArr3 = (byte[]) c0838.f3575;
                if (i < 0) {
                    throw new IllegalArgumentException("Can't have a negative input length!");
                }
                int i4 = c0838.f3577;
                int i5 = i + i4;
                int length = i5 - (i5 % bArr3.length);
                if (length > 0 && length > bArr2.length) {
                    throw new RuntimeException("output buffer too short");
                }
                int length2 = bArr3.length - i4;
                if (i > length2) {
                    System.arraycopy(bArr, 0, bArr3, i4, length2);
                    c3010.m6540(0, 0, bArr3, bArr2);
                    c0838.f3577 = 0;
                    i2 = i - length2;
                    i3 = 8;
                    while (i2 > bArr3.length) {
                        c3010.m6540(length2, i3, bArr, bArr2);
                        i3 += 8;
                        i2 -= 8;
                        length2 += 8;
                    }
                } else {
                    length2 = 0;
                    i2 = i;
                    i3 = 0;
                }
                System.arraycopy(bArr, length2, bArr3, c0838.f3577, i2);
                int i6 = c0838.f3577 + i2;
                c0838.f3577 = i6;
                if (i6 != bArr3.length) {
                    return i3;
                }
                c3010.m6540(0, i3, bArr3, bArr2);
                int i7 = i3 + 8;
                c0838.f3577 = 0;
                return i7;
            case 1:
                C3009 c3009 = (C3009) this.f17030;
                if (i > bArr.length) {
                    throw new RuntimeException("input buffer too short");
                }
                if (i > bArr2.length) {
                    throw new RuntimeException("output buffer too short");
                }
                for (int i8 = 0; i8 < i; i8++) {
                    int i9 = (c3009.f11491 + 1) & 255;
                    c3009.f11491 = i9;
                    byte[] bArr4 = c3009.f11492;
                    byte b = bArr4[i9];
                    int i10 = (c3009.f11489 + b) & 255;
                    c3009.f11489 = i10;
                    bArr4[i9] = bArr4[i10];
                    bArr4[i10] = b;
                    bArr2[i8] = (byte) (bArr4[(bArr4[i9] + b) & 255] ^ bArr[i8]);
                }
                return i;
            default:
                try {
                    return ((Cipher) this.f17030).update(bArr, 0, i, bArr2, 0);
                } catch (ShortBufferException e) {
                    throw new Exception(e);
                }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9117(byte[] bArr) {
        switch (this.f17031) {
            case 0:
                C0838 c0838 = (C0838) this.f17030;
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                System.arraycopy(bArr, 0, bArr2, 0, length);
                if (AbstractC2903.m6424(0, bArr)) {
                    throw new IllegalArgumentException("attempt to create weak DES key");
                }
                int length2 = bArr.length;
                for (int i = 0; i < length2; i += 8) {
                    if (AbstractC2903.m6424(i, bArr)) {
                        throw new IllegalArgumentException("attempt to create weak DESede key");
                    }
                }
                c0838.m2978();
                C3010 c3010 = (C3010) c0838.f3576;
                if (length > 8) {
                    throw new IllegalArgumentException("DES key too long - should be 8 bytes");
                }
                int[] iArr = new int[32];
                boolean[] zArr = new boolean[56];
                boolean[] zArr2 = new boolean[56];
                for (int i2 = 0; i2 < 56; i2++) {
                    byte b = C3010.f11496[i2];
                    zArr[i2] = (C3010.f11503[b & 7] & bArr2[b >>> 3]) != 0;
                }
                for (int i3 = 0; i3 < 16; i3++) {
                    int i4 = i3 << 1;
                    int i5 = i4 + 1;
                    iArr[i5] = 0;
                    iArr[i4] = 0;
                    int i6 = 0;
                    while (true) {
                        byte[] bArr3 = C3010.f11498;
                        if (i6 < 28) {
                            int i7 = bArr3[i3] + i6;
                            if (i7 < 28) {
                                zArr2[i6] = zArr[i7];
                            } else {
                                zArr2[i6] = zArr[i7 - 28];
                            }
                            i6++;
                        } else {
                            for (int i8 = 28; i8 < 56; i8++) {
                                int i9 = bArr3[i3] + i8;
                                if (i9 < 56) {
                                    zArr2[i8] = zArr[i9];
                                } else {
                                    zArr2[i8] = zArr[i9 - 28];
                                }
                            }
                            for (int i10 = 0; i10 < 24; i10++) {
                                byte[] bArr4 = C3010.f11505;
                                boolean z = zArr2[bArr4[i10]];
                                int[] iArr2 = C3010.f11494;
                                if (z) {
                                    iArr[i4] = iArr[i4] | iArr2[i10];
                                }
                                if (zArr2[bArr4[i10 + 24]]) {
                                    iArr[i5] = iArr[i5] | iArr2[i10];
                                }
                            }
                        }
                    }
                }
                for (int i11 = 0; i11 != 32; i11 += 2) {
                    int i12 = iArr[i11];
                    int i13 = i11 + 1;
                    int i14 = iArr[i13];
                    iArr[i11] = ((16515072 & i14) >>> 10) | ((i12 & 16515072) << 6) | ((i12 & 4032) << 10) | ((i14 & 4032) >>> 6);
                    iArr[i13] = ((i12 & 63) << 16) | ((i12 & 258048) << 12) | ((258048 & i14) >>> 4) | (i14 & 63);
                }
                c3010.f11506 = iArr;
                return;
            case 1:
                C3009 c3009 = (C3009) this.f17030;
                int length3 = bArr.length;
                byte[] bArr5 = new byte[length3];
                System.arraycopy(bArr, 0, bArr5, 0, length3);
                c3009.f11490 = bArr5;
                c3009.m6539(bArr5);
                return;
            default:
                Cipher cipher = (Cipher) this.f17030;
                try {
                    cipher.init(1, new SecretKeySpec(bArr, cipher.getAlgorithm().split("/")[0]));
                    return;
                } catch (InvalidKeyException e) {
                    throw new Exception(e);
                }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m9118(int i, byte[] bArr) {
        switch (this.f17031) {
            case 0:
                try {
                    return ((C0838) this.f17030).m2979(i, bArr);
                } catch (InvalidCipherTextException e) {
                    throw new Exception(e);
                }
            case 1:
                C3009 c3009 = (C3009) this.f17030;
                c3009.m6539(c3009.f11490);
                return 0;
            default:
                try {
                    return ((Cipher) this.f17030).doFinal(bArr, i);
                } catch (BadPaddingException | IllegalBlockSizeException | ShortBufferException e2) {
                    throw new Exception(e2);
                }
        }
    }
}
