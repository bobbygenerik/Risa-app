package p164;

import com.bumptech.glide.ˈ;
import com.hierynomus.protocol.commons.buffer.Buffer$BufferException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p197.C2902;

/* renamed from: ˊᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2584 extends InputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9809;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f9810;

    public /* synthetic */ C2584(int i, Object obj) {
        this.f9809 = i;
        this.f9810 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m5787() {
    }

    @Override // java.io.InputStream
    public final int available() {
        switch (this.f9809) {
            case 0:
                return (int) Math.min(((C2599) this.f9810).f9835, Integer.MAX_VALUE);
            case 1:
                C2586 c2586 = (C2586) this.f9810;
                if (c2586.f9811) {
                    throw new IOException("closed");
                }
                return (int) Math.min(c2586.f9813.f9835, Integer.MAX_VALUE);
            default:
                return ((C2902) this.f9810).m6421();
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        switch (this.f9809) {
            case 0:
                return;
            case 1:
                ((C2586) this.f9810).close();
                return;
            default:
                super.close();
                return;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        switch (this.f9809) {
            case 0:
                C2599 c2599 = (C2599) this.f9810;
                if (c2599.f9835 > 0) {
                    return c2599.readByte() & 255;
                }
                return -1;
            case 1:
                C2586 c2586 = (C2586) this.f9810;
                C2599 c25992 = c2586.f9813;
                if (c2586.f9811) {
                    throw new IOException("closed");
                }
                if (c25992.f9835 == 0 && c2586.f9812.mo5763(c25992, 8192L) == -1) {
                    return -1;
                }
                return c25992.readByte() & 255;
            default:
                try {
                    return ((C2902) this.f9810).m6410() & 255;
                } catch (Buffer$BufferException e) {
                    throw new IOException(e);
                }
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        switch (this.f9809) {
            case 2:
                try {
                    ((C2902) this.f9810).m6411(bArr.length, bArr);
                    return bArr.length;
                } catch (Buffer$BufferException e) {
                    throw new IOException(e);
                }
            default:
                return super.read(bArr);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        switch (this.f9809) {
            case 0:
                return ((C2599) this.f9810).read(bArr, i, i2);
            case 1:
                C2586 c2586 = (C2586) this.f9810;
                C2599 c2599 = c2586.f9813;
                if (c2586.f9811) {
                    throw new IOException("closed");
                }
                ˈ.ᵔᵢ(bArr.length, i, i2);
                if (c2599.f9835 == 0 && c2586.f9812.mo5763(c2599, 8192L) == -1) {
                    return -1;
                }
                return c2599.read(bArr, i, i2);
            default:
                return super.read(bArr, i, i2);
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        switch (this.f9809) {
            case 2:
                ((C2902) this.f9810).f10937 = (int) j;
                return j;
            default:
                return super.skip(j);
        }
    }

    public String toString() {
        switch (this.f9809) {
            case 0:
                return ((C2599) this.f9810) + ".inputStream()";
            case 1:
                return ((C2586) this.f9810) + ".inputStream()";
            default:
                return super.toString();
        }
    }

    @Override // java.io.InputStream
    public long transferTo(OutputStream outputStream) {
        switch (this.f9809) {
            case 1:
                C2586 c2586 = (C2586) this.f9810;
                C2599 c2599 = c2586.f9813;
                if (c2586.f9811) {
                    throw new IOException("closed");
                }
                long j = 0;
                long j2 = 0;
                while (true) {
                    if (c2599.f9835 == j && c2586.f9812.mo5763(c2599, 8192L) == -1) {
                        return j2;
                    }
                    long j3 = c2599.f9835;
                    j2 += j3;
                    ˈ.ᵔᵢ(j3, 0L, j3);
                    C2577 c2577 = c2599.f9834;
                    while (j3 > j) {
                        int min = (int) Math.min(j3, c2577.f9778 - c2577.f9782);
                        outputStream.write(c2577.f9783, c2577.f9782, min);
                        int i = c2577.f9782 + min;
                        c2577.f9782 = i;
                        long j4 = min;
                        c2599.f9835 -= j4;
                        j3 -= j4;
                        if (i == c2577.f9778) {
                            C2577 m5776 = c2577.m5776();
                            c2599.f9834 = m5776;
                            AbstractC2570.m5744(c2577);
                            c2577 = m5776;
                        }
                        j = 0;
                    }
                }
                break;
            default:
                return super.transferTo(outputStream);
        }
    }
}
