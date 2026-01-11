package p266;

import java.io.InputStream;
import p305.AbstractC3731;

/* renamed from: ـˊ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3454 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC3462 f13565;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3456 f13567;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f13566 = false;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f13568 = false;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f13564 = new byte[1];

    public C3454(InterfaceC3462 interfaceC3462, C3456 c3456) {
        this.f13565 = interfaceC3462;
        this.f13567 = c3456;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f13568) {
            return;
        }
        this.f13565.close();
        this.f13568 = true;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f13564;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        AbstractC3731.m7857(!this.f13568);
        boolean z = this.f13566;
        InterfaceC3462 interfaceC3462 = this.f13565;
        if (!z) {
            interfaceC3462.mo4684(this.f13567);
            this.f13566 = true;
        }
        int read = interfaceC3462.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        return read;
    }
}
