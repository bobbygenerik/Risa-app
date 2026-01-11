package p168;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.security.SecureRandom;
import p035.AbstractC1220;
import p441.C5195;
import ʼ.ᵎﹶ;

/* renamed from: ˊⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2614 implements InterfaceC2613 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C5195 f9895;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f9896;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final byte[] f9897;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final byte[] f9899;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final byte[] f9900;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ʽﹳ f9901;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final byte[] f9903;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final SecureRandom f9894 = new SecureRandom();

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f9902 = 1;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f9898 = 0;

    public C2614(char[] cArr, int i, boolean z) {
        if (cArr == null || cArr.length == 0) {
            throw new IOException("input password is empty or null");
        }
        if (i != 1 && i != 3) {
            throw new IOException("Invalid AES key strength");
        }
        this.f9896 = false;
        this.f9897 = new byte[16];
        this.f9900 = new byte[16];
        int m3778 = AbstractC1220.m3778(i);
        if (m3778 != 8 && m3778 != 16) {
            throw new IOException("invalid salt size, cannot generate salt");
        }
        int i2 = m3778 == 8 ? 2 : 4;
        byte[] bArr = new byte[m3778];
        for (int i3 = 0; i3 < i2; i3++) {
            int nextInt = this.f9894.nextInt();
            int i4 = i3 * 4;
            bArr[i4] = (byte) (nextInt >> 24);
            bArr[i4 + 1] = (byte) (nextInt >> 16);
            bArr[i4 + 2] = (byte) (nextInt >> 8);
            bArr[i4 + 3] = (byte) nextInt;
        }
        this.f9899 = bArr;
        byte[] bArr2 = ᵎﹶ.ᵔﹳ(bArr, cArr, i, z);
        byte[] bArr3 = new byte[2];
        System.arraycopy(bArr2, AbstractC1220.m3790(i) + AbstractC1220.m3788(i), bArr3, 0, 2);
        this.f9903 = bArr3;
        this.f9895 = ᵎﹶ.יـ(i, bArr2);
        int m3790 = AbstractC1220.m3790(i);
        byte[] bArr4 = new byte[m3790];
        System.arraycopy(bArr2, AbstractC1220.m3788(i), bArr4, 0, m3790);
        ʽﹳ r11 = new ʽﹳ();
        r11.ʼᐧ(bArr4);
        this.f9901 = r11;
    }

    @Override // p168.InterfaceC2613
    /* renamed from: ˉʿ */
    public final int mo5864(byte[] bArr, int i, int i2) {
        int i3;
        if (this.f9896) {
            throw new IOException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
        if (i2 % 16 != 0) {
            this.f9896 = true;
        }
        int i4 = i;
        while (true) {
            int i5 = i + i2;
            if (i4 >= i5) {
                return i2;
            }
            int i6 = i4 + 16;
            this.f9898 = i6 <= i5 ? 16 : i5 - i4;
            int i7 = this.f9902;
            byte[] bArr2 = this.f9900;
            ᵎﹶ.ᴵˊ(i7, bArr2);
            C5195 c5195 = this.f9895;
            byte[] bArr3 = this.f9897;
            c5195.m10176(bArr2, bArr3);
            int i8 = 0;
            while (true) {
                i3 = this.f9898;
                if (i8 < i3) {
                    int i9 = i4 + i8;
                    bArr[i9] = (byte) (bArr[i9] ^ bArr3[i8]);
                    i8++;
                }
            }
            this.f9901.ᴵᵔ(bArr, i4, i3);
            this.f9902++;
            i4 = i6;
        }
    }
}
