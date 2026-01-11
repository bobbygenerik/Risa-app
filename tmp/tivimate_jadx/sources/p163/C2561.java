package p163;

import java.io.OutputStream;
import p137.AbstractC2305;

/* renamed from: ˊٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2561 extends OutputStream implements InterfaceC2564 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C2565 f9730;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f9731;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9730.close();
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
        this.f9730.write(bArr, i, i2);
        this.f9731 += i2;
    }

    @Override // p163.InterfaceC2564
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo5724() {
        if (m5725()) {
            return this.f9730.f9750;
        }
        return 0;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m5725() {
        C2565 c2565 = this.f9730;
        return AbstractC2305.m5366(c2565) && c2565.f9752 != -1;
    }

    @Override // p163.InterfaceC2564
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long mo5726() {
        C2565 c2565 = this.f9730;
        return AbstractC2305.m5366(c2565) ? c2565.f9749.getFilePointer() : this.f9731;
    }
}
