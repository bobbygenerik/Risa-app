package p087;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: ʿٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1749 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ByteBuffer f7109;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f7110 = -1;

    public C1749(ByteBuffer byteBuffer) {
        this.f7109 = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f7109.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.f7110 = this.f7109.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f7109;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        ByteBuffer byteBuffer = this.f7109;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i = this.f7110;
        if (i == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f7109.position(i);
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        ByteBuffer byteBuffer = this.f7109;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long min = Math.min(j, byteBuffer.remaining());
        byteBuffer.position((int) (byteBuffer.position() + min));
        return min;
    }
}
