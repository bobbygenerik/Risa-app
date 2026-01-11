package p022;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.CorruptedInputException;
import p012.C0881;
import p148.C2413;
import p241.C3234;
import p307.AbstractC3740;

/* renamed from: ʼˊ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1039 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C3234 f4072;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1048 f4073;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C0881 f4074;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public DataInputStream f4079;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C2413 f4080;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f4076 = 0;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f4078 = false;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f4075 = true;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f4082 = true;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f4077 = false;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public IOException f4081 = null;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final byte[] f4083 = new byte[1];

    public C1039(InputStream inputStream, int i, C1048 c1048) {
        inputStream.getClass();
        this.f4073 = c1048;
        this.f4079 = new DataInputStream(inputStream);
        this.f4074 = new C0881(c1048);
        this.f4072 = new C3234(m3377(i), c1048);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m3377(int i) {
        if (i < 4096 || i > 2147483632) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Unsupported dictionary size "));
        }
        return (i + 15) & (-16);
    }

    @Override // java.io.InputStream
    public final int available() {
        DataInputStream dataInputStream = this.f4079;
        if (dataInputStream == null) {
            throw new IOException("Stream closed");
        }
        IOException iOException = this.f4081;
        if (iOException == null) {
            return this.f4078 ? this.f4076 : Math.min(this.f4076, dataInputStream.available());
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4079 != null) {
            C3234 c3234 = this.f4072;
            if (c3234 != null) {
                byte[] bArr = c3234.f12355;
                C1048 c1048 = this.f4073;
                c1048.mo3387(bArr);
                this.f4072 = null;
                c1048.mo3387(this.f4074.f3738);
                this.f4074 = null;
            }
            try {
                this.f4079.close();
            } finally {
                this.f4079 = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4083;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ab, code lost:
    
        throw new org.tukaani.xz.CorruptedInputException();
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p022.C1039.read(byte[], int, int):int");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3378() {
        int readUnsignedByte = this.f4079.readUnsignedByte();
        if (readUnsignedByte == 0) {
            this.f4077 = true;
            C3234 c3234 = this.f4072;
            if (c3234 != null) {
                byte[] bArr = c3234.f12355;
                C1048 c1048 = this.f4073;
                c1048.mo3387(bArr);
                this.f4072 = null;
                c1048.mo3387(this.f4074.f3738);
                this.f4074 = null;
                return;
            }
            return;
        }
        if (readUnsignedByte >= 224 || readUnsignedByte == 1) {
            this.f4082 = true;
            this.f4075 = false;
            C3234 c32342 = this.f4072;
            c32342.f12349 = 0;
            c32342.f12350 = 0;
            c32342.f12351 = 0;
            c32342.f12356 = 0;
            c32342.f12355[c32342.f12354 - 1] = 0;
        } else if (this.f4075) {
            throw new CorruptedInputException();
        }
        if (readUnsignedByte < 128) {
            if (readUnsignedByte > 2) {
                throw new CorruptedInputException();
            }
            this.f4078 = false;
            this.f4076 = this.f4079.readUnsignedShort() + 1;
            return;
        }
        this.f4078 = true;
        int i = (readUnsignedByte & 31) << 16;
        this.f4076 = i;
        this.f4076 = this.f4079.readUnsignedShort() + 1 + i;
        int readUnsignedShort = this.f4079.readUnsignedShort();
        int i2 = readUnsignedShort + 1;
        if (readUnsignedByte >= 192) {
            this.f4082 = false;
            int readUnsignedByte2 = this.f4079.readUnsignedByte();
            if (readUnsignedByte2 > 224) {
                throw new CorruptedInputException();
            }
            int i3 = readUnsignedByte2 / 45;
            int i4 = readUnsignedByte2 - (i3 * 45);
            int i5 = i4 / 9;
            int i6 = i4 - (i5 * 9);
            if (i6 + i5 > 4) {
                throw new CorruptedInputException();
            }
            this.f4080 = new C2413(this.f4072, this.f4074, i6, i5, i3);
        } else {
            if (this.f4082) {
                throw new CorruptedInputException();
            }
            if (readUnsignedByte >= 160) {
                this.f4080.m5516();
            }
        }
        C0881 c0881 = this.f4074;
        DataInputStream dataInputStream = this.f4079;
        c0881.getClass();
        if (i2 < 5) {
            throw new CorruptedInputException();
        }
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new CorruptedInputException();
        }
        c0881.f3736 = dataInputStream.readInt();
        c0881.f3735 = -1;
        int i7 = readUnsignedShort - 4;
        byte[] bArr2 = c0881.f3738;
        int length = bArr2.length - i7;
        c0881.f3737 = length;
        dataInputStream.readFully(bArr2, length, i7);
    }
}
