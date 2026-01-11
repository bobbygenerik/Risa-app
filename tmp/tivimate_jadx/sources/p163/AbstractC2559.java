package p163;

import java.io.OutputStream;

/* renamed from: ˊٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2559 extends OutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC2566 f9726;

    public AbstractC2559(AbstractC2566 abstractC2566) {
        this.f9726 = abstractC2566;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9726.close();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f9726.write(bArr, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo5723() {
        this.f9726.mo5730();
    }
}
