package p288;

import java.io.InputStream;
import java.io.PushbackInputStream;

/* renamed from: ٴـ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3591 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f14029;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public PushbackInputStream f14030;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f14031;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f14032;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14030.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f14029;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.f14031;
        if (j != -1) {
            long j2 = this.f14032;
            if (j2 >= j) {
                return -1;
            }
            long j3 = j - j2;
            if (i2 > j3) {
                i2 = (int) j3;
            }
        }
        int read = this.f14030.read(bArr, i, i2);
        if (read > 0) {
            this.f14032 += read;
        }
        return read;
    }
}
