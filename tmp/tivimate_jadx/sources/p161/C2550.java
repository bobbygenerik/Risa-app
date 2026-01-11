package p161;

import com.google.android.gms.internal.play_billing.י;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.tukaani.xz.CorruptedInputException;
import org.tukaani.xz.XZIOException;
import p348.AbstractC4280;
import p348.C4283;

/* renamed from: ˊי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2550 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f9656;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f9657;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f9658;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f9659;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final CorruptedInputException f9660;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC4280 f9661;

    public C2550() {
        CorruptedInputException corruptedInputException = new CorruptedInputException();
        this.f9659 = 0L;
        this.f9656 = 0L;
        this.f9657 = 0L;
        this.f9658 = 0L;
        this.f9660 = corruptedInputException;
        try {
            this.f9661 = new C4283(1);
        } catch (NoSuchAlgorithmException unused) {
            this.f9661 = new C4283(0);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5701(InputStream inputStream) {
        CRC32 crc32 = new CRC32();
        crc32.update(0);
        CheckedInputStream checkedInputStream = new CheckedInputStream(inputStream, crc32);
        if (י.ᵔﹳ(checkedInputStream) != this.f9658) {
            throw new IOException("XZ Block Header or the start of XZ Index is corrupt");
        }
        C2550 c2550 = new C2550();
        for (long j = 0; j < this.f9658; j++) {
            try {
                c2550.m5702(י.ᵔﹳ(checkedInputStream), י.ᵔﹳ(checkedInputStream));
                if (c2550.f9659 > this.f9659 || c2550.f9656 > this.f9656 || c2550.f9657 > this.f9657) {
                    throw new IOException("XZ Index is corrupt");
                }
            } catch (XZIOException unused) {
                throw new IOException("XZ Index is corrupt");
            }
        }
        if (c2550.f9659 != this.f9659 || c2550.f9656 != this.f9656 || c2550.f9657 != this.f9657 || !Arrays.equals(c2550.f9661.mo8662(), this.f9661.mo8662())) {
            throw new IOException("XZ Index is corrupt");
        }
        DataInputStream dataInputStream = new DataInputStream(checkedInputStream);
        for (int i = (int) (3 & (4 - (((י.ˏי(this.f9658) + 1) + this.f9657) + 4))); i > 0; i--) {
            if (dataInputStream.readUnsignedByte() != 0) {
                throw new IOException("XZ Index is corrupt");
            }
        }
        long value = crc32.getValue();
        for (int i2 = 0; i2 < 4; i2++) {
            if (((value >>> (i2 * 8)) & 255) != dataInputStream.readUnsignedByte()) {
                throw new IOException("XZ Index is corrupt");
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5702(long j, long j2) {
        this.f9659 += (3 + j) & (-4);
        this.f9656 += j2;
        this.f9657 += י.ˏי(j2) + י.ˏי(j);
        this.f9658 = this.f9658 + 1;
        if (this.f9659 >= 0 && this.f9656 >= 0 && ((י.ˏי(r5) + 1 + this.f9657 + 7) & (-4)) <= 17179869184L) {
            if (((י.ˏי(this.f9658) + 1 + this.f9657 + 7) & (-4)) + this.f9659 + 12 + 12 >= 0) {
                ByteBuffer allocate = ByteBuffer.allocate(16);
                allocate.putLong(j);
                allocate.putLong(j2);
                byte[] array = allocate.array();
                AbstractC4280 abstractC4280 = this.f9661;
                abstractC4280.getClass();
                abstractC4280.mo8659(array, 0, array.length);
                return;
            }
        }
        throw this.f9660;
    }
}
