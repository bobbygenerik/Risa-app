package p355;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* renamed from: ᵔˆ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4337 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f16143;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final FileInputStream f16144;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16145;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Charset f16146;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f16147;

    public C4337(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(AbstractC4340.f16155)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f16144 = fileInputStream;
        this.f16146 = charset;
        this.f16143 = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f16144) {
            try {
                if (this.f16143 != null) {
                    this.f16143 = null;
                    this.f16144.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m8799() {
        int i;
        synchronized (this.f16144) {
            try {
                byte[] bArr = this.f16143;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f16145 >= this.f16147) {
                    int read = this.f16144.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f16145 = 0;
                    this.f16147 = read;
                }
                for (int i2 = this.f16145; i2 != this.f16147; i2++) {
                    byte[] bArr2 = this.f16143;
                    if (bArr2[i2] == 10) {
                        int i3 = this.f16145;
                        if (i2 != i3) {
                            i = i2 - 1;
                            if (bArr2[i] == 13) {
                                String str = new String(bArr2, i3, i - i3, this.f16146.name());
                                this.f16145 = i2 + 1;
                                return str;
                            }
                        }
                        i = i2;
                        String str2 = new String(bArr2, i3, i - i3, this.f16146.name());
                        this.f16145 = i2 + 1;
                        return str2;
                    }
                }
                C4336 c4336 = new C4336(this, (this.f16147 - this.f16145) + 80);
                while (true) {
                    byte[] bArr3 = this.f16143;
                    int i4 = this.f16145;
                    c4336.write(bArr3, i4, this.f16147 - i4);
                    this.f16147 = -1;
                    FileInputStream fileInputStream = this.f16144;
                    byte[] bArr4 = this.f16143;
                    int read2 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (read2 == -1) {
                        throw new EOFException();
                    }
                    this.f16145 = 0;
                    this.f16147 = read2;
                    for (int i5 = 0; i5 != this.f16147; i5++) {
                        byte[] bArr5 = this.f16143;
                        if (bArr5[i5] == 10) {
                            int i6 = this.f16145;
                            if (i5 != i6) {
                                c4336.write(bArr5, i6, i5 - i6);
                            }
                            this.f16145 = i5 + 1;
                            return c4336.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
