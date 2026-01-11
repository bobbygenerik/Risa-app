package p210;

import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

/* renamed from: ˎﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2973 extends FilterInputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f11375;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f11376;

    public C2973(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
        this.f11376 = -1L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.f11376 = this.f11375;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f11375++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read != -1) {
            this.f11375 += read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f11376 == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f11375 = this.f11376;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = ((FilterInputStream) this).in.skip(j);
        this.f11375 += skip;
        return skip;
    }
}
