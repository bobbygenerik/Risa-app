package p210;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import ˈˊ.ˉˆ;

/* renamed from: ˎﹶ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2975 extends FilterInputStream implements DataInput {
    public C2975(C2973 c2973) {
        super(c2973);
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        return (char) readUnsignedShort();
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
        int i = AbstractC2976.f11377;
        AbstractC2976.m6503(this, bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) {
        AbstractC2976.m6503(this, bArr, i, i2);
    }

    @Override // java.io.DataInput
    public final int readInt() {
        byte m6501 = m6501();
        byte m65012 = m6501();
        return ˉˆ.ˉˆ(m6501(), m6501(), m65012, m6501);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    public final long readLong() {
        byte m6501 = m6501();
        byte m65012 = m6501();
        byte m65013 = m6501();
        byte m65014 = m6501();
        byte m65015 = m6501();
        return ((m65012 & 255) << 8) | ((m65014 & 255) << 24) | ((m6501() & 255) << 40) | ((m6501() & 255) << 56) | ((m6501() & 255) << 48) | ((m65015 & 255) << 32) | ((m65013 & 255) << 16) | (m6501 & 255);
    }

    @Override // java.io.DataInput
    public final short readShort() {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        return ˉˆ.ˉˆ((byte) 0, (byte) 0, m6501(), m6501());
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        return (int) ((FilterInputStream) this).in.skip(i);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte m6501() {
        int read = ((FilterInputStream) this).in.read();
        if (-1 != read) {
            return (byte) read;
        }
        throw new EOFException();
    }
}
