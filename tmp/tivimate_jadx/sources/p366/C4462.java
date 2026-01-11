package p366;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p257.C3397;

/* renamed from: ᵔﹶ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4462 extends FilterInputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f16697;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile byte[] f16698;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16699;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3397 f16700;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f16701;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f16702;

    public C4462(InputStream inputStream, C3397 c3397) {
        super(inputStream);
        this.f16699 = -1;
        this.f16700 = c3397;
        this.f16698 = (byte[]) c3397.m7293(65536, byte[].class);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m9012() {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f16698 == null || inputStream == null) {
            m9012();
            throw null;
        }
        return (this.f16701 - this.f16702) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f16698 != null) {
            this.f16700.m7296(this.f16698);
            this.f16698 = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        this.f16697 = Math.max(this.f16697, i);
        this.f16699 = this.f16702;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f16698;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            m9012();
            throw null;
        }
        if (this.f16702 >= this.f16701 && m9013(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f16698 && (bArr = this.f16698) == null) {
            m9012();
            throw null;
        }
        int i = this.f16701;
        int i2 = this.f16702;
        if (i - i2 <= 0) {
            return -1;
        }
        this.f16702 = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2 = this.f16698;
        if (bArr2 == null) {
            m9012();
            throw null;
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            m9012();
            throw null;
        }
        int i5 = this.f16702;
        int i6 = this.f16701;
        if (i5 < i6) {
            int i7 = i6 - i5;
            if (i7 >= i2) {
                i7 = i2;
            }
            System.arraycopy(bArr2, i5, bArr, i, i7);
            this.f16702 += i7;
            if (i7 == i2 || inputStream.available() == 0) {
                return i7;
            }
            i += i7;
            i3 = i2 - i7;
        } else {
            i3 = i2;
        }
        while (true) {
            if (this.f16699 == -1 && i3 >= bArr2.length) {
                i4 = inputStream.read(bArr, i, i3);
                if (i4 == -1) {
                    return i3 != i2 ? i2 - i3 : -1;
                }
            } else {
                if (m9013(inputStream, bArr2) == -1) {
                    return i3 != i2 ? i2 - i3 : -1;
                }
                if (bArr2 != this.f16698 && (bArr2 = this.f16698) == null) {
                    m9012();
                    throw null;
                }
                int i8 = this.f16701;
                int i9 = this.f16702;
                i4 = i8 - i9;
                if (i4 >= i3) {
                    i4 = i3;
                }
                System.arraycopy(bArr2, i9, bArr, i, i4);
                this.f16702 += i4;
            }
            i3 -= i4;
            if (i3 == 0) {
                return i2;
            }
            if (inputStream.available() == 0) {
                return i2 - i3;
            }
            i += i4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f16698 == null) {
            throw new IOException("Stream is closed");
        }
        int i = this.f16699;
        if (-1 == i) {
            throw new IOException("Mark has been invalidated, pos: " + this.f16702 + " markLimit: " + this.f16697);
        }
        this.f16702 = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f16698;
        if (bArr == null) {
            m9012();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            m9012();
            throw null;
        }
        int i = this.f16701;
        int i2 = this.f16702;
        if (i - i2 >= j) {
            this.f16702 = (int) (i2 + j);
            return j;
        }
        long j2 = i - i2;
        this.f16702 = i;
        if (this.f16699 == -1 || j > this.f16697) {
            long skip = inputStream.skip(j - j2);
            if (skip > 0) {
                this.f16699 = -1;
            }
            return j2 + skip;
        }
        if (m9013(inputStream, bArr) == -1) {
            return j2;
        }
        int i3 = this.f16701;
        int i4 = this.f16702;
        if (i3 - i4 >= j - j2) {
            this.f16702 = (int) ((i4 + j) - j2);
            return j;
        }
        long j3 = (j2 + i3) - i4;
        this.f16702 = i3;
        return j3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9013(InputStream inputStream, byte[] bArr) {
        int i = this.f16699;
        if (i != -1) {
            int i2 = this.f16702 - i;
            int i3 = this.f16697;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f16701 == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f16700.m7293(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f16698 = bArr2;
                    this.f16700.m7296(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.f16702 - this.f16699;
                this.f16702 = i4;
                this.f16699 = 0;
                this.f16701 = 0;
                int read = inputStream.read(bArr, i4, bArr.length - i4);
                int i5 = this.f16702;
                if (read > 0) {
                    i5 += read;
                }
                this.f16701 = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f16699 = -1;
            this.f16702 = 0;
            this.f16701 = read2;
        }
        return read2;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized void m9014() {
        if (this.f16698 != null) {
            this.f16700.m7296(this.f16698);
            this.f16698 = null;
        }
    }
}
