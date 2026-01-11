package p288;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;
import p010.AbstractC0844;
import p261.C3404;
import p261.C3407;
import p261.C3412;
import p332.AbstractC4200;
import ᵢ.ﹳٴ;

/* renamed from: ٴـ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3594 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final PushbackInputStream f14039;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final char[] f14040;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3407 f14041;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractC3590 f14045;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3412 f14046;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ﹳٴ f14038 = new ﹳٴ(18);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final CRC32 f14042 = new CRC32();

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f14044 = false;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f14047 = false;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f14043 = false;

    public C3594(InputStream inputStream, char[] cArr, C3407 c3407) {
        int i = c3407.f13360;
        if (i < 512) {
            throw new IllegalArgumentException("Buffer size cannot be less than 512 bytes");
        }
        this.f14039 = new PushbackInputStream(inputStream, i);
        this.f14040 = cArr;
        this.f14041 = c3407;
    }

    @Override // java.io.InputStream
    public final int available() {
        if (this.f14047) {
            throw new IOException("Stream closed");
        }
        return !this.f14043 ? 1 : 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f14047) {
            return;
        }
        AbstractC3590 abstractC3590 = this.f14045;
        if (abstractC3590 != null) {
            abstractC3590.close();
        }
        this.f14047 = true;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f14047) {
            throw new IOException("Stream closed");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Negative read length");
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.f14046 == null) {
            return -1;
        }
        try {
            int read = this.f14045.read(bArr, i, i2);
            if (read == -1) {
                m7553();
                return read;
            }
            this.f14042.update(bArr, i, read);
            return read;
        } catch (IOException e) {
            C3412 c3412 = this.f14046;
            if (c3412.f13366 && AbstractC0844.m3021(2, c3412.f13381)) {
                throw new IOException(e.getMessage(), e.getCause());
            }
            throw e;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7553() {
        boolean z;
        long j;
        long j2;
        AbstractC3590 abstractC3590 = this.f14045;
        PushbackInputStream pushbackInputStream = this.f14039;
        this.f14045.mo7550(pushbackInputStream, abstractC3590.mo7551(pushbackInputStream));
        C3412 c3412 = this.f14046;
        if (c3412.f13367 && !this.f14044) {
            List list = c3412.f13364;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((C3404) it.next()).f13342 == 1) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            ﹳٴ r5 = this.f14038;
            r5.getClass();
            byte[] bArr = new byte[4];
            AbstractC4200.m8609(pushbackInputStream, bArr);
            ﹳٴ r52 = (ﹳٴ) r5.ʽʽ;
            byte[] bArr2 = (byte[]) r52.ˈٴ;
            long j3 = r52.ʾˋ(0, bArr);
            if (j3 == 134695760) {
                AbstractC4200.m8609(pushbackInputStream, bArr);
                j3 = r52.ʾˋ(0, bArr);
            }
            if (z) {
                ﹳٴ.ʾᵎ(pushbackInputStream, bArr2, bArr2.length);
                j = r52.ʾˋ(0, bArr2);
                ﹳٴ.ʾᵎ(pushbackInputStream, bArr2, bArr2.length);
                j2 = r52.ʾˋ(0, bArr2);
            } else {
                j = r52.ᵢˏ(pushbackInputStream);
                j2 = r52.ᵢˏ(pushbackInputStream);
            }
            C3412 c34122 = this.f14046;
            c34122.f13369 = j;
            c34122.f13379 = j2;
            c34122.f13376 = j3;
        }
        C3412 c34123 = this.f14046;
        int i = c34123.f13381;
        CRC32 crc32 = this.f14042;
        if ((i == 4 && AbstractC0844.m3021(c34123.f13372.f13383, 2)) || this.f14046.f13376 == crc32.getValue()) {
            this.f14046 = null;
            crc32.reset();
            this.f14043 = true;
        } else {
            C3412 c34124 = this.f14046;
            if (c34124.f13366) {
                AbstractC0844.m3021(2, c34124.f13381);
            }
            throw new IOException("Reached end of entry, but crc verification failed for " + this.f14046.f13380);
        }
    }
}
