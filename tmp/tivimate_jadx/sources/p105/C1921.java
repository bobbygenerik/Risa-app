package p105;

import java.io.InputStream;

/* renamed from: ˆי.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1921 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1928 f7652;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f7653;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f7654;

    public C1921(C1928 c1928, C1931 c1931) {
        this.f7652 = c1928;
        this.f7653 = c1928.m4879(c1931.f7681 + 4);
        this.f7654 = c1931.f7680;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f7654 == 0) {
            return -1;
        }
        C1928 c1928 = this.f7652;
        c1928.f7671.seek(this.f7653);
        int read = c1928.f7671.read();
        this.f7653 = c1928.m4879(this.f7653 + 1);
        this.f7654--;
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.f7654;
        if (i3 <= 0) {
            return -1;
        }
        if (i2 > i3) {
            i2 = i3;
        }
        int i4 = this.f7653;
        C1928 c1928 = this.f7652;
        c1928.m4875(i4, i, i2, bArr);
        this.f7653 = c1928.m4879(this.f7653 + i2);
        this.f7654 -= i2;
        return i2;
    }
}
