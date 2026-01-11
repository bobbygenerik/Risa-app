package p087;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p035.AbstractC1220;

/* renamed from: ʿٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1741 extends FilterInputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f7096;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f7097;

    public C1741(InputStream inputStream, long j) {
        super(inputStream);
        this.f7096 = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f7096 - this.f7097, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int read;
        read = super.read();
        m4693(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        int read;
        read = super.read(bArr, i, i2);
        m4693(read);
        return read;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4693(int i) {
        if (i >= 0) {
            this.f7097 += i;
            return;
        }
        long j = this.f7097;
        long j2 = this.f7096;
        if (j2 - j <= 0) {
            return;
        }
        StringBuilder m3770 = AbstractC1220.m3770(j2, "Failed to read all expected data, expected: ", ", but read: ");
        m3770.append(this.f7097);
        throw new IOException(m3770.toString());
    }
}
