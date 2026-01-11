package p429;

import com.parse.ˑ;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;

/* renamed from: ﹶˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5093 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ˑ f19193 = new ˑ(9);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f19194;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f19195;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SecretKeySpec f19196;

    public C5093(int i, byte[] bArr) {
        if (!AbstractC1220.m3783(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        AbstractC5086.m9990(bArr.length);
        this.f19196 = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f19193.get()).getBlockSize();
        this.f19194 = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f19195 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9996(byte[] bArr, int i, int i2, byte[] bArr2, int i3, byte[] bArr3, boolean z) {
        Cipher cipher = (Cipher) f19193.get();
        byte[] bArr4 = new byte[this.f19194];
        System.arraycopy(bArr3, 0, bArr4, 0, this.f19195);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        SecretKeySpec secretKeySpec = this.f19196;
        if (z) {
            cipher.init(1, secretKeySpec, ivParameterSpec);
        } else {
            cipher.init(2, secretKeySpec, ivParameterSpec);
        }
        if (cipher.doFinal(bArr, i, i2, bArr2, i3) != i2) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
    }
}
