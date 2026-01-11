package p022;

import androidx.leanback.widget.ﾞʻ;
import com.google.android.gms.internal.play_billing.י;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.tukaani.xz.CorruptedInputException;
import p035.AbstractC1220;
import p348.AbstractC4280;
import p411.AbstractC4892;

/* renamed from: ʼˊ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1043 extends InputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InputStream f4096;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final DataInputStream f4097;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC4280 f4098;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final long f4099;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f4100;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final long f4102;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1045 f4103;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f4104;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f4106;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f4101 = 0;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f4105 = false;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final byte[] f4107 = new byte[1];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v12, types: [ʼˊ.ⁱˊ, java.lang.Object] */
    public C1043(InputStream inputStream, AbstractC4280 abstractC4280, boolean z, int i, C1048 c1048) {
        int i2;
        this.f4100 = -1L;
        this.f4102 = -1L;
        this.f4098 = abstractC4280;
        this.f4104 = z;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f4097 = dataInputStream;
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if (readUnsignedByte == 0) {
            throw new Exception();
        }
        int i3 = (readUnsignedByte + 1) * 4;
        this.f4106 = i3;
        byte[] bArr = new byte[i3];
        bArr[0] = (byte) readUnsignedByte;
        dataInputStream.readFully(bArr, 1, i3 - 1);
        int i4 = i3 - 4;
        if (!י.ʻٴ(0, i4, i4, bArr)) {
            throw new IOException("XZ Block Header is corrupt");
        }
        int i5 = bArr[1];
        if ((i5 & 60) != 0) {
            throw new IOException("Unsupported options in XZ Block Header");
        }
        int i6 = i5 & 3;
        int i7 = i6 + 1;
        long[] jArr = new long[i7];
        byte[][] bArr2 = new byte[i7];
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 2, i3 - 6);
        int i8 = i6;
        try {
            long j = (9223372036854775804L - i3) - abstractC4280.f15865;
            this.f4099 = j;
            if ((bArr[1] & 64) != 0) {
                i2 = 1;
                long j2 = י.ᵔﹳ(byteArrayInputStream);
                this.f4102 = j2;
                if (j2 == 0 || j2 > j) {
                    throw new CorruptedInputException();
                }
                this.f4099 = j2;
            } else {
                i2 = 1;
            }
            if ((bArr[i2] & 128) != 0) {
                this.f4100 = י.ᵔﹳ(byteArrayInputStream);
            }
            for (int i9 = 0; i9 < i7; i9++) {
                jArr[i9] = י.ᵔﹳ(byteArrayInputStream);
                long j3 = י.ᵔﹳ(byteArrayInputStream);
                if (j3 > byteArrayInputStream.available()) {
                    throw new CorruptedInputException();
                }
                byte[] bArr3 = new byte[(int) j3];
                bArr2[i9] = bArr3;
                byteArrayInputStream.read(bArr3);
            }
            for (int available = byteArrayInputStream.available(); available > 0; available--) {
                if (byteArrayInputStream.read() != 0) {
                    throw new IOException("Unsupported options in XZ Block Header");
                }
            }
            InterfaceC1042[] interfaceC1042Arr = new InterfaceC1042[i7];
            for (int i10 = 0; i10 < i7; i10++) {
                long j4 = jArr[i10];
                if (j4 == 33) {
                    byte[] bArr4 = bArr2[i10];
                    ﾞʻ r7 = new ﾞʻ(3);
                    if (bArr4.length == i2) {
                        byte b = bArr4[0];
                        if ((b & 255) <= 37) {
                            r7.ᴵˊ = ((b & 1) | 2) << ((b >>> 1) + 11);
                            interfaceC1042Arr[i10] = r7;
                        }
                    }
                    throw new IOException("Unsupported LZMA2 properties");
                }
                if (j4 == 3) {
                    interfaceC1042Arr[i10] = new ﾞʻ(bArr2[i10]);
                } else {
                    if (j4 < 4 || j4 > 11) {
                        throw new IOException("Unknown Filter ID " + jArr[i10]);
                    }
                    byte[] bArr5 = bArr2[i10];
                    ?? obj = new Object();
                    obj.f4128 = j4;
                    if (bArr5.length == 0) {
                        obj.f4127 = 0;
                    } else {
                        if (bArr5.length != 4) {
                            throw new IOException("Unsupported BCJ filter properties");
                        }
                        int i11 = 0;
                        for (int i12 = 0; i12 < 4; i12++) {
                            i11 |= (bArr5[i12] & 255) << (i12 * 8);
                        }
                        obj.f4127 = i11;
                    }
                    interfaceC1042Arr[i10] = obj;
                }
            }
            int i13 = 0;
            while (true) {
                int i14 = i8;
                if (i13 >= i14) {
                    if (!interfaceC1042Arr[i14].mo3373()) {
                        throw new IOException("Unsupported XZ filter chain");
                    }
                    int i15 = 0;
                    for (int i16 = 0; i16 < i7; i16++) {
                        if (interfaceC1042Arr[i16].mo3374()) {
                            i15++;
                        }
                    }
                    if (i15 > 3) {
                        throw new IOException("Unsupported XZ filter chain");
                    }
                    if (i >= 0) {
                        int i17 = 0;
                        for (int i18 = 0; i18 < i7; i18++) {
                            i17 += interfaceC1042Arr[i18].mo3382();
                        }
                        if (i17 > i) {
                            throw new IOException(AbstractC4892.m9681("", i17, " KiB of memory would be needed; limit was ", i, " KiB"));
                        }
                    }
                    C1045 c1045 = new C1045(inputStream);
                    this.f4103 = c1045;
                    this.f4096 = c1045;
                    for (int i19 = i14; i19 >= 0; i19--) {
                        this.f4096 = interfaceC1042Arr[i19].mo3381(this.f4096, c1048);
                    }
                    return;
                }
                if (!interfaceC1042Arr[i13].mo3372()) {
                    throw new IOException("Unsupported XZ filter chain");
                }
                i13++;
                i8 = i14;
            }
        } catch (IOException unused) {
            throw new IOException("XZ Block Header is corrupt");
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f4096.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f4096.close();
        } catch (IOException unused) {
        }
        this.f4096 = null;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f4107;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f4105) {
            return -1;
        }
        int read = this.f4096.read(bArr, i, i2);
        if (read > 0) {
            if (this.f4104) {
                this.f4098.mo8659(bArr, i, read);
            }
            long j = this.f4101 + read;
            this.f4101 = j;
            long j2 = this.f4103.f4118;
            if (j2 >= 0 && j2 <= this.f4099 && j >= 0) {
                long j3 = this.f4100;
                if (j3 == -1 || j <= j3) {
                    if (read < i2 || j == j3) {
                        if (this.f4096.read() != -1) {
                            throw new CorruptedInputException();
                        }
                        m3383();
                        this.f4105 = true;
                        return read;
                    }
                }
            }
            throw new CorruptedInputException();
        }
        if (read == -1) {
            m3383();
            this.f4105 = true;
        }
        return read;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3383() {
        long j = this.f4103.f4118;
        long j2 = this.f4102;
        if (j2 == -1 || j2 == j) {
            long j3 = this.f4100;
            if (j3 == -1 || j3 == this.f4101) {
                while (true) {
                    long j4 = 1 + j;
                    long j5 = j & 3;
                    DataInputStream dataInputStream = this.f4097;
                    if (j5 == 0) {
                        AbstractC4280 abstractC4280 = this.f4098;
                        byte[] bArr = new byte[abstractC4280.f15865];
                        dataInputStream.readFully(bArr);
                        if (this.f4104 && !Arrays.equals(abstractC4280.mo8662(), bArr)) {
                            throw new IOException(AbstractC1220.m3775(new StringBuilder("Integrity check ("), abstractC4280.f15864, ") does not match"));
                        }
                        return;
                    }
                    if (dataInputStream.readUnsignedByte() != 0) {
                        throw new CorruptedInputException();
                    }
                    j = j4;
                }
            }
        }
        throw new CorruptedInputException();
    }
}
