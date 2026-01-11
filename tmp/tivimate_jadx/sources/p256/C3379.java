package p256;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.security.InvalidKeyException;

/* renamed from: יٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3379 extends AbstractC0016 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f13200;

    public C3379(byte[] bArr, int i, int i2) {
        this.f13200 = i2;
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f396 = AbstractC3374.m7239(bArr);
        this.f397 = i;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼˎ */
    public final int mo228() {
        switch (this.f13200) {
            case 0:
                return 12;
            default:
                return 24;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽ */
    public final int[] mo229(int[] iArr, int i) {
        switch (this.f13200) {
            case 0:
                if (iArr.length != 3) {
                    throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length * 32)));
                }
                int[] iArr2 = new int[16];
                int[] iArr3 = (int[]) this.f396;
                int[] iArr4 = AbstractC3374.f13188;
                System.arraycopy(iArr4, 0, iArr2, 0, iArr4.length);
                System.arraycopy(iArr3, 0, iArr2, iArr4.length, 8);
                iArr2[12] = i;
                System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
                return iArr2;
            default:
                if (iArr.length != 6) {
                    throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length * 32)));
                }
                int[] iArr5 = new int[16];
                int[] m7240 = AbstractC3374.m7240((int[]) this.f396, iArr);
                int[] iArr6 = AbstractC3374.f13188;
                System.arraycopy(iArr6, 0, iArr5, 0, iArr6.length);
                System.arraycopy(m7240, 0, iArr5, iArr6.length, 8);
                iArr5[12] = i;
                iArr5[13] = 0;
                iArr5[14] = iArr[4];
                iArr5[15] = iArr[5];
                return iArr5;
        }
    }
}
