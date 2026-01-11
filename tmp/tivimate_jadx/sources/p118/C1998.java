package p118;

import java.io.OutputStream;

/* renamed from: ˈʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1998 extends OutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f7867;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f7867++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f7867 += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f7867 += i2;
    }
}
