package p061;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* renamed from: ʾʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1531 extends OutputStream {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final byte[] f6012 = new byte[0];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f6013;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f6014 = new ArrayList();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public byte[] f6015;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f6016;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f6017;

    public C1531() {
        synchronized (this) {
            m4334(1024);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final String toString() {
        return new String(m4335(), Charset.defaultCharset());
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        try {
            int i2 = this.f6017;
            int i3 = i2 - this.f6013;
            if (i3 == this.f6015.length) {
                m4334(i2 + 1);
                i3 = 0;
            }
            this.f6015[i3] = (byte) i;
            this.f6017++;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        synchronized (this) {
            try {
                int i4 = this.f6017;
                int i5 = i4 + i2;
                int i6 = i4 - this.f6013;
                while (i2 > 0) {
                    int min = Math.min(i2, this.f6015.length - i6);
                    System.arraycopy(bArr, i3 - i2, this.f6015, i6, min);
                    i2 -= min;
                    if (i2 > 0) {
                        m4334(i5);
                        i6 = 0;
                    }
                }
                this.f6017 = i5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4334(int i) {
        int i2 = this.f6016;
        ArrayList arrayList = this.f6014;
        if (i2 < arrayList.size() - 1) {
            this.f6013 += this.f6015.length;
            int i3 = this.f6016 + 1;
            this.f6016 = i3;
            this.f6015 = (byte[]) arrayList.get(i3);
            return;
        }
        byte[] bArr = this.f6015;
        if (bArr == null) {
            this.f6013 = 0;
        } else {
            i = Math.max(bArr.length << 1, i - this.f6013);
            this.f6013 += this.f6015.length;
        }
        this.f6016++;
        byte[] bArr2 = new byte[i];
        this.f6015 = bArr2;
        arrayList.add(bArr2);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized byte[] m4335() {
        int i = this.f6017;
        if (i == 0) {
            return f6012;
        }
        byte[] bArr = new byte[i];
        ArrayList arrayList = this.f6014;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            byte[] bArr2 = (byte[]) obj;
            int min = Math.min(bArr2.length, i);
            System.arraycopy(bArr2, 0, bArr, i2, min);
            i2 += min;
            i -= min;
            if (i == 0) {
                break;
            }
        }
        return bArr;
    }
}
