package p022;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.XZFormatException;

/* renamed from: ʼˊ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1046 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InputStream f4119;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1048 f4120;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1040 f4121;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final byte[] f4122;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f4123;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public IOException f4124;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f4125;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f4126;

    public C1046(InputStream inputStream) {
        C1048 c1048 = C1048.f4129;
        this.f4123 = false;
        this.f4124 = null;
        this.f4122 = new byte[1];
        this.f4120 = c1048;
        this.f4119 = inputStream;
        this.f4125 = -1;
        this.f4126 = true;
        byte[] bArr = new byte[12];
        new DataInputStream(inputStream).readFully(bArr);
        this.f4121 = new C1040(inputStream, -1, true, bArr, c1048);
    }

    @Override // java.io.InputStream
    public final int available() {
        if (this.f4119 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4124;
        if (iOException != null) {
            throw iOException;
        }
        C1040 c1040 = this.f4121;
        if (c1040 == null) {
            return 0;
        }
        return c1040.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4119 != null) {
            C1040 c1040 = this.f4121;
            if (c1040 != null) {
                c1040.m3379(false);
                this.f4121 = null;
            }
            try {
                this.f4119.close();
            } finally {
                this.f4119 = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4122;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (this.f4119 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4124;
        if (iOException != null) {
            throw iOException;
        }
        if (!this.f4123) {
            while (true) {
                if (i2 <= 0) {
                    break;
                }
                try {
                    if (this.f4121 == null) {
                        m3384();
                        if (this.f4123) {
                            if (i4 == 0) {
                            }
                        }
                    }
                    int read = this.f4121.read(bArr, i, i2);
                    if (read > 0) {
                        i4 += read;
                        i += read;
                        i2 -= read;
                    } else if (read == -1) {
                        this.f4121 = null;
                    }
                } catch (IOException e) {
                    this.f4124 = e;
                    if (i4 == 0) {
                        throw e;
                    }
                }
            }
            return i4;
        }
        return -1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3384() {
        DataInputStream dataInputStream = new DataInputStream(this.f4119);
        byte[] bArr = new byte[12];
        while (dataInputStream.read(bArr, 0, 1) != -1) {
            dataInputStream.readFully(bArr, 1, 3);
            if (bArr[0] != 0 || bArr[1] != 0 || bArr[2] != 0 || bArr[3] != 0) {
                dataInputStream.readFully(bArr, 4, 8);
                try {
                    this.f4121 = new C1040(this.f4119, this.f4125, this.f4126, bArr, this.f4120);
                    return;
                } catch (XZFormatException unused) {
                    throw new IOException("Garbage after a valid XZ Stream");
                }
            }
        }
        this.f4123 = true;
    }
}
