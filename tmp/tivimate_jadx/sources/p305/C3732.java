package p305;

import com.google.android.gms.internal.play_billing.י;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p017.AbstractC0997;
import p307.AbstractC3740;
import ˈˊ.ˉˆ;
import ˉᵎ.ⁱˊ;

/* renamed from: ᐧˎ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3732 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final char[] f14529 = {'\r', '\n'};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final char[] f14530 = {'\n'};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final AbstractC0997 f14531 = AbstractC0997.m3275(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f14532;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f14533;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte[] f14534;

    public C3732() {
        this.f14534 = AbstractC3712.f14480;
    }

    public C3732(int i) {
        this.f14534 = new byte[i];
        this.f14532 = i;
    }

    public C3732(int i, byte[] bArr) {
        this.f14534 = bArr;
        this.f14532 = i;
    }

    public C3732(byte[] bArr) {
        this.f14534 = bArr;
        this.f14532 = bArr.length;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m7870(Charset charset) {
        AbstractC3731.m7843("Unsupported charset: " + charset, f14531.contains(charset));
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m7871(byte b) {
        return (b & 192) == 128;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m7872(int i, int i2, int i3, int i4) {
        byte b = (byte) i3;
        return ˉˆ.ˉˆ((byte) 0, ⁱˊ.ˈ(((i & 7) << 2) | ((i2 & 48) >> 4)), ⁱˊ.ˈ(((((byte) i2) & 15) << 4) | ((b & 60) >> 2)), ⁱˊ.ˈ(((b & 3) << 6) | (((byte) i4) & 63)));
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final short m7873() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.f14533 = i + 2;
        return (short) ((bArr[i2] & 255) | i3);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m7874() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        this.f14533 = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7875(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f14534, this.f14533, bArr, i, i2);
        this.f14533 += i2;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final long m7876() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        this.f14533 = i + 1;
        this.f14533 = i + 2;
        long j = (bArr[i] & 255) | ((bArr[r2] & 255) << 8);
        this.f14533 = i + 3;
        long j2 = j | ((bArr[r7] & 255) << 16);
        this.f14533 = i + 4;
        return ((bArr[r2] & 255) << 24) | j2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7877(int i) {
        byte[] bArr = this.f14534;
        if (i > bArr.length) {
            this.f14534 = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m7878() {
        int m7893 = m7893();
        if (m7893 >= 0) {
            return m7893;
        }
        throw new IllegalStateException(AbstractC3740.m7932(m7893, "Top bit not zero: "));
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final String m7879(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f14533;
        int i3 = (i2 + i) - 1;
        int i4 = (i3 >= this.f14532 || this.f14534[i3] != 0) ? i : i - 1;
        byte[] bArr = this.f14534;
        String str = AbstractC3712.f14481;
        String str2 = new String(bArr, i2, i4, StandardCharsets.UTF_8);
        this.f14533 += i;
        return str2;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long m7880() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        this.f14533 = i + 1;
        this.f14533 = i + 2;
        long j = ((bArr[i] & 255) << 24) | ((bArr[r2] & 255) << 16);
        this.f14533 = i + 3;
        long j2 = j | ((bArr[r7] & 255) << 8);
        this.f14533 = i + 4;
        return (bArr[r2] & 255) | j2;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m7881() {
        return (m7874() << 21) | (m7874() << 14) | (m7874() << 7) | m7874();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final char m7882(Charset charset, char[] cArr) {
        int m7898;
        if (m7904() >= m7870(charset) && (m7898 = m7898(charset)) != 0) {
            long j = m7898 >>> 8;
            י.ˑﹳ(j, "out of range: %s", (j >> 32) == 0);
            int i = (int) j;
            if (!Character.isSupplementaryCodePoint(i)) {
                long j2 = i;
                char c = (char) j2;
                י.ˑﹳ(j2, "Out of range: %s", ((long) c) == j2);
                for (char c2 : cArr) {
                    if (c2 == c) {
                        this.f14533 = ˉˆ.ᵔᵢ(m7898 & 255) + this.f14533;
                        return c;
                    }
                }
            }
        }
        return (char) 0;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long m7883() {
        long m7889 = m7889();
        if (m7889 >= 0) {
            return m7889;
        }
        throw new IllegalStateException(AbstractC3740.m7926("Top bit not zero: ", m7889));
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int m7884() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.f14533 = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        int i6 = i + 3;
        this.f14533 = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.f14533 = i + 4;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final short m7885() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = bArr[i] & 255;
        this.f14533 = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m7886(int i) {
        byte[] bArr = this.f14534;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        m7897(i, bArr);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long m7887() {
        int i;
        int i2;
        long j = this.f14534[this.f14533];
        int i3 = 7;
        while (true) {
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= r6 - 1;
                i2 = 7 - i3;
            } else if (i3 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 == 0) {
            throw new NumberFormatException(AbstractC3740.m7926("Invalid UTF-8 sequence first byte: ", j));
        }
        for (i = 1; i < i2; i++) {
            if ((this.f14534[this.f14533 + i] & 192) != 128) {
                throw new NumberFormatException(AbstractC3740.m7926("Invalid UTF-8 sequence continuation byte: ", j));
            }
            j = (j << 6) | (r3 & 63);
        }
        this.f14533 += i2;
        return j;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final String m7888() {
        if (m7904() == 0) {
            return null;
        }
        int i = this.f14533;
        while (i < this.f14532 && this.f14534[i] != 0) {
            i++;
        }
        byte[] bArr = this.f14534;
        int i2 = this.f14533;
        String str = AbstractC3712.f14481;
        String str2 = new String(bArr, i2, i - i2, StandardCharsets.UTF_8);
        this.f14533 = i;
        if (i < this.f14532) {
            this.f14533 = i + 1;
        }
        return str2;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final long m7889() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        this.f14533 = i + 1;
        this.f14533 = i + 2;
        long j = ((bArr[i] & 255) << 56) | ((bArr[r2] & 255) << 48);
        this.f14533 = i + 3;
        long j2 = j | ((bArr[r7] & 255) << 40);
        this.f14533 = i + 4;
        long j3 = j2 | ((bArr[r2] & 255) << 32);
        this.f14533 = i + 5;
        long j4 = j3 | ((bArr[r7] & 255) << 24);
        this.f14533 = i + 6;
        long j5 = j4 | ((bArr[r2] & 255) << 16);
        this.f14533 = i + 7;
        long j6 = j5 | ((bArr[r7] & 255) << 8);
        this.f14533 = i + 8;
        return (bArr[r2] & 255) | j6;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final String m7890(int i, Charset charset) {
        String str = new String(this.f14534, this.f14533, i, charset);
        this.f14533 += i;
        return str;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m7891(int i) {
        AbstractC3731.m7849(i >= 0 && i <= this.f14534.length);
        this.f14532 = i;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Charset m7892() {
        if (m7904() >= 3) {
            byte[] bArr = this.f14534;
            int i = this.f14533;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.f14533 = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (m7904() < 2) {
            return null;
        }
        byte[] bArr2 = this.f14534;
        int i2 = this.f14533;
        byte b = bArr2[i2];
        if (b == -2 && bArr2[i2 + 1] == -1) {
            this.f14533 = i2 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b != -1 || bArr2[i2 + 1] != -2) {
            return null;
        }
        this.f14533 = i2 + 2;
        return StandardCharsets.UTF_16LE;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int m7893() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i + 2;
        this.f14533 = i4;
        int i5 = ((bArr[i2] & 255) << 16) | i3;
        int i6 = i + 3;
        this.f14533 = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.f14533 = i + 4;
        return (bArr[i6] & 255) | i7;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int m7894() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i + 2;
        this.f14533 = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.f14533 = i + 3;
        return (bArr[i4] & 255) | i5;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int m7895() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.f14533 = i + 2;
        return (bArr[i2] & 255) | i3;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m7896(int i) {
        AbstractC3731.m7849(i >= 0 && i <= this.f14532);
        this.f14533 = i;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m7897(int i, byte[] bArr) {
        this.f14534 = bArr;
        this.f14532 = i;
        this.f14533 = 0;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m7898(Charset charset) {
        int i;
        int i2;
        AbstractC3731.m7843("Unsupported charset: " + charset, f14531.contains(charset));
        if (m7904() < m7870(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.f14533 + ", limit=" + this.f14532);
        }
        int i3 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b = this.f14534[this.f14533];
            if ((b & 128) == 0) {
                i = b & 255;
                return (i << 8) | i3;
            }
            return 0;
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            byte b2 = this.f14534[this.f14533];
            int i4 = (b2 & 128) == 0 ? 1 : ((b2 & 224) == 192 && m7904() >= 2 && m7871(this.f14534[this.f14533 + 1])) ? 2 : ((this.f14534[this.f14533] & 240) == 224 && m7904() >= 3 && m7871(this.f14534[this.f14533 + 1]) && m7871(this.f14534[this.f14533 + 2])) ? 3 : ((this.f14534[this.f14533] & 248) == 240 && m7904() >= 4 && m7871(this.f14534[this.f14533 + 1]) && m7871(this.f14534[this.f14533 + 2]) && m7871(this.f14534[this.f14533 + 3])) ? 4 : 0;
            if (i4 == 1) {
                i2 = this.f14534[this.f14533] & 255;
            } else if (i4 == 2) {
                byte[] bArr = this.f14534;
                int i5 = this.f14533;
                i2 = m7872(0, 0, bArr[i5], bArr[i5 + 1]);
            } else {
                if (i4 != 3) {
                    if (i4 == 4) {
                        byte[] bArr2 = this.f14534;
                        int i6 = this.f14533;
                        i2 = m7872(bArr2[i6], bArr2[i6 + 1], bArr2[i6 + 2], bArr2[i6 + 3]);
                    }
                    return 0;
                }
                byte[] bArr3 = this.f14534;
                int i7 = this.f14533;
                i2 = m7872(0, bArr3[i7] & 15, bArr3[i7 + 1], bArr3[i7 + 2]);
            }
            i3 = i4;
            i = i2;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char m7907 = m7907(0, byteOrder);
            if (!Character.isHighSurrogate(m7907) || m7904() < 4) {
                i = m7907;
                i3 = 2;
            } else {
                i = Character.toCodePoint(m7907, m7907(2, byteOrder));
                i3 = 4;
            }
        }
        return (i << 8) | i3;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long m7899() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        this.f14533 = i + 1;
        this.f14533 = i + 2;
        this.f14533 = i + 3;
        long j = (bArr[i] & 255) | ((bArr[r2] & 255) << 8) | ((bArr[r7] & 255) << 16);
        this.f14533 = i + 4;
        long j2 = j | ((bArr[r8] & 255) << 24);
        this.f14533 = i + 5;
        long j3 = j2 | ((bArr[r7] & 255) << 32);
        this.f14533 = i + 6;
        long j4 = j3 | ((bArr[r8] & 255) << 40);
        this.f14533 = i + 7;
        long j5 = j4 | ((bArr[r7] & 255) << 48);
        this.f14533 = i + 8;
        return ((bArr[r8] & 255) << 56) | j5;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m7900(int i) {
        m7896(this.f14533 + i);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int m7901() {
        return this.f14534[this.f14533] & 255;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m7902() {
        int m7884 = m7884();
        if (m7884 >= 0) {
            return m7884;
        }
        throw new IllegalStateException(AbstractC3740.m7932(m7884, "Top bit not zero: "));
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int m7903() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.f14533 = i + 2;
        int i4 = (bArr[i2] & 255) | i3;
        this.f14533 = i + 4;
        return i4;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7904() {
        return Math.max(this.f14532 - this.f14533, 0);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m7905() {
        byte[] bArr = this.f14534;
        int i = this.f14533;
        int i2 = i + 1;
        this.f14533 = i2;
        int i3 = bArr[i] & 255;
        this.f14533 = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String m7906(Charset charset) {
        int i;
        AbstractC3731.m7843("Unsupported charset: " + charset, f14531.contains(charset));
        if (m7904() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            m7892();
        }
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(charset2)) {
            i = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i = 2;
        }
        int i2 = this.f14533;
        while (true) {
            int i3 = this.f14532;
            if (i2 >= i3 - (i - 1)) {
                i2 = i3;
                break;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && AbstractC3712.m7779(this.f14534[i2])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr = this.f14534;
                if (bArr[i2] == 0 && AbstractC3712.m7779(bArr[i2 + 1])) {
                    break;
                }
            }
            if (charset.equals(StandardCharsets.UTF_16LE)) {
                byte[] bArr2 = this.f14534;
                if (bArr2[i2 + 1] == 0 && AbstractC3712.m7779(bArr2[i2])) {
                    break;
                }
            }
            i2 += i;
        }
        String m7890 = m7890(i2 - this.f14533, charset);
        if (this.f14533 != this.f14532 && m7882(charset, f14529) == '\r') {
            m7882(charset, f14530);
        }
        return m7890;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final char m7907(int i, ByteOrder byteOrder) {
        byte b;
        byte b2;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.f14534;
            int i2 = this.f14533 + i;
            b = bArr[i2];
            b2 = bArr[i2 + 1];
        } else {
            byte[] bArr2 = this.f14534;
            int i3 = this.f14533 + i;
            b = bArr2[i3 + 1];
            b2 = bArr2[i3];
        }
        return (char) ((b << 8) | (b2 & 255));
    }
}
