package p288;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import p261.C3405;

/* renamed from: ٴـ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3599 extends AbstractC3596 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f14066;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public RandomAccessFile f14067;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f14068;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f14069;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public File f14070;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f14071;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RandomAccessFile randomAccessFile = this.f14067;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f14069;
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
        int read = this.f14067.read(bArr, i, i2);
        if ((read == i2 && read != -1) || !this.f14068) {
            return read;
        }
        m7559(this.f14071 + 1);
        this.f14071++;
        if (read < 0) {
            read = 0;
        }
        int read2 = this.f14067.read(bArr, read, i2 - read);
        return read2 > 0 ? read + read2 : read;
    }

    @Override // p288.AbstractC3596
    /* renamed from: ʽ */
    public final void mo7555(C3405 c3405) {
        if (this.f14068) {
            int i = this.f14071;
            int i2 = c3405.f13346;
            if (i != i2) {
                m7559(i2);
                this.f14071 = c3405.f13346;
            }
        }
        this.f14067.seek(c3405.f13347);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7559(int i) {
        File file = this.f14070;
        if (i != this.f14066) {
            String canonicalPath = file.getCanonicalPath();
            file = new File(canonicalPath.substring(0, canonicalPath.lastIndexOf(".")) + (i >= 9 ? ".z" : ".z0") + (i + 1));
        }
        if (file.exists()) {
            this.f14067.close();
            this.f14067 = new RandomAccessFile(file, "r");
        } else {
            throw new FileNotFoundException("zip split file does not exist: " + file);
        }
    }
}
