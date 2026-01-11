package p163;

import java.io.OutputStream;
import p168.InterfaceC2613;
import p261.C3411;

/* renamed from: ˊٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2566 extends OutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2560 f9754;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2613 f9755;

    public AbstractC2566(C2560 c2560, C3411 c3411, char[] cArr, boolean z) {
        this.f9754 = c2560;
        this.f9755 = mo5731(c3411, cArr, z);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9754.getClass();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f9754.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f9754.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f9755.mo5864(bArr, i, i2);
        this.f9754.write(bArr, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo5730() {
        this.f9754.f9727 = true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract InterfaceC2613 mo5731(C3411 c3411, char[] cArr, boolean z);
}
