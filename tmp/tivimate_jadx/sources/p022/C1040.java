package p022;

import com.google.android.gms.internal.play_billing.י;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import org.tukaani.xz.UnsupportedOptionsException;
import org.tukaani.xz.XZFormatException;
import p161.C2550;
import p307.AbstractC3740;
import p348.AbstractC4280;
import p348.C4283;

/* renamed from: ʼˊ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1040 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f4084;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InputStream f4085;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C1047 f4086;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f4088;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1048 f4091;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AbstractC4280 f4092;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C1043 f4090 = null;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C2550 f4087 = new C2550();

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f4094 = false;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public IOException f4089 = null;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final byte[] f4093 = new byte[1];

    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, ᵎᵎ.ʽ] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object, ᵎᵎ.ⁱˊ, ᵎᵎ.ʽ] */
    public C1040(InputStream inputStream, int i, boolean z, byte[] bArr, C1048 c1048) {
        C4283 c4283;
        this.f4091 = c1048;
        this.f4085 = inputStream;
        this.f4084 = i;
        this.f4088 = z;
        for (int i2 = 0; i2 < 6; i2++) {
            if (bArr[i2] != AbstractC1035.f4068[i2]) {
                throw new XZFormatException();
            }
        }
        if (!י.ʻٴ(6, 2, 8, bArr)) {
            throw new IOException("XZ Stream Header is corrupt");
        }
        try {
            C1047 c1047 = י.ʼᐧ(6, bArr);
            this.f4086 = c1047;
            int i3 = c1047.f4127;
            if (i3 == 0) {
                ?? obj = new Object();
                obj.f15865 = 0;
                obj.f15864 = "None";
                c4283 = obj;
            } else if (i3 == 1) {
                c4283 = new C4283(0);
            } else {
                if (i3 != 4) {
                    if (i3 == 10) {
                        try {
                            c4283 = new C4283(1);
                        } catch (NoSuchAlgorithmException unused) {
                        }
                    }
                    throw new IOException(AbstractC3740.m7932(i3, "Unsupported Check ID "));
                }
                ?? obj2 = new Object();
                obj2.f15867 = -1L;
                obj2.f15865 = 8;
                obj2.f15864 = "CRC64";
                c4283 = obj2;
            }
            this.f4092 = c4283;
        } catch (UnsupportedOptionsException unused2) {
            throw new IOException("Unsupported options in XZ Stream Header");
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        if (this.f4085 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4089;
        if (iOException != null) {
            throw iOException;
        }
        C1043 c1043 = this.f4090;
        if (c1043 == null) {
            return 0;
        }
        return c1043.f4096.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m3379(true);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4093;
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
        if (i2 == 0) {
            return 0;
        }
        if (this.f4085 == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4089;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f4094) {
            return -1;
        }
        int i4 = 0;
        while (i2 > 0) {
            try {
                C1043 c1043 = this.f4090;
                C2550 c2550 = this.f4087;
                if (c1043 == null) {
                    try {
                        this.f4090 = new C1043(this.f4085, this.f4092, this.f4088, this.f4084, this.f4091);
                    } catch (C1049 unused) {
                        c2550.m5701(this.f4085);
                        m3380();
                        this.f4094 = true;
                        if (i4 > 0) {
                            return i4;
                        }
                        return -1;
                    }
                }
                int read = this.f4090.read(bArr, i, i2);
                if (read > 0) {
                    i4 += read;
                    i += read;
                    i2 -= read;
                } else if (read == -1) {
                    C1043 c10432 = this.f4090;
                    c2550.m5702(c10432.f4106 + c10432.f4103.f4118 + c10432.f4098.f15865, c10432.f4101);
                    this.f4090 = null;
                }
            } catch (IOException e) {
                this.f4089 = e;
                if (i4 == 0) {
                    throw e;
                }
            }
        }
        return i4;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3379(boolean z) {
        if (this.f4085 != null) {
            C1043 c1043 = this.f4090;
            if (c1043 != null) {
                c1043.close();
                this.f4090 = null;
            }
            if (z) {
                try {
                    this.f4085.close();
                } finally {
                    this.f4085 = null;
                }
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3380() {
        byte[] bArr = new byte[12];
        new DataInputStream(this.f4085).readFully(bArr);
        byte b = bArr[10];
        byte[] bArr2 = AbstractC1035.f4067;
        if (b != bArr2[0] || bArr[11] != bArr2[1]) {
            throw new IOException("XZ Stream Footer is corrupt");
        }
        if (!י.ʻٴ(4, 6, 0, bArr)) {
            throw new IOException("XZ Stream Footer is corrupt");
        }
        try {
            C1047 c1047 = י.ʼᐧ(8, bArr);
            c1047.f4128 = 0L;
            for (int i = 0; i < 4; i++) {
                c1047.f4128 |= (bArr[i + 4] & 255) << (i * 8);
            }
            c1047.f4128 = (c1047.f4128 + 1) * 4;
            if (this.f4086.f4127 == c1047.f4127) {
                if (((י.ˏי(r0.f9658) + 1 + this.f4087.f9657 + 7) & (-4)) == c1047.f4128) {
                    return;
                }
            }
            throw new IOException("XZ Stream Footer does not match Stream Header");
        } catch (UnsupportedOptionsException unused) {
            throw new IOException("Unsupported options in XZ Stream Footer");
        }
    }
}
