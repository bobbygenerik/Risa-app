package p429;

import com.google.android.gms.internal.play_billing.י;
import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p282.InterfaceC3562;
import ﹳˋ.ٴﹶ;

/* renamed from: ﹶˆ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5088 implements InterfaceC3562 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ˑ f19177 = new ˑ(12);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f19178;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f19179;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SecretKeySpec f19180;

    public C5088(byte[] bArr) {
        AbstractC5086.m9990(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f19180 = secretKeySpec;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        Cipher cipher = (Cipher) f19177.get();
        cipher.init(1, secretKeySpec);
        byte[] bArr2 = ٴﹶ.ﹳᐧ(cipher.doFinal(new byte[16]));
        this.f19179 = bArr2;
        this.f19178 = ٴﹶ.ﹳᐧ(bArr2);
    }

    @Override // p282.InterfaceC3562
    /* renamed from: ﹳٴ */
    public final byte[] mo7509(int i, byte[] bArr) {
        byte[] bArr2;
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        Cipher cipher = (Cipher) f19177.get();
        cipher.init(1, this.f19180);
        int length = bArr.length;
        int i2 = length == 0 ? 1 : ((length - 1) / 16) + 1;
        if (i2 * 16 == bArr.length) {
            bArr2 = י.ٴᵢ((i2 - 1) * 16, 16, bArr, this.f19179);
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, (i2 - 1) * 16, bArr.length);
            if (copyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
            copyOf[copyOfRange.length] = Byte.MIN_VALUE;
            bArr2 = י.ˉٴ(copyOf, this.f19178);
        }
        byte[] bArr3 = new byte[16];
        byte[] bArr4 = new byte[16];
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            int i4 = i3 * 16;
            for (int i5 = 0; i5 < 16; i5++) {
                bArr4[i5] = (byte) (bArr3[i5] ^ bArr[i5 + i4]);
            }
            if (cipher.doFinal(bArr4, 0, 16, bArr3) != 16) {
                throw new IllegalStateException("Cipher didn't write full block");
            }
        }
        for (int i6 = 0; i6 < 16; i6++) {
            bArr4[i6] = (byte) (bArr3[i6] ^ bArr2[i6]);
        }
        if (cipher.doFinal(bArr4, 0, 16, bArr3) == 16) {
            return 16 == i ? bArr3 : Arrays.copyOf(bArr3, i);
        }
        throw new IllegalStateException("Cipher didn't write full block");
    }
}
