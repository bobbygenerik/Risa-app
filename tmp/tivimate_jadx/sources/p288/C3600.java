package p288;

import p261.C3405;

/* renamed from: ٴـ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3600 extends AbstractC3596 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C3595 f14072;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C3595 c3595 = this.f14072;
        if (c3595 != null) {
            c3595.close();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.f14072.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return this.f14072.read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.f14072.read(bArr, i, i2);
    }

    @Override // p288.AbstractC3596
    /* renamed from: ʽ */
    public final void mo7555(C3405 c3405) {
        this.f14072.seek(c3405.f13347);
    }
}
