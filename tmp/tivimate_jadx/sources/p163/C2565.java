package p163;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p307.AbstractC3740;
import p332.AbstractC4197;
import ᵢ.ﹳٴ;

/* renamed from: ˊٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2565 extends OutputStream implements InterfaceC2564 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public File f9748;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public RandomAccessFile f9749;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f9750;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ﹳٴ f9751;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f9752;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f9753;

    public C2565(File file) {
        this(file, -1L);
    }

    public C2565(File file, long j) {
        this.f9751 = new ﹳٴ(17);
        if (j >= 0 && j < 65536) {
            throw new IOException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f9749 = new RandomAccessFile(file, "rw");
        this.f9752 = j;
        this.f9748 = file;
        this.f9750 = 0;
        this.f9753 = 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9749.close();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        long j = this.f9752;
        if (j == -1) {
            this.f9749.write(bArr, i, i2);
            this.f9753 += i2;
            return;
        }
        long j2 = this.f9753;
        if (j2 >= j) {
            m5729();
            this.f9749.write(bArr, i, i2);
            this.f9753 = i2;
            return;
        }
        long j3 = i2;
        if (j2 + j3 <= j) {
            this.f9749.write(bArr, i, i2);
            this.f9753 += j3;
            return;
        }
        this.f9751.getClass();
        int i3 = ﹳٴ.ʼʼ(0, bArr);
        for (int i4 : AbstractC0844.m3019(12)) {
            if (i4 != 8 && AbstractC3740.m7938(i4) == i3) {
                m5729();
                this.f9749.write(bArr, i, i2);
                this.f9753 = j3;
                return;
            }
        }
        this.f9749.write(bArr, i, (int) (j - this.f9753));
        m5729();
        RandomAccessFile randomAccessFile = this.f9749;
        long j4 = j - this.f9753;
        randomAccessFile.write(bArr, i + ((int) j4), (int) (j3 - j4));
        this.f9753 = j3 - (j - this.f9753);
    }

    @Override // p163.InterfaceC2564
    /* renamed from: ʽ */
    public final int mo5724() {
        return this.f9750;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m5729() {
        String str;
        String m8597 = AbstractC4197.m8597(this.f9748.getName());
        String absolutePath = this.f9748.getAbsolutePath();
        if (this.f9748.getParent() == null) {
            str = "";
        } else {
            str = this.f9748.getParent() + System.getProperty("file.separator");
        }
        String str2 = ".z0" + (this.f9750 + 1);
        if (this.f9750 >= 9) {
            str2 = ".z" + (this.f9750 + 1);
        }
        File file = new File(AbstractC1220.m3795(str, m8597, str2));
        this.f9749.close();
        if (file.exists()) {
            throw new IOException("split file: " + file.getName() + " already exists in the current directory, cannot rename this file");
        }
        if (!this.f9748.renameTo(file)) {
            throw new IOException("cannot rename newly created split file");
        }
        this.f9748 = new File(absolutePath);
        this.f9749 = new RandomAccessFile(this.f9748, "rw");
        this.f9750++;
    }

    @Override // p163.InterfaceC2564
    /* renamed from: ᵎﹶ */
    public final long mo5726() {
        return this.f9749.getFilePointer();
    }
}
