package p105;

import ar.tvplayer.core.domain.ʽﹳ;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: ˆי.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1928 implements Closeable {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Logger f7669 = Logger.getLogger(C1928.class.getName());

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f7670;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final RandomAccessFile f7671;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1931 f7672;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final byte[] f7673;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f7674;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C1931 f7675;

    public C1928(File file) {
        byte[] bArr = new byte[16];
        this.f7673 = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] iArr = {4096, 0, 0, 0};
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    m4871(bArr2, i, iArr[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.f7671 = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int m4870 = m4870(0, bArr);
        this.f7674 = m4870;
        if (m4870 > randomAccessFile2.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f7674 + ", Actual length: " + randomAccessFile2.length());
        }
        this.f7670 = m4870(4, bArr);
        int m48702 = m4870(8, bArr);
        int m48703 = m4870(12, bArr);
        this.f7672 = m4873(m48702);
        this.f7675 = m4873(m48703);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static int m4870(int i, byte[] bArr) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public static void m4871(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f7671.close();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C1928.class.getSimpleName());
        sb.append("[fileLength=");
        sb.append(this.f7674);
        sb.append(", size=");
        sb.append(this.f7670);
        sb.append(", first=");
        sb.append(this.f7672);
        sb.append(", last=");
        sb.append(this.f7675);
        sb.append(", element lengths=[");
        try {
            m4883(new ʽﹳ(sb));
        } catch (IOException e) {
            f7669.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4872(byte[] bArr) {
        int m4879;
        int length = bArr.length;
        synchronized (this) {
            if (length >= 0) {
                if (length <= bArr.length) {
                    m4876(length);
                    boolean m4878 = m4878();
                    if (m4878) {
                        m4879 = 16;
                    } else {
                        C1931 c1931 = this.f7675;
                        m4879 = m4879(c1931.f7681 + 4 + c1931.f7680);
                    }
                    C1931 c19312 = new C1931(m4879, length);
                    m4871(this.f7673, 0, length);
                    m4880(this.f7673, m4879, 4);
                    m4880(bArr, m4879 + 4, length);
                    m4877(this.f7674, this.f7670 + 1, m4878 ? m4879 : this.f7672.f7681, m4879);
                    this.f7675 = c19312;
                    this.f7670++;
                    if (m4878) {
                        this.f7672 = c19312;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1931 m4873(int i) {
        if (i == 0) {
            return C1931.f7679;
        }
        RandomAccessFile randomAccessFile = this.f7671;
        randomAccessFile.seek(i);
        return new C1931(i, randomAccessFile.readInt());
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final int m4874() {
        if (this.f7670 == 0) {
            return 16;
        }
        C1931 c1931 = this.f7675;
        int i = c1931.f7681;
        int i2 = this.f7672.f7681;
        return i >= i2 ? (i - i2) + 4 + c1931.f7680 + 16 : (((i + 4) + c1931.f7680) + this.f7674) - i2;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m4875(int i, int i2, int i3, byte[] bArr) {
        int m4879 = m4879(i);
        int i4 = m4879 + i3;
        int i5 = this.f7674;
        RandomAccessFile randomAccessFile = this.f7671;
        if (i4 <= i5) {
            randomAccessFile.seek(m4879);
            randomAccessFile.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - m4879;
        randomAccessFile.seek(m4879);
        randomAccessFile.readFully(bArr, i2, i6);
        randomAccessFile.seek(16L);
        randomAccessFile.readFully(bArr, i2 + i6, i3 - i6);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m4876(int i) {
        int i2 = i + 4;
        int m4874 = this.f7674 - m4874();
        if (m4874 >= i2) {
            return;
        }
        int i3 = this.f7674;
        do {
            m4874 += i3;
            i3 <<= 1;
        } while (m4874 < i2);
        RandomAccessFile randomAccessFile = this.f7671;
        randomAccessFile.setLength(i3);
        randomAccessFile.getChannel().force(true);
        C1931 c1931 = this.f7675;
        int m4879 = m4879(c1931.f7681 + 4 + c1931.f7680);
        if (m4879 < this.f7672.f7681) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.f7674);
            long j = m4879 - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i4 = this.f7675.f7681;
        int i5 = this.f7672.f7681;
        if (i4 < i5) {
            int i6 = (this.f7674 + i4) - 16;
            m4877(i3, this.f7670, i5, i6);
            this.f7675 = new C1931(i6, this.f7675.f7680);
        } else {
            m4877(i3, this.f7670, i5, i4);
        }
        this.f7674 = i3;
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final void m4877(int i, int i2, int i3, int i4) {
        int[] iArr = {i, i2, i3, i4};
        int i5 = 0;
        int i6 = 0;
        while (true) {
            byte[] bArr = this.f7673;
            if (i5 >= 4) {
                RandomAccessFile randomAccessFile = this.f7671;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                m4871(bArr, i6, iArr[i5]);
                i6 += 4;
                i5++;
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final synchronized boolean m4878() {
        return this.f7670 == 0;
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final int m4879(int i) {
        int i2 = this.f7674;
        return i < i2 ? i : (i + 16) - i2;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m4880(byte[] bArr, int i, int i2) {
        int m4879 = m4879(i);
        int i3 = m4879 + i2;
        int i4 = this.f7674;
        RandomAccessFile randomAccessFile = this.f7671;
        if (i3 <= i4) {
            randomAccessFile.seek(m4879);
            randomAccessFile.write(bArr, 0, i2);
            return;
        }
        int i5 = i4 - m4879;
        randomAccessFile.seek(m4879);
        randomAccessFile.write(bArr, 0, i5);
        randomAccessFile.seek(16L);
        randomAccessFile.write(bArr, i5, i2 - i5);
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final synchronized void m4881() {
        try {
            if (m4878()) {
                throw new NoSuchElementException();
            }
            if (this.f7670 == 1) {
                m4882();
            } else {
                C1931 c1931 = this.f7672;
                int m4879 = m4879(c1931.f7681 + 4 + c1931.f7680);
                m4875(m4879, 0, 4, this.f7673);
                int m4870 = m4870(0, this.f7673);
                m4877(this.f7674, this.f7670 - 1, m4879, this.f7675.f7681);
                this.f7670--;
                this.f7672 = new C1931(m4879, m4870);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized void m4882() {
        m4877(4096, 0, 0, 0);
        this.f7670 = 0;
        C1931 c1931 = C1931.f7679;
        this.f7672 = c1931;
        this.f7675 = c1931;
        if (this.f7674 > 4096) {
            RandomAccessFile randomAccessFile = this.f7671;
            randomAccessFile.setLength(4096);
            randomAccessFile.getChannel().force(true);
        }
        this.f7674 = 4096;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final synchronized void m4883(InterfaceC1923 interfaceC1923) {
        int i = this.f7672.f7681;
        for (int i2 = 0; i2 < this.f7670; i2++) {
            C1931 m4873 = m4873(i);
            interfaceC1923.mo4864(new C1921(this, m4873), m4873.f7680);
            i = m4879(m4873.f7681 + 4 + m4873.f7680);
        }
    }
}
