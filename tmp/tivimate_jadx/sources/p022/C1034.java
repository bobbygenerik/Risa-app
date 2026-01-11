package p022;

import java.io.IOException;
import java.io.InputStream;
import p105.C1934;

/* renamed from: ʼˊ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1034 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InputStream f4064;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1934 f4066;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public IOException f4063 = null;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f4065 = new byte[1];

    public C1034(InputStream inputStream, int i) {
        inputStream.getClass();
        this.f4064 = inputStream;
        this.f4066 = new C1934(i);
    }

    @Override // java.io.InputStream
    public final int available() {
        InputStream inputStream = this.f4064;
        if (inputStream == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4063;
        if (iOException == null) {
            return inputStream.available();
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f4064;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f4064 = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4065;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = this.f4064;
        if (inputStream == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4063;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            C1934 c1934 = this.f4066;
            byte[] bArr2 = c1934.f7693;
            int i3 = c1934.f7694;
            int min = Math.min(read, i3);
            int i4 = 0;
            while (i4 < min) {
                int i5 = i + i4;
                bArr[i5] = (byte) (bArr[i5] + bArr2[i4]);
                i4++;
            }
            while (i4 < read) {
                int i6 = i + i4;
                bArr[i6] = (byte) (bArr[i6] + bArr[i6 - i3]);
                i4++;
            }
            if (read >= i3) {
                System.arraycopy(bArr, (i + read) - i3, bArr2, 0, i3);
                return read;
            }
            int i7 = i3 - i4;
            System.arraycopy(bArr2, i4, bArr2, 0, i7);
            System.arraycopy(bArr, i, bArr2, i7, read);
            return read;
        } catch (IOException e) {
            this.f4063 = e;
            throw e;
        }
    }
}
