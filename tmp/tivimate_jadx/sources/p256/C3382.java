package p256;

import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p277.InterfaceC3536;
import p404.AbstractC4796;
import p404.AbstractC4804;
import ʼ.ᵎﹶ;

/* renamed from: יٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3382 implements InterfaceC3536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final byte[] f13208 = ᵎﹶ.ʼᐧ("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final byte[] f13209 = ᵎﹶ.ʼᐧ("070000004041424344454647");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f13210 = ᵎﹶ.ʼᐧ("a0784d7a4716f3feb4f64e7f4b39bf04");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ˑ f13211 = new ˑ(7);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f13212;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SecretKeySpec f13213;

    public C3382(byte[] bArr, byte[] bArr2) {
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (f13211.get() == null) {
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f13213 = new SecretKeySpec(bArr, "ChaCha20");
        this.f13212 = bArr2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m7264(Cipher cipher) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f13209);
            byte[] bArr = f13208;
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            byte[] bArr2 = f13210;
            if (cipher.doFinal(bArr2).length != 0) {
                return false;
            }
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            return cipher.doFinal(bArr2).length == 0;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f13212;
        if (length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr4 = new byte[12];
        System.arraycopy(bArr, bArr3.length, bArr4, 0, 12);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        Cipher cipher = (Cipher) f13211.get();
        cipher.init(2, this.f13213, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, bArr3.length + 12, (bArr.length - bArr3.length) - 12);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("plaintext is null");
        }
        byte[] m9578 = AbstractC4796.m9578(12);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(m9578);
        Cipher cipher = (Cipher) f13211.get();
        cipher.init(1, this.f13213, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        int outputSize = cipher.getOutputSize(bArr.length);
        byte[] bArr3 = this.f13212;
        if (outputSize > 2147483635 - bArr3.length) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + 12 + outputSize);
        System.arraycopy(m9578, 0, copyOf, bArr3.length, 12);
        if (cipher.doFinal(bArr, 0, bArr.length, copyOf, bArr3.length + 12) == outputSize) {
            return copyOf;
        }
        throw new GeneralSecurityException("not enough data written");
    }
}
