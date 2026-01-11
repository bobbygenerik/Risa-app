package p022;

import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: ʼˊ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1045 extends FilterInputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f4118;

    public C1045(InputStream inputStream) {
        super(inputStream);
        this.f4118 = 0L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            long j = this.f4118;
            if (j >= 0) {
                this.f4118 = j + 1;
            }
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read > 0) {
            long j = this.f4118;
            if (j >= 0) {
                this.f4118 = j + read;
            }
        }
        return read;
    }
}
