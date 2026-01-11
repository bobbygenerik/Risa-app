package p288;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import javax.crypto.Mac;
import p035.AbstractC1220;
import p168.C2615;
import p168.InterfaceC2612;
import p261.C3410;
import p261.C3412;
import p332.AbstractC4200;
import ʼ.ᵎﹶ;

/* renamed from: ٴـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3598 extends AbstractC3597 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f14058;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f14059;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f14060;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f14061;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public byte[] f14062;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f14063;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f14064;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f14065;

    @Override // p288.AbstractC3597, java.io.InputStream
    public final int read() {
        byte[] bArr = this.f14062;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // p288.AbstractC3597, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
    @Override // p288.AbstractC3597, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r4, int r5, int r6) {
        /*
            r3 = this;
            r3.f14064 = r6
            r3.f14060 = r5
            r0 = 0
            r3.f14063 = r0
            int r1 = r3.f14058
            if (r1 == 0) goto L13
            r3.m7558(r5, r4)
            int r5 = r3.f14063
            if (r5 != r6) goto L13
            return r5
        L13:
            int r5 = r3.f14064
            r1 = 16
            r2 = -1
            if (r5 >= r1) goto L38
            byte[] r5 = r3.f14059
            int r1 = r5.length
            int r5 = super.read(r5, r0, r1)
            r3.f14061 = r0
            if (r5 != r2) goto L2c
            r3.f14058 = r0
            int r4 = r3.f14063
            if (r4 <= 0) goto L4a
            return r4
        L2c:
            r3.f14058 = r5
            int r5 = r3.f14060
            r3.m7558(r5, r4)
            int r5 = r3.f14063
            if (r5 != r6) goto L38
            return r5
        L38:
            int r5 = r3.f14060
            int r6 = r3.f14064
            int r0 = r6 % 16
            int r6 = r6 - r0
            int r4 = super.read(r4, r5, r6)
            if (r4 != r2) goto L4b
            int r4 = r3.f14063
            if (r4 <= 0) goto L4a
            return r4
        L4a:
            return r2
        L4b:
            int r5 = r3.f14063
            int r4 = r4 + r5
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p288.C3598.read(byte[], int, int):int");
    }

    @Override // p288.AbstractC3597
    /* renamed from: ʽ */
    public final void mo7556(InputStream inputStream, int i) {
        byte[] bArr = new byte[10];
        if (AbstractC4200.m8609(inputStream, bArr) != 10) {
            throw new IOException("Invalid AES Mac bytes. Could not read sufficient data");
        }
        ʽﹳ r4 = ((C2615) this.f14057).f9907;
        if (((ByteArrayOutputStream) r4.ˈٴ).size() > 0) {
            r4.ˆʾ(i);
        }
        byte[] bArr2 = new byte[10];
        System.arraycopy(((Mac) r4.ʽʽ).doFinal(), 0, bArr2, 0, 10);
        if (!Arrays.equals(bArr, bArr2)) {
            throw new IOException("Reached end of data for this entry, but aes verification failed");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˊⁱ.ﹳٴ, ˊⁱ.ʽ, java.lang.Object] */
    @Override // p288.AbstractC3597
    /* renamed from: ᵎﹶ */
    public final InterfaceC2612 mo7552(C3412 c3412, char[] cArr, boolean z) {
        C3410 c3410 = c3412.f13372;
        if (c3410 == null) {
            throw new IOException("invalid aes extra data record");
        }
        int i = c3410.f13384;
        if (i == 0) {
            throw new IOException("Invalid aes key strength in aes extra data record");
        }
        byte[] bArr = new byte[AbstractC1220.m3778(i)];
        m7557(bArr);
        byte[] bArr2 = new byte[2];
        m7557(bArr2);
        ?? obj = new Object();
        obj.f9904 = 1;
        obj.f9906 = new byte[16];
        obj.f9908 = new byte[16];
        if (cArr == null || cArr.length <= 0) {
            throw new IOException("empty or null password provided for AES decryption");
        }
        int i2 = c3410.f13384;
        byte[] bArr3 = ᵎﹶ.ᵔﹳ(bArr, cArr, i2, z);
        byte[] bArr4 = new byte[2];
        System.arraycopy(bArr3, AbstractC1220.m3790(i2) + AbstractC1220.m3788(i2), bArr4, 0, 2);
        if (!Arrays.equals(bArr2, bArr4)) {
            throw new IOException("Wrong Password");
        }
        obj.f9905 = ᵎﹶ.יـ(i2, bArr3);
        int m3790 = AbstractC1220.m3790(i2);
        byte[] bArr5 = new byte[m3790];
        System.arraycopy(bArr3, AbstractC1220.m3788(i2), bArr5, 0, m3790);
        ʽﹳ r7 = new ʽﹳ();
        r7.ʼᐧ(bArr5);
        obj.f9907 = r7;
        return obj;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m7558(int i, byte[] bArr) {
        int i2 = this.f14064;
        int i3 = this.f14058;
        if (i2 >= i3) {
            i2 = i3;
        }
        this.f14065 = i2;
        System.arraycopy(this.f14059, this.f14061, bArr, i, i2);
        int i4 = this.f14065;
        int i5 = this.f14061 + i4;
        this.f14061 = i5;
        if (i5 >= 15) {
            this.f14061 = 15;
        }
        int i6 = this.f14058 - i4;
        this.f14058 = i6;
        if (i6 <= 0) {
            this.f14058 = 0;
        }
        this.f14063 += i4;
        this.f14064 -= i4;
        this.f14060 += i4;
    }
}
