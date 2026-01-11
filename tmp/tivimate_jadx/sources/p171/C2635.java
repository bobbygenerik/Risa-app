package p171;

import java.nio.ByteOrder;
import java.util.Collections;
import p012.C0881;
import p055.AbstractC1464;
import p055.C1476;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3712;
import ﹶﾞ.ⁱי;

/* renamed from: ˊﾞ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2635 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f9988;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f9989;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f9990;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f9991;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f9992;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ⁱי f9993;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f9994;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f9995;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f9996;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9997;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C1476 f9998;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f9999;

    public C2635(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, ⁱי r10, C1476 c1476) {
        this.f9997 = i;
        this.f9996 = i2;
        this.f9989 = i3;
        this.f9991 = i4;
        this.f9992 = i5;
        this.f9999 = m5891(i5);
        this.f9994 = i6;
        this.f9995 = i7;
        this.f9988 = m5892(i7);
        this.f9990 = j;
        this.f9993 = r10;
        this.f9998 = c1476;
    }

    public C2635(int i, byte[] bArr) {
        C0881 c0881 = new C0881(bArr.length, bArr);
        c0881.m3094(i * 8);
        this.f9997 = c0881.m3097(16);
        this.f9996 = c0881.m3097(16);
        this.f9989 = c0881.m3097(24);
        this.f9991 = c0881.m3097(24);
        int m3097 = c0881.m3097(20);
        this.f9992 = m3097;
        this.f9999 = m5891(m3097);
        this.f9994 = c0881.m3097(3) + 1;
        int m30972 = c0881.m3097(5) + 1;
        this.f9995 = m30972;
        this.f9988 = m5892(m30972);
        this.f9990 = c0881.m3098(36);
        this.f9993 = null;
        this.f9998 = null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m5891(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m5892(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 20) {
            return 5;
        }
        if (i != 24) {
            return i != 32 ? -1 : 7;
        }
        return 6;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1495 m5893(byte[] bArr, C1476 c1476) {
        bArr[4] = Byte.MIN_VALUE;
        int i = this.f9991;
        if (i <= 0) {
            i = -1;
        }
        C1476 c14762 = this.f9998;
        if (c14762 != null) {
            c1476 = c14762.m4281(c1476);
        }
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("audio/flac");
        c1490.f5877 = i;
        c1490.f5873 = this.f9994;
        c1490.f5864 = this.f9992;
        String str = AbstractC3712.f14481;
        c1490.f5870 = AbstractC3712.m7771(this.f9995, ByteOrder.LITTLE_ENDIAN);
        c1490.f5851 = Collections.singletonList(bArr);
        c1490.f5871 = c1476;
        return new C1495(c1490);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m5894() {
        long j = this.f9990;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.f9992;
    }
}
