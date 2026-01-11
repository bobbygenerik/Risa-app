package p332;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.Calendar;
import p261.AbstractC3409;
import p261.C3406;
import p261.C3410;
import p288.AbstractC3596;
import p288.C3595;

/* renamed from: ᴵﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4200 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m8602(InputStream inputStream, byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Negative offset");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (i + i2 > bArr.length) {
            throw new IllegalArgumentException("Length greater than buffer size");
        }
        while (true) {
            if (i3 == i2) {
                break;
            }
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                i3 += read;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static long m8603(long j) {
        int i = (int) ((j >> 5) & 63);
        int i2 = (int) ((j >> 11) & 31);
        int i3 = (int) ((j >> 16) & 31);
        int i4 = (int) (((j >> 21) & 15) - 1);
        Calendar calendar = Calendar.getInstance();
        calendar.set((int) (((j >> 25) & 127) + 1980), i4, i3, i2, i, (int) ((j << 1) & 62));
        calendar.set(14, 0);
        return calendar.getTime().getTime() + (j >> 32);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static byte m8604(byte b, int i) {
        return (byte) (b | (1 << i));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long m8605(long j) {
        long j2;
        if (j < 0) {
            return 2162688L;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        if (i < 1980) {
            j2 = 2162688;
        } else {
            j2 = (calendar.get(13) >> 1) | ((i - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
        }
        if (j2 != 2162688) {
            return j2 + ((j % 2000) << 32);
        }
        return 2162688L;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m8606(AbstractC3409 abstractC3409) {
        int i = abstractC3409.f13377;
        if (i != 3) {
            return i;
        }
        C3410 c3410 = abstractC3409.f13372;
        if (c3410 != null) {
            return c3410.f13385;
        }
        throw new IOException("AesExtraDataRecord not present in local header for aes encrypted data");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static byte m8607(byte b, int i) {
        return (byte) (b & (~(1 << i)));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m8608(String str) {
        return str != null && str.trim().length() > 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m8609(InputStream inputStream, byte[] bArr) {
        int read = inputStream.read(bArr);
        if (read == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (read == bArr.length) {
            return read;
        }
        if (read < 0) {
            throw new IOException("Invalid readLength");
        }
        int i = 0;
        if (read != 0) {
            int length = bArr.length - read;
            for (int i2 = 1; read < bArr.length && i != -1 && i2 < 15; i2++) {
                i = inputStream.read(bArr, read, length);
                if (i > 0) {
                    read += i;
                    length -= i;
                }
            }
            i = read;
        }
        if (i == bArr.length) {
            return i;
        }
        throw new IOException("Cannot read fully into byte buffer");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [ٴـ.ﾞʻ, ٴـ.ᵔᵢ, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v4, types: [ٴـ.ᵔᵢ, java.io.InputStream, ٴـ.ﾞᴵ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static AbstractC3596 m8610(C3406 c3406) {
        if (c3406.f13353.getName().endsWith(".zip.001")) {
            File file = c3406.f13353;
            ?? inputStream = new InputStream();
            inputStream.f14072 = new C3595(file, AbstractC4197.m8598(file));
            return inputStream;
        }
        File file2 = c3406.f13353;
        boolean z = c3406.f13354;
        int i = c3406.f13350.f13331;
        ?? inputStream2 = new InputStream();
        inputStream2.f14071 = 0;
        inputStream2.f14069 = new byte[1];
        inputStream2.f14067 = new RandomAccessFile(file2, "r");
        inputStream2.f14070 = file2;
        inputStream2.f14068 = z;
        inputStream2.f14066 = i;
        if (z) {
            inputStream2.f14071 = i;
        }
        return inputStream2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m8611(char[] cArr, boolean z) {
        int i = 0;
        if (!z) {
            byte[] bArr = new byte[cArr.length];
            while (i < cArr.length) {
                bArr[i] = (byte) cArr[i];
                i++;
            }
            return bArr;
        }
        try {
            ByteBuffer encode = AbstractC4198.f15642.encode(CharBuffer.wrap(cArr));
            byte[] bArr2 = new byte[encode.limit()];
            encode.get(bArr2);
            return bArr2;
        } catch (Exception unused) {
            byte[] bArr3 = new byte[cArr.length];
            while (i < cArr.length) {
                bArr3[i] = (byte) cArr[i];
                i++;
            }
            return bArr3;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean m8612(byte b, int i) {
        return ((1 << i) & ((long) b)) != 0;
    }
}
