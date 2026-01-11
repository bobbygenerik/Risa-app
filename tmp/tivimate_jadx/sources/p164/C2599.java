package p164;

import android.support.v4.media.session.AbstractC0001;
import com.bumptech.glide.ˈ;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import p090.C1773;
import p307.AbstractC3740;
import p393.AbstractC4708;
import p430.AbstractC5096;
import p435.AbstractC5154;

/* renamed from: ˊᐧ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2599 implements InterfaceC2592, InterfaceC2590, Cloneable, ByteChannel {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C2577 f9834;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f9835;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public final Object clone() {
        ?? obj = new Object();
        if (this.f9835 == 0) {
            return obj;
        }
        C2577 c2577 = this.f9834;
        C2577 m5773 = c2577.m5773();
        obj.f9834 = m5773;
        m5773.f9781 = m5773;
        m5773.f9784 = m5773;
        for (C2577 c25772 = c2577.f9784; c25772 != c2577; c25772 = c25772.f9784) {
            m5773.f9781.m5775(c25772.m5773());
        }
        obj.f9835 = this.f9835;
        return obj;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, p164.InterfaceC2576
    public final void close() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2599)) {
            return false;
        }
        long j = this.f9835;
        C2599 c2599 = (C2599) obj;
        if (j != c2599.f9835) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        C2577 c2577 = this.f9834;
        C2577 c25772 = c2599.f9834;
        int i = c2577.f9782;
        int i2 = c25772.f9782;
        long j2 = 0;
        while (j2 < this.f9835) {
            long min = Math.min(c2577.f9778 - i, c25772.f9778 - i2);
            long j3 = 0;
            while (j3 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (c2577.f9783[i] != c25772.f9783[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == c2577.f9778) {
                c2577 = c2577.f9784;
                i = c2577.f9782;
            }
            if (i2 == c25772.f9778) {
                c25772 = c25772.f9784;
                i2 = c25772.f9782;
            }
            j2 += min;
        }
        return true;
    }

    @Override // p164.InterfaceC2590, p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
    }

    public final int hashCode() {
        C2577 c2577 = this.f9834;
        if (c2577 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = c2577.f9778;
            for (int i3 = c2577.f9782; i3 < i2; i3++) {
                i = (i * 31) + c2577.f9783[i3];
            }
            c2577 = c2577.f9784;
        } while (c2577 != this.f9834);
        return i;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        C2577 c2577 = this.f9834;
        if (c2577 == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), c2577.f9778 - c2577.f9782);
        byteBuffer.put(c2577.f9783, c2577.f9782, min);
        int i = c2577.f9782 + min;
        c2577.f9782 = i;
        this.f9835 -= min;
        if (i == c2577.f9778) {
            this.f9834 = c2577.m5776();
            AbstractC2570.m5744(c2577);
        }
        return min;
    }

    public final int read(byte[] bArr, int i, int i2) {
        ˈ.ᵔᵢ(bArr.length, i, i2);
        C2577 c2577 = this.f9834;
        if (c2577 == null) {
            return -1;
        }
        int min = Math.min(i2, c2577.f9778 - c2577.f9782);
        byte[] bArr2 = c2577.f9783;
        int i3 = c2577.f9782;
        System.arraycopy(bArr2, i3, bArr, i, (i3 + min) - i3);
        int i4 = c2577.f9782 + min;
        c2577.f9782 = i4;
        this.f9835 -= min;
        if (i4 == c2577.f9778) {
            this.f9834 = c2577.m5776();
            AbstractC2570.m5744(c2577);
        }
        return min;
    }

    @Override // p164.InterfaceC2592
    public final byte readByte() {
        long j = this.f9835;
        if (j == 0) {
            throw new EOFException();
        }
        C2577 c2577 = this.f9834;
        int i = c2577.f9782;
        int i2 = c2577.f9778;
        int i3 = i + 1;
        byte b = c2577.f9783[i];
        this.f9835 = j - 1;
        if (i3 != i2) {
            c2577.f9782 = i3;
            return b;
        }
        this.f9834 = c2577.m5776();
        AbstractC2570.m5744(c2577);
        return b;
    }

    @Override // p164.InterfaceC2592
    public final int readInt() {
        long j = this.f9835;
        if (j < 4) {
            throw new EOFException();
        }
        C2577 c2577 = this.f9834;
        int i = c2577.f9782;
        int i2 = c2577.f9778;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = c2577.f9783;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.f9835 = j - 4;
        if (i5 != i2) {
            c2577.f9782 = i5;
            return i6;
        }
        this.f9834 = c2577.m5776();
        AbstractC2570.m5744(c2577);
        return i6;
    }

    @Override // p164.InterfaceC2592
    public final short readShort() {
        long j = this.f9835;
        if (j < 2) {
            throw new EOFException();
        }
        C2577 c2577 = this.f9834;
        int i = c2577.f9782;
        int i2 = c2577.f9778;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = c2577.f9783;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.f9835 = j - 2;
        if (i5 == i2) {
            this.f9834 = c2577.m5776();
            AbstractC2570.m5744(c2577);
        } else {
            c2577.f9782 = i5;
        }
        return (short) i6;
    }

    @Override // p164.InterfaceC2592
    public final boolean request(long j) {
        return this.f9835 >= j;
    }

    @Override // p164.InterfaceC2592
    public final void skip(long j) {
        while (j > 0) {
            C2577 c2577 = this.f9834;
            if (c2577 == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, c2577.f9778 - c2577.f9782);
            long j2 = min;
            this.f9835 -= j2;
            j -= j2;
            int i = c2577.f9782 + min;
            c2577.f9782 = i;
            if (i == c2577.f9778) {
                this.f9834 = c2577.m5776();
                AbstractC2570.m5744(c2577);
            }
        }
    }

    public final String toString() {
        long j = this.f9835;
        if (j <= 2147483647L) {
            return m5837((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f9835).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            C2577 m5823 = m5823(1);
            int min = Math.min(i, 8192 - m5823.f9778);
            byteBuffer.get(m5823.f9783, m5823.f9778, min);
            i -= min;
            m5823.f9778 += min;
        }
        this.f9835 += remaining;
        return remaining;
    }

    @Override // p164.InterfaceC2590
    public final InterfaceC2590 write(byte[] bArr) {
        write(bArr, 0, bArr.length);
        return this;
    }

    public final void write(byte[] bArr, int i, int i2) {
        long j = i2;
        ˈ.ᵔᵢ(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            C2577 m5823 = m5823(1);
            int min = Math.min(i3 - i, 8192 - m5823.f9778);
            int i4 = i + min;
            System.arraycopy(bArr, i, m5823.f9783, m5823.f9778, i4 - i);
            m5823.f9778 += min;
            i = i4;
        }
        this.f9835 += j;
    }

    @Override // p164.InterfaceC2590
    public final /* bridge */ /* synthetic */ InterfaceC2590 writeByte(int i) {
        m5825(i);
        return this;
    }

    @Override // p164.InterfaceC2590
    public final /* bridge */ /* synthetic */ InterfaceC2590 writeInt(int i) {
        m5832(i);
        return this;
    }

    @Override // p164.InterfaceC2590
    public final /* bridge */ /* synthetic */ InterfaceC2590 writeShort(int i) {
        m5835(i);
        return this;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ʻˋ */
    public final String mo5791(Charset charset) {
        return m5831(this.f9835, charset);
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final void m5822(long j) {
        if (j == 0) {
            m5825(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        C2577 m5823 = m5823(i);
        byte[] bArr = m5823.f9783;
        int i2 = m5823.f9778;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = AbstractC4708.f17797[(int) (15 & j)];
            j >>>= 4;
        }
        m5823.f9778 += i;
        this.f9835 += i;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʼᐧ */
    public final /* bridge */ /* synthetic */ InterfaceC2590 mo5732(long j) {
        m5822(j);
        return this;
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final C2577 m5823(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        C2577 c2577 = this.f9834;
        if (c2577 == null) {
            C2577 m5743 = AbstractC2570.m5743();
            this.f9834 = m5743;
            m5743.f9781 = m5743;
            m5743.f9784 = m5743;
            return m5743;
        }
        C2577 c25772 = c2577.f9781;
        if (c25772.f9778 + i <= 8192 && c25772.f9780) {
            return c25772;
        }
        C2577 m57432 = AbstractC2570.m5743();
        c25772.m5775(m57432);
        return m57432;
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void m5824(int i, int i2, String str) {
        char charAt;
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "beginIndex < 0: ").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(AbstractC0001.m14(i2, i, "endIndex < beginIndex: ", " < ").toString());
        }
        if (i2 > str.length()) {
            StringBuilder m16 = AbstractC0001.m16(i2, "endIndex > string.length: ", " > ");
            m16.append(str.length());
            throw new IllegalArgumentException(m16.toString().toString());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                C2577 m5823 = m5823(1);
                byte[] bArr = m5823.f9783;
                int i3 = m5823.f9778 - i;
                int min = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) charAt2;
                while (true) {
                    i = i4;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                }
                int i5 = m5823.f9778;
                int i6 = (i3 + i) - i5;
                m5823.f9778 = i5 + i6;
                this.f9835 += i6;
            } else {
                if (charAt2 < 2048) {
                    C2577 m58232 = m5823(2);
                    byte[] bArr2 = m58232.f9783;
                    int i7 = m58232.f9778;
                    bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                    bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                    m58232.f9778 = i7 + 2;
                    this.f9835 += 2;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    C2577 m58233 = m5823(3);
                    byte[] bArr3 = m58233.f9783;
                    int i8 = m58233.f9778;
                    bArr3[i8] = (byte) ((charAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((charAt2 & '?') | 128);
                    m58233.f9778 = i8 + 3;
                    this.f9835 += 3;
                } else {
                    int i9 = i + 1;
                    char charAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (charAt2 > 56319 || 56320 > charAt3 || charAt3 >= 57344) {
                        m5825(63);
                        i = i9;
                    } else {
                        int i10 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                        C2577 m58234 = m5823(4);
                        byte[] bArr4 = m58234.f9783;
                        int i11 = m58234.f9778;
                        bArr4[i11] = (byte) ((i10 >> 18) | 240);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        m58234.f9778 = i11 + 4;
                        this.f9835 += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void m5825(int i) {
        C2577 m5823 = m5823(1);
        byte[] bArr = m5823.f9783;
        int i2 = m5823.f9778;
        m5823.f9778 = i2 + 1;
        bArr[i2] = (byte) i;
        this.f9835++;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long m5826() {
        long j = this.f9835;
        if (j == 0) {
            return 0L;
        }
        C2577 c2577 = this.f9834.f9781;
        return (c2577.f9778 >= 8192 || !c2577.f9780) ? j : j - (r3 - c2577.f9782);
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʾᵎ */
    public final /* bridge */ /* synthetic */ InterfaceC2590 mo5734(int i, int i2, String str) {
        m5824(i, i2, str);
        return this;
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final void m5827(String str) {
        m5824(0, str.length(), str);
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʿ */
    public final /* bridge */ /* synthetic */ InterfaceC2590 mo5735(int i, byte[] bArr) {
        write(bArr, 0, i);
        return this;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final boolean m5828(long j, C2571 c2571, int i) {
        if (i >= 0 && j >= 0 && i + j <= this.f9835 && i <= c2571.mo5749()) {
            return i == 0 || AbstractC4708.m9425(this, c2571, j, j + 1, i) != -1;
        }
        return false;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˆﾞ */
    public final short mo5793() {
        short readShort = readShort();
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˈ */
    public final C2599 mo5794() {
        return this;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final long m5829(byte b, long j, long j2) {
        C2577 c2577;
        long j3 = 0;
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("size=" + this.f9835 + " fromIndex=" + j + " toIndex=" + j2).toString());
        }
        long j4 = this.f9835;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (c2577 = this.f9834) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                c2577 = c2577.f9781;
                j4 -= c2577.f9778 - c2577.f9782;
            }
            while (j4 < j2) {
                byte[] bArr = c2577.f9783;
                int min = (int) Math.min(c2577.f9778, (c2577.f9782 + j2) - j4);
                for (int i = (int) ((c2577.f9782 + j) - j4); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - c2577.f9782) + j4;
                    }
                }
                j4 += c2577.f9778 - c2577.f9782;
                c2577 = c2577.f9784;
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = (c2577.f9778 - c2577.f9782) + j3;
            if (j5 > j) {
                break;
            }
            c2577 = c2577.f9784;
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = c2577.f9783;
            int min2 = (int) Math.min(c2577.f9778, (c2577.f9782 + j2) - j3);
            for (int i2 = (int) ((c2577.f9782 + j) - j3); i2 < min2; i2++) {
                if (bArr2[i2] == b) {
                    return (i2 - c2577.f9782) + j3;
                }
            }
            j3 += c2577.f9778 - c2577.f9782;
            c2577 = c2577.f9784;
            j = j3;
        }
        return -1L;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m5830(C2599 c2599, long j, long j2) {
        long j3 = j;
        ˈ.ᵔᵢ(this.f9835, j3, j2);
        if (j2 == 0) {
            return;
        }
        c2599.f9835 += j2;
        C2577 c2577 = this.f9834;
        while (true) {
            long j4 = c2577.f9778 - c2577.f9782;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            c2577 = c2577.f9784;
        }
        C2577 c25772 = c2577;
        long j5 = j2;
        while (j5 > 0) {
            C2577 m5773 = c25772.m5773();
            int i = m5773.f9782 + ((int) j3);
            m5773.f9782 = i;
            m5773.f9778 = Math.min(i + ((int) j5), m5773.f9778);
            C2577 c25773 = c2599.f9834;
            if (c25773 == null) {
                m5773.f9781 = m5773;
                m5773.f9784 = m5773;
                c2599.f9834 = m5773;
            } else {
                c25773.f9781.m5775(m5773);
            }
            j5 -= m5773.f9778 - m5773.f9782;
            c25772 = c25772.f9784;
            j3 = 0;
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˉʿ */
    public final String mo5795(long j) {
        return m5831(j, AbstractC5154.f19435);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˊʻ */
    public final long mo5796(C2571 c2571) {
        byte[] bArr = AbstractC4708.f17797;
        return AbstractC4708.m9425(this, c2571, 0L, Long.MAX_VALUE, c2571.mo5749());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p164.InterfaceC2592
    /* renamed from: ˊˋ */
    public final String mo5797(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("limit < 0: ", j).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long m5829 = m5829((byte) 10, 0L, j2);
        if (m5829 != -1) {
            return AbstractC4708.m9422(this, m5829);
        }
        if (j2 < this.f9835 && m5841(j2 - 1) == 13 && m5841(j2) == 10) {
            return AbstractC4708.m9422(this, j2);
        }
        ?? obj = new Object();
        m5830(obj, 0L, Math.min(32, this.f9835));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f9835, j) + " content=" + obj.mo5799(obj.f9835).mo5751() + (char) 8230);
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final String m5831(long j, Charset charset) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount: ", j).toString());
        }
        if (this.f9835 < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        C2577 c2577 = this.f9834;
        int i = c2577.f9782;
        if (i + j > c2577.f9778) {
            return new String(m5839(j), charset);
        }
        int i2 = (int) j;
        String str = new String(c2577.f9783, i, i2, charset);
        int i3 = c2577.f9782 + i2;
        c2577.f9782 = i3;
        this.f9835 -= j;
        if (i3 == c2577.f9778) {
            this.f9834 = c2577.m5776();
            AbstractC2570.m5744(c2577);
        }
        return str;
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void m5832(int i) {
        C2577 m5823 = m5823(4);
        byte[] bArr = m5823.f9783;
        int i2 = m5823.f9778;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        m5823.f9778 = i2 + 4;
        this.f9835 += 4;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˏי */
    public final boolean mo5798(C2571 c2571) {
        return m5828(0L, c2571, c2571.mo5749());
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final void m5833(long j) {
        boolean z;
        if (j == 0) {
            m5825(48);
            return;
        }
        if (j < 0) {
            j = -j;
            if (j < 0) {
                m5824(0, 20, "-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = AbstractC4708.f17797;
        int numberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        int i = numberOfLeadingZeros + (j > AbstractC4708.f17796[numberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i++;
        }
        C2577 m5823 = m5823(i);
        byte[] bArr2 = m5823.f9783;
        int i2 = m5823.f9778 + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr2[i2] = AbstractC4708.f17797[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr2[i2 - 1] = 45;
        }
        m5823.f9778 += i;
        this.f9835 += i;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return C2580.f9797;
    }

    /* renamed from: י, reason: contains not printable characters */
    public final long m5834(InterfaceC2588 interfaceC2588) {
        long j = 0;
        while (true) {
            long mo5763 = interfaceC2588.mo5763(this, 8192L);
            if (mo5763 == -1) {
                return j;
            }
            j += mo5763;
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: יـ */
    public final C2571 mo5799(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount: ", j).toString());
        }
        if (this.f9835 < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new C2571(m5839(j));
        }
        C2571 m5837 = m5837((int) j);
        skip(j);
        return m5837;
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m5835(int i) {
        C2577 m5823 = m5823(2);
        byte[] bArr = m5823.f9783;
        int i2 = m5823.f9778;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        m5823.f9778 = i2 + 2;
        this.f9835 += 2;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m5836() {
        skip(this.f9835);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ـˏ */
    public final int mo5800(C2583 c2583) {
        int m9423 = AbstractC4708.m9423(this, c2583, false);
        if (m9423 == -1) {
            return -1;
        }
        skip(c2583.f9807[m9423].mo5749());
        return m9423;
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final C2571 m5837(int i) {
        if (i == 0) {
            return C2571.f9765;
        }
        ˈ.ᵔᵢ(this.f9835, 0L, i);
        C2577 c2577 = this.f9834;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = c2577.f9778;
            int i6 = c2577.f9782;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            c2577 = c2577.f9784;
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        C2577 c25772 = this.f9834;
        int i7 = 0;
        while (i2 < i) {
            bArr[i7] = c25772.f9783;
            i2 += c25772.f9778 - c25772.f9782;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = c25772.f9782;
            c25772.f9779 = true;
            i7++;
            c25772 = c25772.f9784;
        }
        return new C2594(bArr, iArr);
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ـﹶ */
    public final OutputStream mo5738() {
        return new C1773(this, 1);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ٴᵢ */
    public final int mo5801() {
        int readInt = readInt();
        return ((readInt & 255) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        long j2 = this.f9835;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        c2599.mo5741(this, j);
        return j;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ᐧᴵ */
    public final /* bridge */ /* synthetic */ InterfaceC2590 mo5739(String str) {
        m5827(str);
        return this;
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final void m5838(C2571 c2571) {
        c2571.mo5758(this, c2571.mo5749());
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᐧﾞ */
    public final void mo5802(long j) {
        if (this.f9835 < j) {
            throw new EOFException();
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final byte[] m5839(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount: ", j).toString());
        }
        if (this.f9835 < j) {
            throw new EOFException();
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return bArr;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final long m5840(C2571 c2571, long j) {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("fromIndex < 0: ", j).toString());
        }
        C2577 c2577 = this.f9834;
        if (c2577 == null) {
            return -1L;
        }
        long j3 = this.f9835;
        if (j3 - j < j) {
            while (j3 > j) {
                c2577 = c2577.f9781;
                j3 -= c2577.f9778 - c2577.f9782;
            }
            if (c2571.mo5749() == 2) {
                byte mo5757 = c2571.mo5757(0);
                byte mo57572 = c2571.mo5757(1);
                while (j3 < this.f9835) {
                    byte[] bArr = c2577.f9783;
                    int i = c2577.f9778;
                    for (int i2 = (int) ((c2577.f9782 + j) - j3); i2 < i; i2++) {
                        byte b = bArr[i2];
                        if (b == mo5757 || b == mo57572) {
                            return (i2 - c2577.f9782) + j3;
                        }
                    }
                    j3 += c2577.f9778 - c2577.f9782;
                    c2577 = c2577.f9784;
                    j = j3;
                }
            } else {
                byte[] mo5756 = c2571.mo5756();
                while (j3 < this.f9835) {
                    byte[] bArr2 = c2577.f9783;
                    int i3 = c2577.f9778;
                    for (int i4 = (int) ((c2577.f9782 + j) - j3); i4 < i3; i4++) {
                        byte b2 = bArr2[i4];
                        for (byte b3 : mo5756) {
                            if (b2 == b3) {
                                return (i4 - c2577.f9782) + j3;
                            }
                        }
                    }
                    j3 += c2577.f9778 - c2577.f9782;
                    c2577 = c2577.f9784;
                    j = j3;
                }
            }
            return -1L;
        }
        while (true) {
            long j4 = (c2577.f9778 - c2577.f9782) + j2;
            if (j4 > j) {
                break;
            }
            c2577 = c2577.f9784;
            j2 = j4;
        }
        if (c2571.mo5749() == 2) {
            byte mo57573 = c2571.mo5757(0);
            byte mo57574 = c2571.mo5757(1);
            while (j2 < this.f9835) {
                byte[] bArr3 = c2577.f9783;
                int i5 = c2577.f9778;
                for (int i6 = (int) ((c2577.f9782 + j) - j2); i6 < i5; i6++) {
                    byte b4 = bArr3[i6];
                    if (b4 == mo57573 || b4 == mo57574) {
                        return (i6 - c2577.f9782) + j2;
                    }
                }
                j2 += c2577.f9778 - c2577.f9782;
                c2577 = c2577.f9784;
                j = j2;
            }
        } else {
            byte[] mo57562 = c2571.mo5756();
            while (j2 < this.f9835) {
                byte[] bArr4 = c2577.f9783;
                int i7 = c2577.f9778;
                for (int i8 = (int) ((c2577.f9782 + j) - j2); i8 < i7; i8++) {
                    byte b5 = bArr4[i8];
                    for (byte b6 : mo57562) {
                        if (b5 == b6) {
                            return (i8 - c2577.f9782) + j2;
                        }
                    }
                }
                j2 += c2577.f9778 - c2577.f9782;
                c2577 = c2577.f9784;
                j = j2;
            }
        }
        return -1L;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᴵᵔ */
    public final String mo5803() {
        return mo5797(Long.MAX_VALUE);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵎʻ */
    public final InputStream mo5804() {
        return new C2584(0, this);
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final byte m5841(long j) {
        ˈ.ᵔᵢ(this.f9835, j, 1L);
        C2577 c2577 = this.f9834;
        c2577.getClass();
        long j2 = this.f9835;
        if (j2 - j < j) {
            while (j2 > j) {
                c2577 = c2577.f9781;
                j2 -= c2577.f9778 - c2577.f9782;
            }
            return c2577.f9783[(int) ((c2577.f9782 + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = c2577.f9778;
            int i2 = c2577.f9782;
            long j4 = (i - i2) + j3;
            if (j4 > j) {
                return c2577.f9783[(int) ((i2 + j) - j3)];
            }
            c2577 = c2577.f9784;
            j3 = j4;
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵎⁱ */
    public final boolean mo5805() {
        return this.f9835 == 0;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵔʾ */
    public final long mo5807(C2571 c2571) {
        return m5840(c2571, 0L);
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        C2577 m5743;
        if (c2599 == this) {
            throw new IllegalArgumentException("source == this");
        }
        ˈ.ᵔᵢ(c2599.f9835, 0L, j);
        while (j > 0) {
            C2577 c2577 = c2599.f9834;
            int i = c2577.f9778 - c2577.f9782;
            if (j < i) {
                C2577 c25772 = this.f9834;
                C2577 c25773 = c25772 != null ? c25772.f9781 : null;
                if (c25773 != null && c25773.f9780) {
                    if ((c25773.f9778 + j) - (c25773.f9779 ? 0 : c25773.f9782) <= 8192) {
                        c2577.m5774(c25773, (int) j);
                        c2599.f9835 -= j;
                        this.f9835 += j;
                        return;
                    }
                }
                int i2 = (int) j;
                if (i2 <= 0 || i2 > i) {
                    throw new IllegalArgumentException("byteCount out of range");
                }
                if (i2 >= 1024) {
                    m5743 = c2577.m5773();
                } else {
                    m5743 = AbstractC2570.m5743();
                    byte[] bArr = c2577.f9783;
                    byte[] bArr2 = m5743.f9783;
                    int i3 = c2577.f9782;
                    AbstractC5096.m10001(i3, i3 + i2, bArr, bArr2);
                }
                m5743.f9778 = m5743.f9782 + i2;
                c2577.f9782 += i2;
                c2577.f9781.m5775(m5743);
                c2599.f9834 = m5743;
            }
            C2577 c25774 = c2599.f9834;
            long j2 = c25774.f9778 - c25774.f9782;
            c2599.f9834 = c25774.m5776();
            C2577 c25775 = this.f9834;
            if (c25775 == null) {
                this.f9834 = c25774;
                c25774.f9781 = c25774;
                c25774.f9784 = c25774;
            } else {
                c25775.f9781.m5775(c25774);
                C2577 c25776 = c25774.f9781;
                if (c25776 == c25774) {
                    throw new IllegalStateException("cannot compact");
                }
                if (c25776.f9780) {
                    int i4 = c25774.f9778 - c25774.f9782;
                    if (i4 <= (8192 - c25776.f9778) + (c25776.f9779 ? 0 : c25776.f9782)) {
                        c25774.m5774(c25776, i4);
                        c25774.m5776();
                        AbstractC2570.m5744(c25774);
                    }
                }
            }
            c2599.f9835 -= j2;
            this.f9835 += j2;
            j -= j2;
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵔٴ */
    public final String mo5808() {
        long m5829 = m5829((byte) 10, 0L, Long.MAX_VALUE);
        if (m5829 != -1) {
            return AbstractC4708.m9422(this, m5829);
        }
        long j = this.f9835;
        if (j != 0) {
            return m5831(j, AbstractC5154.f19435);
        }
        return null;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵢˏ */
    public final long mo5809(C2599 c2599) {
        long j = this.f9835;
        if (j > 0) {
            c2599.mo5741(this, j);
        }
        return j;
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void m5842(int i) {
        if (i < 128) {
            m5825(i);
            return;
        }
        if (i < 2048) {
            C2577 m5823 = m5823(2);
            byte[] bArr = m5823.f9783;
            int i2 = m5823.f9778;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            m5823.f9778 = i2 + 2;
            this.f9835 += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            m5825(63);
            return;
        }
        if (i < 65536) {
            C2577 m58232 = m5823(3);
            byte[] bArr2 = m58232.f9783;
            int i3 = m58232.f9778;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            m58232.f9778 = i3 + 3;
            this.f9835 += 3;
            return;
        }
        if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x".concat(ˈ.ᵎⁱ(i)));
        }
        C2577 m58233 = m5823(4);
        byte[] bArr3 = m58233.f9783;
        int i4 = m58233.f9778;
        bArr3[i4] = (byte) ((i >> 18) | 240);
        bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((i & 63) | 128);
        m58233.f9778 = i4 + 4;
        this.f9835 += 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f A[EDGE_INSN: B:40:0x009f->B:37:0x009f BREAK  A[LOOP:0: B:4:0x000c->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0097  */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p164.InterfaceC2592
    /* renamed from: ﹳﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5810() {
        /*
            r15 = this;
            long r0 = r15.f9835
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La6
            r0 = 0
            r1 = r0
            r6 = r1
            r4 = r2
        Lc:
            ˊᐧ.ʾᵎ r7 = r15.f9834
            byte[] r8 = r7.f9783
            int r9 = r7.f9782
            int r10 = r7.f9778
        L14:
            if (r9 >= r10) goto L8b
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L23
            r12 = 57
            if (r11 > r12) goto L23
            int r12 = r11 + (-48)
            goto L38
        L23:
            r12 = 97
            if (r11 < r12) goto L2e
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L2e
            int r12 = r11 + (-87)
            goto L38
        L2e:
            r12 = 65
            if (r11 < r12) goto L63
            r12 = 70
            if (r11 > r12) goto L63
            int r12 = r11 + (-55)
        L38:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r13 = r13 & r4
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 != 0) goto L48
            r11 = 4
            long r4 = r4 << r11
            long r11 = (long) r12
            long r4 = r4 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            goto L14
        L48:
            ˊᐧ.ﾞᴵ r0 = new ˊᐧ.ﾞᴵ
            r0.<init>()
            r0.m5822(r4)
            r0.m5825(r11)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.m5843()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L63:
            r6 = 1
            if (r1 == 0) goto L67
            goto L8b
        L67:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            int r2 = r11 >> 4
            r2 = r2 & 15
            char[] r3 = p393.AbstractC4707.f17795
            char r2 = r3[r2]
            r4 = r11 & 15
            char r3 = r3[r4]
            r4 = 2
            char[] r4 = new char[r4]
            r4[r0] = r2
            r4[r6] = r3
            java.lang.String r0 = new java.lang.String
            r0.<init>(r4)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L8b:
            if (r9 != r10) goto L97
            ˊᐧ.ʾᵎ r8 = r7.m5776()
            r15.f9834 = r8
            p164.AbstractC2570.m5744(r7)
            goto L99
        L97:
            r7.f9782 = r9
        L99:
            if (r6 != 0) goto L9f
            ˊᐧ.ʾᵎ r7 = r15.f9834
            if (r7 != 0) goto Lc
        L9f:
            long r2 = r15.f9835
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f9835 = r2
            return r4
        La6:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2599.mo5810():long");
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final String m5843() {
        return m5831(this.f9835, AbstractC5154.f19435);
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ﾞʻ */
    public final /* bridge */ /* synthetic */ InterfaceC2590 mo5742(C2571 c2571) {
        m5838(c2571);
        return this;
    }
}
