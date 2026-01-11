package p420;

import android.media.MediaCodec;
import android.os.Build;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p004.C0796;
import p127.C2162;
import p171.C2634;
import p305.AbstractC3712;
import p305.C3732;
import p364.C4443;
import p364.C4451;
import p421.C4994;
import p421.C4996;
import p421.C4999;

/* renamed from: ﹳᵢ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4968 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f18505;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0796 f18506;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C0796 f18507;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f18508;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18509;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4443 f18510;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C0796 f18511;

    public C4968(C4443 c4443) {
        this.f18510 = c4443;
        int i = c4443.f16599;
        this.f18509 = i;
        this.f18505 = new C3732(32);
        C0796 c0796 = new C0796(i, 0L);
        this.f18506 = c0796;
        this.f18507 = c0796;
        this.f18511 = c0796;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C0796 m9790(C0796 c0796, long j, ByteBuffer byteBuffer, int i) {
        while (j >= c0796.f3354) {
            c0796 = (C0796) c0796.f3353;
        }
        while (i > 0) {
            int min = Math.min(i, (int) (c0796.f3354 - j));
            C4451 c4451 = (C4451) c0796.f3351;
            byteBuffer.put(c4451.f16669, ((int) (j - c0796.f3352)) + c4451.f16668, min);
            i -= min;
            j += min;
            if (j == c0796.f3354) {
                c0796 = (C0796) c0796.f3353;
            }
        }
        return c0796;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C0796 m9791(C0796 c0796, long j, byte[] bArr, int i) {
        while (j >= c0796.f3354) {
            c0796 = (C0796) c0796.f3353;
        }
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (c0796.f3354 - j));
            C4451 c4451 = (C4451) c0796.f3351;
            System.arraycopy(c4451.f16669, ((int) (j - c0796.f3352)) + c4451.f16668, bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == c0796.f3354) {
                c0796 = (C0796) c0796.f3353;
            }
        }
        return c0796;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0796 m9792(C0796 c0796, C4996 c4996, C2162 c2162, C3732 c3732) {
        if (c4996.m3177(1073741824)) {
            long j = c2162.f8424;
            int i = 1;
            c3732.m7886(1);
            C0796 m9791 = m9791(c0796, j, c3732.f14534, 1);
            long j2 = j + 1;
            byte b = c3732.f14534[0];
            boolean z = (b & 128) != 0;
            int i2 = b & Byte.MAX_VALUE;
            C4994 c4994 = c4996.f18667;
            byte[] bArr = c4994.f18664;
            if (bArr == null) {
                c4994.f18664 = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            c0796 = m9791(m9791, j2, c4994.f18664, i2);
            long j3 = j2 + i2;
            if (z) {
                c3732.m7886(2);
                c0796 = m9791(c0796, j3, c3732.f14534, 2);
                j3 += 2;
                i = c3732.m7895();
            }
            int[] iArr = c4994.f18659;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = c4994.f18660;
            if (iArr2 == null || iArr2.length < i) {
                iArr2 = new int[i];
            }
            if (z) {
                int i3 = i * 6;
                c3732.m7886(i3);
                c0796 = m9791(c0796, j3, c3732.f14534, i3);
                j3 += i3;
                c3732.m7896(0);
                for (int i4 = 0; i4 < i; i4++) {
                    iArr[i4] = c3732.m7895();
                    iArr2[i4] = c3732.m7878();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = c2162.f8425 - ((int) (j3 - c2162.f8424));
            }
            C2634 c2634 = (C2634) c2162.f8423;
            String str = AbstractC3712.f14481;
            byte[] bArr2 = c2634.f9986;
            byte[] bArr3 = c4994.f18664;
            int i5 = c2634.f9987;
            int i6 = c2634.f9984;
            int i7 = c2634.f9985;
            c4994.f18665 = i;
            c4994.f18659 = iArr;
            c4994.f18660 = iArr2;
            c4994.f18663 = bArr2;
            c4994.f18664 = bArr3;
            c4994.f18657 = i5;
            c4994.f18661 = i6;
            c4994.f18662 = i7;
            MediaCodec.CryptoInfo cryptoInfo = c4994.f18656;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i5;
            if (Build.VERSION.SDK_INT >= 24) {
                C4999 c4999 = c4994.f18658;
                c4999.getClass();
                C4999.m9851(c4999, i6, i7);
            }
            long j4 = c2162.f8424;
            int i8 = (int) (j3 - j4);
            c2162.f8424 = j4 + i8;
            c2162.f8425 -= i8;
        }
        if (!c4996.m3177(268435456)) {
            c4996.m9843(c2162.f8425);
            return m9790(c0796, c2162.f8424, c4996.f18672, c2162.f8425);
        }
        c3732.m7886(4);
        C0796 m97912 = m9791(c0796, c2162.f8424, c3732.f14534, 4);
        int m7878 = c3732.m7878();
        c2162.f8424 += 4;
        c2162.f8425 -= 4;
        c4996.m9843(m7878);
        C0796 m9790 = m9790(m97912, c2162.f8424, c4996.f18672, m7878);
        c2162.f8424 += m7878;
        int i9 = c2162.f8425 - m7878;
        c2162.f8425 = i9;
        ByteBuffer byteBuffer = c4996.f18668;
        if (byteBuffer == null || byteBuffer.capacity() < i9) {
            c4996.f18668 = ByteBuffer.allocate(i9);
        } else {
            c4996.f18668.clear();
        }
        return m9790(m9790, c2162.f8424, c4996.f18668, c2162.f8425);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9793(int i) {
        C4451 c4451;
        C0796 c0796 = this.f18511;
        if (((C4451) c0796.f3351) == null) {
            C4443 c4443 = this.f18510;
            synchronized (c4443) {
                try {
                    int i2 = c4443.f16597 + 1;
                    c4443.f16597 = i2;
                    int i3 = c4443.f16598;
                    if (i3 > 0) {
                        C4451[] c4451Arr = c4443.f16601;
                        int i4 = i3 - 1;
                        c4443.f16598 = i4;
                        c4451 = c4451Arr[i4];
                        c4451.getClass();
                        c4443.f16601[c4443.f16598] = null;
                    } else {
                        C4451 c44512 = new C4451(0, new byte[c4443.f16599]);
                        C4451[] c4451Arr2 = c4443.f16601;
                        if (i2 > c4451Arr2.length) {
                            c4443.f16601 = (C4451[]) Arrays.copyOf(c4451Arr2, c4451Arr2.length * 2);
                        }
                        c4451 = c44512;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            C0796 c07962 = new C0796(this.f18509, this.f18511.f3354);
            c0796.f3351 = c4451;
            c0796.f3353 = c07962;
        }
        return Math.min(i, (int) (this.f18511.f3354 - this.f18508));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9794(long j) {
        C0796 c0796;
        if (j == -1) {
            return;
        }
        while (true) {
            c0796 = this.f18506;
            if (j < c0796.f3354) {
                break;
            }
            C4443 c4443 = this.f18510;
            C4451 c4451 = (C4451) c0796.f3351;
            synchronized (c4443) {
                C4451[] c4451Arr = c4443.f16601;
                int i = c4443.f16598;
                c4443.f16598 = i + 1;
                c4451Arr[i] = c4451;
                c4443.f16597--;
                c4443.notifyAll();
            }
            C0796 c07962 = this.f18506;
            c07962.f3351 = null;
            C0796 c07963 = (C0796) c07962.f3353;
            c07962.f3353 = null;
            this.f18506 = c07963;
        }
        if (this.f18507.f3352 < c0796.f3352) {
            this.f18507 = c0796;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9795(C0796 c0796) {
        if (((C4451) c0796.f3351) == null) {
            return;
        }
        C4443 c4443 = this.f18510;
        synchronized (c4443) {
            C0796 c07962 = c0796;
            while (c07962 != null) {
                try {
                    C4451[] c4451Arr = c4443.f16601;
                    int i = c4443.f16598;
                    c4443.f16598 = i + 1;
                    C4451 c4451 = (C4451) c07962.f3351;
                    c4451.getClass();
                    c4451Arr[i] = c4451;
                    c4443.f16597--;
                    c07962 = (C0796) c07962.f3353;
                    if (c07962 == null || ((C4451) c07962.f3351) == null) {
                        c07962 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c4443.notifyAll();
        }
        c0796.f3351 = null;
        c0796.f3353 = null;
    }
}
