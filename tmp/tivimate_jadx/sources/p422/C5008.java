package p422;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import p035.AbstractC1220;

/* renamed from: ﹳﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C5008 extends InputStream implements DataInput {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f18745;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final DataInputStream f18746;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public byte[] f18747;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ByteOrder f18748;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final ByteOrder f18744 = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final ByteOrder f18743 = ByteOrder.BIG_ENDIAN;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C5008(InputStream inputStream) {
        this(inputStream, 0);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
    }

    public C5008(InputStream inputStream, int i) {
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        this.f18748 = byteOrder;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f18746 = dataInputStream;
        dataInputStream.mark(0);
        this.f18745 = 0;
        this.f18748 = byteOrder;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5008(byte[] r2) {
        /*
            r1 = this;
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r2)
            java.nio.ByteOrder r2 = java.nio.ByteOrder.BIG_ENDIAN
            r2 = 0
            r1.<init>(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p422.C5008.<init>(byte[]):void");
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f18746.available();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f18745++;
        return this.f18746.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.f18746.read(bArr, i, i2);
        this.f18745 += read;
        return read;
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f18745++;
        return this.f18746.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        this.f18745++;
        int read = this.f18746.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f18745 += 2;
        return this.f18746.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) {
        this.f18745 += bArr.length;
        this.f18746.readFully(bArr);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) {
        this.f18745 += i2;
        this.f18746.readFully(bArr, i, i2);
    }

    @Override // java.io.DataInput
    public final int readInt() {
        this.f18745 += 4;
        DataInputStream dataInputStream = this.f18746;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        if ((read | read2 | read3 | read4) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f18748;
        if (byteOrder == f18744) {
            return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
        }
        if (byteOrder == f18743) {
            return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
        }
        throw new IOException("Invalid byte order: " + this.f18748);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() {
        long j;
        long j2;
        this.f18745 += 8;
        DataInputStream dataInputStream = this.f18746;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        int read5 = dataInputStream.read();
        int read6 = dataInputStream.read();
        int read7 = dataInputStream.read();
        int read8 = dataInputStream.read();
        if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f18748;
        if (byteOrder == f18744) {
            j = (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8);
            j2 = read;
        } else {
            if (byteOrder != f18743) {
                throw new IOException("Invalid byte order: " + this.f18748);
            }
            j = (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8);
            j2 = read8;
        }
        return j + j2;
    }

    @Override // java.io.DataInput
    public final short readShort() {
        this.f18745 += 2;
        DataInputStream dataInputStream = this.f18746;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f18748;
        if (byteOrder == f18744) {
            return (short) ((read2 << 8) + read);
        }
        if (byteOrder == f18743) {
            return (short) ((read << 8) + read2);
        }
        throw new IOException("Invalid byte order: " + this.f18748);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f18745 += 2;
        return this.f18746.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f18745++;
        return this.f18746.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        this.f18745 += 2;
        DataInputStream dataInputStream = this.f18746;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f18748;
        if (byteOrder == f18744) {
            return (read2 << 8) + read;
        }
        if (byteOrder == f18743) {
            return (read << 8) + read2;
        }
        throw new IOException("Invalid byte order: " + this.f18748);
    }

    @Override // java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9887(int i) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = i - i2;
            DataInputStream dataInputStream = this.f18746;
            int skip = (int) dataInputStream.skip(i3);
            if (skip <= 0) {
                if (this.f18747 == null) {
                    this.f18747 = new byte[8192];
                }
                skip = dataInputStream.read(this.f18747, 0, Math.min(8192, i3));
                if (skip == -1) {
                    throw new EOFException(AbstractC1220.m3773(i, "Reached EOF while skipping ", " bytes."));
                }
            }
            i2 += skip;
        }
        this.f18745 += i2;
    }
}
