package p087;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import p366.C4462;

/* renamed from: ʿٴ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1743 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final ArrayDeque f7099;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C4462 f7100;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public IOException f7101;

    static {
        char[] cArr = AbstractC1746.f7105;
        f7099 = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f7100.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f7100.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f7100.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.f7100.getClass();
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            return this.f7100.read();
        } catch (IOException e) {
            this.f7101 = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            return this.f7100.read(bArr);
        } catch (IOException e) {
            this.f7101 = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.f7100.read(bArr, i, i2);
        } catch (IOException e) {
            this.f7101 = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f7100.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        try {
            return this.f7100.skip(j);
        } catch (IOException e) {
            this.f7101 = e;
            throw e;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4694() {
        this.f7101 = null;
        this.f7100 = null;
        ArrayDeque arrayDeque = f7099;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }
}
