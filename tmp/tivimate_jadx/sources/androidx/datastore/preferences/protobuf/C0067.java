package androidx.datastore.preferences.protobuf;

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0067 extends android.support.v4.media.session.ⁱˊ {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C0010 f515;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f516;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final byte[] f517;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final OutputStream f518;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f519;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final Logger f514 = Logger.getLogger(C0067.class.getName());

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final boolean f513 = AbstractC0004.f356;

    public C0067(OutputStream outputStream, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int max = Math.max(i, 20);
        this.f517 = new byte[max];
        this.f519 = max;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.f518 = outputStream;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static int m379(int i) {
        return m383(i << 3);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static int m380(int i, C0054 c0054) {
        int m379 = m379(i);
        int size = c0054.size();
        return m383(size) + size + m379;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static int m381(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static int m382(String str) {
        int length;
        try {
            length = AbstractC0020.m234(str);
        } catch (C0039 unused) {
            length = str.getBytes(AbstractC0013.f389).length;
        }
        return m383(length) + length;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static int m383(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m384(int i) {
        m408(4);
        m386(i);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m385(int i, int i2) {
        m391((i << 3) | i2);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m386(int i) {
        int i2 = this.f516;
        int i3 = i2 + 1;
        this.f516 = i3;
        byte[] bArr = this.f517;
        bArr[i2] = (byte) (i & 255);
        int i4 = i2 + 2;
        this.f516 = i4;
        bArr[i3] = (byte) ((i >> 8) & 255);
        int i5 = i2 + 3;
        this.f516 = i5;
        bArr[i4] = (byte) ((i >> 16) & 255);
        this.f516 = i2 + 4;
        bArr[i5] = (byte) ((i >> 24) & 255);
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final void m387(int i, String str) {
        m407(i, 2);
        m388(str);
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m388(String str) {
        try {
            int length = str.length() * 3;
            int m383 = m383(length);
            int i = m383 + length;
            int i2 = this.f519;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int i3 = AbstractC0020.f402.ﾞᴵ(str, bArr, 0, length);
                m400(i3);
                m409(bArr, 0, i3);
                return;
            }
            if (i > i2 - this.f516) {
                m406();
            }
            int m3832 = m383(str.length());
            int i4 = this.f516;
            byte[] bArr2 = this.f517;
            try {
                if (m3832 == m383) {
                    int i5 = i4 + m3832;
                    this.f516 = i5;
                    int i6 = AbstractC0020.f402.ﾞᴵ(str, bArr2, i5, i2 - i5);
                    this.f516 = i4;
                    m391((i6 - i4) - m3832);
                    this.f516 = i6;
                } else {
                    int m234 = AbstractC0020.m234(str);
                    m391(m234);
                    this.f516 = AbstractC0020.f402.ﾞᴵ(str, bArr2, this.f516, m234);
                }
            } catch (C0039 e) {
                this.f516 = i4;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new CodedOutputStream$OutOfSpaceException(e2);
            }
        } catch (C0039 e3) {
            f514.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e3);
            byte[] bytes = str.getBytes(AbstractC0013.f389);
            try {
                m400(bytes.length);
                ـˆ(bytes, 0, bytes.length);
            } catch (IndexOutOfBoundsException e4) {
                throw new CodedOutputStream$OutOfSpaceException(e4);
            }
        }
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m389(byte b) {
        if (this.f516 == this.f519) {
            m406();
        }
        int i = this.f516;
        this.f516 = i + 1;
        this.f517[i] = b;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m390(int i, boolean z) {
        m408(11);
        m385(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        int i2 = this.f516;
        this.f516 = i2 + 1;
        this.f517[i2] = b;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m391(int i) {
        boolean z = f513;
        byte[] bArr = this.f517;
        if (z) {
            while ((i & (-128)) != 0) {
                int i2 = this.f516;
                this.f516 = i2 + 1;
                AbstractC0004.m157(bArr, i2, (byte) ((i | 128) & 255));
                i >>>= 7;
            }
            int i3 = this.f516;
            this.f516 = i3 + 1;
            AbstractC0004.m157(bArr, i3, (byte) i);
            return;
        }
        while ((i & (-128)) != 0) {
            int i4 = this.f516;
            this.f516 = i4 + 1;
            bArr[i4] = (byte) ((i | 128) & 255);
            i >>>= 7;
        }
        int i5 = this.f516;
        this.f516 = i5 + 1;
        bArr[i5] = (byte) i;
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m392(int i, int i2) {
        m408(20);
        m385(i, 0);
        if (i2 >= 0) {
            m391(i2);
        } else {
            m405(i2);
        }
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void m393(int i, AbstractC0063 abstractC0063, InterfaceC0006 interfaceC0006) {
        m407(i, 2);
        m400(abstractC0063.mo154(interfaceC0006));
        interfaceC0006.mo173(abstractC0063, this.f515);
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m394(int i, int i2) {
        m408(14);
        m385(i, 5);
        m386(i2);
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m395(C0054 c0054) {
        m400(c0054.size());
        ـˆ(c0054.f483, c0054.mo358(), c0054.size());
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final void m396(int i, long j) {
        m408(20);
        m385(i, 0);
        m405(j);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m397(int i, C0054 c0054) {
        m407(i, 2);
        m395(c0054);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m398(byte[] bArr, int i, int i2) {
        m409(bArr, i, i2);
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m399(int i, long j) {
        m408(18);
        m385(i, 1);
        m403(j);
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final void m400(int i) {
        m408(5);
        m391(i);
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final void m401(int i, int i2) {
        m408(20);
        m385(i, 0);
        m391(i2);
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m402(long j) {
        m408(10);
        m405(j);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m403(long j) {
        int i = this.f516;
        int i2 = i + 1;
        this.f516 = i2;
        byte[] bArr = this.f517;
        bArr[i] = (byte) (j & 255);
        int i3 = i + 2;
        this.f516 = i3;
        bArr[i2] = (byte) ((j >> 8) & 255);
        int i4 = i + 3;
        this.f516 = i4;
        bArr[i3] = (byte) ((j >> 16) & 255);
        int i5 = i + 4;
        this.f516 = i5;
        bArr[i4] = (byte) (255 & (j >> 24));
        int i6 = i + 5;
        this.f516 = i6;
        bArr[i5] = (byte) (((int) (j >> 32)) & 255);
        int i7 = i + 6;
        this.f516 = i7;
        bArr[i6] = (byte) (((int) (j >> 40)) & 255);
        int i8 = i + 7;
        this.f516 = i8;
        bArr[i7] = (byte) (((int) (j >> 48)) & 255);
        this.f516 = i + 8;
        bArr[i8] = (byte) (((int) (j >> 56)) & 255);
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m404(int i) {
        if (i >= 0) {
            m400(i);
        } else {
            m402(i);
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m405(long j) {
        boolean z = f513;
        byte[] bArr = this.f517;
        if (z) {
            while ((j & (-128)) != 0) {
                int i = this.f516;
                this.f516 = i + 1;
                AbstractC0004.m157(bArr, i, (byte) ((((int) j) | 128) & 255));
                j >>>= 7;
            }
            int i2 = this.f516;
            this.f516 = i2 + 1;
            AbstractC0004.m157(bArr, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            int i3 = this.f516;
            this.f516 = i3 + 1;
            bArr[i3] = (byte) ((((int) j) | 128) & 255);
            j >>>= 7;
        }
        int i4 = this.f516;
        this.f516 = i4 + 1;
        bArr[i4] = (byte) j;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m406() {
        this.f518.write(this.f517, 0, this.f516);
        this.f516 = 0;
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void m407(int i, int i2) {
        m400((i << 3) | i2);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m408(int i) {
        if (this.f519 - this.f516 < i) {
            m406();
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m409(byte[] bArr, int i, int i2) {
        int i3 = this.f516;
        int i4 = this.f519;
        int i5 = i4 - i3;
        byte[] bArr2 = this.f517;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.f516 += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f516 = i4;
        m406();
        if (i7 > i4) {
            this.f518.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.f516 = i7;
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m410(long j) {
        m408(8);
        m403(j);
    }
}
