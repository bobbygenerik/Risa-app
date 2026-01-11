package p348;

import java.lang.reflect.Array;

/* renamed from: ᵎᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4282 extends AbstractC4280 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final long[][] f15866 = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 4, 256);

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f15867;

    static {
        int i = 0;
        while (i < 4) {
            for (int i2 = 0; i2 < 256; i2++) {
                long j = i == 0 ? i2 : f15866[i - 1][i2];
                for (int i3 = 0; i3 < 8; i3++) {
                    j = (j & 1) == 1 ? (j >>> 1) ^ (-3932672073523589310L) : j >>> 1;
                }
                f15866[i][i2] = j;
            }
            i++;
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ˈ */
    public final void mo8659(byte[] bArr, int i, int i2) {
        long[][] jArr;
        int i3 = i2 + i;
        int i4 = i3 - 3;
        while (true) {
            jArr = f15866;
            if (i >= i4) {
                break;
            }
            long j = this.f15867;
            int i5 = (int) j;
            this.f15867 = (((j >>> 32) ^ (jArr[3][(i5 & 255) ^ (bArr[i] & 255)] ^ jArr[2][((i5 >>> 8) & 255) ^ (bArr[i + 1] & 255)])) ^ jArr[1][((i5 >>> 16) & 255) ^ (bArr[i + 2] & 255)]) ^ jArr[0][((i5 >>> 24) & 255) ^ (bArr[i + 3] & 255)];
            i += 4;
        }
        while (i < i3) {
            long[] jArr2 = jArr[0];
            int i6 = i + 1;
            int i7 = bArr[i] & 255;
            long j2 = this.f15867;
            this.f15867 = (j2 >>> 8) ^ jArr2[i7 ^ (((int) j2) & 255)];
            i = i6;
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ﹳٴ */
    public final byte[] mo8662() {
        byte[] bArr = {(byte) (~this.f15867), (byte) (r2 >>> 8), (byte) (r2 >>> 16), (byte) (r2 >>> 24), (byte) (r2 >>> 32), (byte) (r2 >>> 40), (byte) (r2 >>> 48), (byte) (r2 >>> 56)};
        this.f15867 = -1L;
        return bArr;
    }
}
