package p022;

import java.io.IOException;
import java.io.InputStream;
import p461.InterfaceC5415;

/* renamed from: ʼˊ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1044 extends InputStream {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ int f4108 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InputStream f4110;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC5415 f4115;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f4109 = new byte[4096];

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f4111 = 0;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f4116 = 0;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f4113 = 0;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f4114 = false;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public IOException f4112 = null;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final byte[] f4117 = new byte[1];

    public C1044(InputStream inputStream, InterfaceC5415 interfaceC5415) {
        inputStream.getClass();
        this.f4110 = inputStream;
        this.f4115 = interfaceC5415;
    }

    @Override // java.io.InputStream
    public final int available() {
        if (this.f4110 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4112;
        if (iOException == null) {
            return this.f4116;
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f4110;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f4110 = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4117;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        byte[] bArr2 = this.f4109;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.f4110 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4112;
        if (iOException != null) {
            throw iOException;
        }
        int i4 = 0;
        while (true) {
            try {
                int min = Math.min(this.f4116, i2);
                System.arraycopy(bArr2, this.f4111, bArr, i, min);
                int i5 = this.f4111 + min;
                this.f4111 = i5;
                int i6 = this.f4116 - min;
                this.f4116 = i6;
                i += min;
                i2 -= min;
                i4 += min;
                int i7 = this.f4113;
                if (i5 + i6 + i7 == 4096) {
                    System.arraycopy(bArr2, i5, bArr2, 0, i6 + i7);
                    this.f4111 = 0;
                }
                if (i2 == 0 || this.f4114) {
                    break;
                }
                int i8 = this.f4111 + this.f4116 + this.f4113;
                int read = this.f4110.read(bArr2, i8, 4096 - i8);
                if (read == -1) {
                    this.f4114 = true;
                    this.f4116 = this.f4113;
                    this.f4113 = 0;
                } else {
                    int i9 = this.f4113 + read;
                    this.f4113 = i9;
                    int mo10848 = this.f4115.mo10848(bArr2, this.f4111, i9);
                    this.f4116 = mo10848;
                    this.f4113 -= mo10848;
                }
            } catch (IOException e) {
                this.f4112 = e;
                throw e;
            }
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }
}
