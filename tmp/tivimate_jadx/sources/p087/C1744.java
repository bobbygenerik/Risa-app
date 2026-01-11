package p087;

import java.io.FilterInputStream;

/* renamed from: ʿٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1744 extends FilterInputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f7102;

    public C1744(C1743 c1743) {
        super(c1743);
        this.f7102 = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i = this.f7102;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        super.mark(i);
        this.f7102 = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (m4695(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m4696(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int m4695 = (int) m4695(i2);
        if (m4695 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m4695);
        m4696(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f7102 = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long m4695 = m4695(j);
        if (m4695 == -1) {
            return 0L;
        }
        long skip = super.skip(m4695);
        m4696(skip);
        return skip;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m4695(long j) {
        int i = this.f7102;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : i;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4696(long j) {
        int i = this.f7102;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f7102 = (int) (i - j);
    }
}
