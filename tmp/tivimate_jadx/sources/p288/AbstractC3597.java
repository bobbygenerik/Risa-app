package p288;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import p010.AbstractC0844;
import p168.InterfaceC2612;
import p261.C3412;
import p332.AbstractC4200;

/* renamed from: ٴـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3597 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f14054;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3591 f14055;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f14056 = new byte[1];

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2612 f14057;

    public AbstractC3597(C3591 c3591, C3412 c3412, char[] cArr, int i, boolean z) {
        this.f14055 = c3591;
        this.f14057 = mo7552(c3412, cArr, z);
        if (AbstractC0844.m3021(AbstractC4200.m8606(c3412), 2)) {
            this.f14054 = new byte[i];
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14055.close();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f14056;
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m8602 = AbstractC4200.m8602(this.f14055, bArr, i, i2);
        if (m8602 > 0) {
            byte[] bArr2 = this.f14054;
            if (bArr2 != null) {
                System.arraycopy(bArr, 0, bArr2, 0, m8602);
            }
            this.f14057.mo5863(bArr, i, m8602);
        }
        return m8602;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo7556(InputStream inputStream, int i) {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m7557(byte[] bArr) {
        PushbackInputStream pushbackInputStream = this.f14055.f14030;
        int read = pushbackInputStream.read(bArr);
        if (read == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (read != bArr.length) {
            int length = bArr.length - read;
            int i = 0;
            for (int i2 = 0; read < bArr.length && i != -1 && i2 < 15; i2++) {
                i += pushbackInputStream.read(bArr, read, length);
                if (i > 0) {
                    read += i;
                    length -= i;
                }
            }
            if (read != bArr.length) {
                throw new IOException("Cannot read fully into byte buffer");
            }
        }
    }

    /* renamed from: ᵎﹶ */
    public abstract InterfaceC2612 mo7552(C3412 c3412, char[] cArr, boolean z);
}
