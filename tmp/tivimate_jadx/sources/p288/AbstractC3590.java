package p288;

import java.io.InputStream;
import java.io.PushbackInputStream;

/* renamed from: ٴـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3590 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC3597 f14027;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f14028 = new byte[1];

    public AbstractC3590(AbstractC3597 abstractC3597) {
        this.f14027 = abstractC3597;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14027.close();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f14028;
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.f14027.read(bArr, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo7550(InputStream inputStream, int i) {
        this.f14027.mo7556(inputStream, i);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int mo7551(PushbackInputStream pushbackInputStream) {
        return 0;
    }
}
