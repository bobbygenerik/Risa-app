package p256;

import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p071.C1631;
import p277.InterfaceC3536;
import p404.AbstractC4796;
import p404.AbstractC4804;
import p429.AbstractC5086;
import p429.C5088;

/* renamed from: יٴ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3381 implements InterfaceC3536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5088 f13205;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f13206;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f13207;

    public C3381(byte[] bArr, C1631 c1631, int i) {
        this.f13205 = new C5088(bArr);
        this.f13207 = c1631.m4413();
        this.f13206 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] m7263(byte[] bArr) {
        byte[] bArr2 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        byte[] bArr3 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        if (bArr.length > 12 || bArr.length < 8) {
            throw new GeneralSecurityException("invalid salt size");
        }
        System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 4, bArr.length);
        byte[] bArr4 = new byte[32];
        C5088 c5088 = this.f13205;
        System.arraycopy(c5088.mo7509(16, bArr2), 0, bArr4, 0, 16);
        System.arraycopy(c5088.mo7509(16, bArr3), 0, bArr4, 16, 16);
        return bArr4;
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f13207;
        int length2 = bArr3.length;
        int i = this.f13206;
        if (length < length2 + i + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        int length3 = bArr3.length + i;
        byte[] m7263 = m7263(Arrays.copyOfRange(bArr, bArr3.length, length3));
        if (!AbstractC1220.m3783(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        ˑ r3 = AbstractC3373.f13187;
        AbstractC5086.m9990(32);
        SecretKeySpec secretKeySpec = new SecretKeySpec(m7263, "AES");
        int i2 = length3 + 12;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, length3, i2);
        if (copyOfRange.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        if (bArr.length < length3 + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        AlgorithmParameterSpec m7236 = AbstractC3373.m7236(copyOfRange, 0, copyOfRange.length);
        Cipher cipher = (Cipher) AbstractC3373.f13187.get();
        cipher.init(2, secretKeySpec, m7236);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, i2, bArr.length - i2);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("plaintext is null");
        }
        int i = this.f13206;
        int i2 = i + 12;
        byte[] m9578 = AbstractC4796.m9578(i2);
        byte[] copyOf = Arrays.copyOf(m9578, i);
        byte[] copyOfRange = Arrays.copyOfRange(m9578, i, i2);
        byte[] m7263 = m7263(copyOf);
        if (!AbstractC1220.m3783(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        ˑ r4 = AbstractC3373.f13187;
        AbstractC5086.m9990(32);
        SecretKeySpec secretKeySpec = new SecretKeySpec(m7263, "AES");
        byte[] bArr3 = this.f13207;
        int length = bArr3.length + i + copyOfRange.length;
        if (copyOfRange.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        AlgorithmParameterSpec m7236 = AbstractC3373.m7236(copyOfRange, 0, copyOfRange.length);
        Cipher cipher = (Cipher) AbstractC3373.f13187.get();
        cipher.init(1, secretKeySpec, m7236);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        int outputSize = cipher.getOutputSize(bArr.length);
        if (outputSize > Integer.MAX_VALUE - length) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr4 = new byte[length + outputSize];
        if (cipher.doFinal(bArr, 0, bArr.length, bArr4, length) != outputSize) {
            throw new GeneralSecurityException("not enough data written");
        }
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        System.arraycopy(m9578, 0, bArr4, bArr3.length, m9578.length);
        return bArr4;
    }
}
