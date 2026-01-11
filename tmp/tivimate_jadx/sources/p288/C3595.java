package p288;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import p137.AbstractC2305;

/* renamed from: ٴـ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3595 extends RandomAccessFile {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public RandomAccessFile f14048;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f14049;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f14050;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final String f14051;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final File[] f14052;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f14053;

    public C3595(File file, File[] fileArr) {
        super(file, "r");
        this.f14050 = new byte[1];
        this.f14053 = 0;
        super.close();
        int i = 1;
        for (File file2 : fileArr) {
            String name = file2.getName();
            String substring = !name.contains(".") ? "" : name.substring(name.lastIndexOf(".") + 1);
            try {
                if (i != Integer.parseInt(substring)) {
                    throw new IOException("Split file number " + i + " does not exist");
                }
                i++;
            } catch (NumberFormatException unused) {
                throw new IOException(AbstractC2305.m5378("Split file extension not in expected format. Found: ", substring, " expected of format: .001, .002, etc"));
            }
        }
        this.f14048 = new RandomAccessFile(file, "r");
        this.f14052 = fileArr;
        this.f14049 = file.length();
        this.f14051 = "r";
    }

    @Override // java.io.RandomAccessFile, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RandomAccessFile randomAccessFile = this.f14048;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        super.close();
    }

    @Override // java.io.RandomAccessFile
    public final long getFilePointer() {
        return this.f14048.getFilePointer();
    }

    @Override // java.io.RandomAccessFile
    public final long length() {
        return this.f14048.length();
    }

    @Override // java.io.RandomAccessFile
    public final int read() {
        byte[] bArr = this.f14050;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.RandomAccessFile
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.RandomAccessFile
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.f14048.read(bArr, i, i2);
        if (read != -1) {
            return read;
        }
        int i3 = this.f14053;
        if (i3 == this.f14052.length - 1) {
            return -1;
        }
        m7554(i3 + 1);
        return read(bArr, i, i2);
    }

    @Override // java.io.RandomAccessFile
    public final void seek(long j) {
        long j2 = this.f14049;
        int i = (int) (j / j2);
        if (i != this.f14053) {
            m7554(i);
        }
        this.f14048.seek(j - (i * j2));
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
        throw null;
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7554(int i) {
        if (this.f14053 == i) {
            return;
        }
        File[] fileArr = this.f14052;
        if (i > fileArr.length - 1) {
            throw new IOException("split counter greater than number of split files");
        }
        RandomAccessFile randomAccessFile = this.f14048;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        this.f14048 = new RandomAccessFile(fileArr[i], this.f14051);
        this.f14053 = i;
    }
}
