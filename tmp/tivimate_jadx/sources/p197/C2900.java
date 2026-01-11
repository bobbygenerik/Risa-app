package p197;

import java.nio.charset.Charset;
import p307.AbstractC3740;
import p317.AbstractC3913;

/* renamed from: ˎʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2900 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10936;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f10935 = {0, 0};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2900 f10933 = new C2900(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2900 f10934 = new C2900(0);

    public /* synthetic */ C2900(int i) {
        this.f10936 = i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m6400(AbstractC2901 abstractC2901, int i, Charset charset) {
        int i2 = i * 2;
        byte[] bArr = new byte[i2];
        abstractC2901.m6411(i2, bArr);
        return new String(bArr, charset);
    }

    public final String toString() {
        switch (this.f10936) {
            case 0:
                return "big endian";
            default:
                return "little endian";
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6401(AbstractC2901 abstractC2901, String str) {
        switch (this.f10936) {
            case 0:
                byte[] bytes = str.getBytes(AbstractC3913.f15174);
                abstractC2901.getClass();
                abstractC2901.mo6415(bytes.length, bytes);
                return;
            default:
                byte[] bytes2 = str.getBytes(AbstractC3913.f15172);
                abstractC2901.getClass();
                abstractC2901.mo6415(bytes2.length, bytes2);
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m6402(AbstractC2901 abstractC2901) {
        long j;
        long j2;
        long j3;
        switch (this.f10936) {
            case 0:
                abstractC2901.getClass();
                byte[] bArr = new byte[4];
                abstractC2901.m6411(4, bArr);
                j = ((bArr[0] << 24) & 4278190080L) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280);
                j2 = bArr[3];
                j3 = 255;
                break;
            default:
                abstractC2901.getClass();
                byte[] bArr2 = new byte[4];
                abstractC2901.m6411(4, bArr2);
                j = (bArr2[0] & 255) | ((bArr2[1] << 8) & 65280) | ((bArr2[2] << 16) & 16711680);
                j2 = bArr2[3] << 24;
                j3 = 4278190080L;
                break;
        }
        return (j2 & j3) | j;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long m6403(AbstractC2901 abstractC2901) {
        switch (this.f10936) {
            case 0:
                long m6402 = (m6402(abstractC2901) << 32) + (m6402(abstractC2901) & 4294967295L);
                if (m6402 >= 0) {
                    return m6402;
                }
                throw new Exception("Cannot handle values > 9223372036854775807");
            default:
                long m64022 = (m6402(abstractC2901) & 4294967295L) + (m6402(abstractC2901) << 32);
                if (m64022 >= 0) {
                    return m64022;
                }
                throw new Exception("Cannot handle values > 9223372036854775807");
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6404(AbstractC2901 abstractC2901, int i) {
        switch (this.f10936) {
            case 0:
                if (i < 0 || i > 65535) {
                    throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid uint16 value: "));
                }
                abstractC2901.mo6415(2, new byte[]{(byte) (i >> 8), (byte) i});
                return;
            default:
                if (i < 0 || i > 65535) {
                    throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid uint16 value: "));
                }
                abstractC2901.mo6415(2, new byte[]{(byte) i, (byte) (i >> 8)});
                return;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6405(AbstractC2901 abstractC2901, long j) {
        switch (this.f10936) {
            case 0:
                if (j < 0) {
                    throw new IllegalArgumentException(AbstractC3740.m7926("Invalid uint64 value: ", j));
                }
                m6408(abstractC2901, j);
                return;
            default:
                if (j < 0) {
                    throw new IllegalArgumentException(AbstractC3740.m7926("Invalid uint64 value: ", j));
                }
                m6408(abstractC2901, j);
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m6406(AbstractC2901 abstractC2901) {
        int i;
        int i2;
        switch (this.f10936) {
            case 0:
                abstractC2901.getClass();
                byte[] bArr = new byte[2];
                abstractC2901.m6411(2, bArr);
                i = (bArr[0] << 8) & 65280;
                i2 = bArr[1] & 255;
                break;
            default:
                abstractC2901.getClass();
                byte[] bArr2 = new byte[2];
                abstractC2901.m6411(2, bArr2);
                i = bArr2[0] & 255;
                i2 = (bArr2[1] << 8) & 65280;
                break;
        }
        return i | i2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m6407(AbstractC2901 abstractC2901) {
        switch (this.f10936) {
            case 0:
                abstractC2901.getClass();
                abstractC2901.m6411(8, new byte[8]);
                long j = 0;
                for (int i = 0; i < 8; i++) {
                    j = (j << 8) | (r1[i] & 255);
                }
                return j;
            default:
                abstractC2901.getClass();
                abstractC2901.m6411(8, new byte[8]);
                long j2 = 0;
                for (int i2 = 7; i2 >= 0; i2--) {
                    j2 = (j2 << 8) | (r1[i2] & 255);
                }
                return j2;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6408(AbstractC2901 abstractC2901, long j) {
        switch (this.f10936) {
            case 0:
                abstractC2901.mo6415(8, new byte[]{(byte) (j >> 56), (byte) (j >> 48), (byte) (j >> 40), (byte) (j >> 32), (byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j});
                return;
            default:
                abstractC2901.mo6415(8, new byte[]{(byte) j, (byte) (j >> 8), (byte) (j >> 16), (byte) (j >> 24), (byte) (j >> 32), (byte) (j >> 40), (byte) (j >> 48), (byte) (j >> 56)});
                return;
        }
    }
}
