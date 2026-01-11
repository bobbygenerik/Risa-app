package p163;

import java.io.OutputStream;

/* renamed from: ˊٴ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2560 extends OutputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9727;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f9728;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public OutputStream f9729;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (this.f9727) {
            throw new IllegalStateException("ZipEntryOutputStream is closed");
        }
        this.f9729.write(bArr, i, i2);
        this.f9728 += i2;
    }
}
