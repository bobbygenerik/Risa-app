package p256;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p062.C1560;
import p277.InterfaceC3536;
import p404.AbstractC4796;
import p404.AbstractC4804;
import p429.AbstractC5086;
import ʼ.ᵎﹶ;

/* renamed from: יٴ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3386 implements InterfaceC3536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f13228;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final SecretKeySpec f13229;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1560 f13230;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final byte[] f13223 = ᵎﹶ.ʼᐧ("7a806c");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f13224 = ᵎﹶ.ʼᐧ("46bb91c3c5");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final byte[] f13227 = ᵎﹶ.ʼᐧ("36864200e0eaf5284d884a0e77d31646");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final byte[] f13225 = ᵎﹶ.ʼᐧ("bae8e37fc83441b16034566b");

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final byte[] f13226 = ᵎﹶ.ʼᐧ("af60eb711bd85bc1e4d3e0a462e074eea428a8");

    public C3386(byte[] bArr, byte[] bArr2, C1560 c1560) {
        this.f13228 = bArr2;
        AbstractC5086.m9990(bArr.length);
        this.f13229 = new SecretKeySpec(bArr, "AES");
        this.f13230 = c1560;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m7272(Cipher cipher) {
        try {
            byte[] bArr = f13225;
            cipher.init(2, new SecretKeySpec(f13227, "AES"), new GCMParameterSpec(128, bArr, 0, bArr.length));
            cipher.updateAAD(f13224);
            byte[] bArr2 = f13226;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), f13223);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f13228;
        if (length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        this.f13230.getClass();
        Cipher m4350 = C1560.m4350();
        m4350.init(2, this.f13229, new GCMParameterSpec(128, bArr, bArr3.length, 12));
        if (bArr2 != null && bArr2.length != 0) {
            m4350.updateAAD(bArr2);
        }
        return m4350.doFinal(bArr, bArr3.length + 12, (bArr.length - bArr3.length) - 12);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        this.f13230.getClass();
        Cipher m4350 = C1560.m4350();
        int length = bArr.length;
        byte[] bArr3 = this.f13228;
        if (length > 2147483619 - bArr3.length) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + 12 + bArr.length + 16);
        byte[] m9578 = AbstractC4796.m9578(12);
        System.arraycopy(m9578, 0, copyOf, bArr3.length, 12);
        m4350.init(1, this.f13229, new GCMParameterSpec(128, m9578, 0, m9578.length));
        if (bArr2 != null && bArr2.length != 0) {
            m4350.updateAAD(bArr2);
        }
        int doFinal = m4350.doFinal(bArr, 0, bArr.length, copyOf, bArr3.length + 12);
        if (doFinal == bArr.length + 16) {
            return copyOf;
        }
        throw new GeneralSecurityException(AbstractC1220.m3773(doFinal - bArr.length, "encryption failed; AES-GCM-SIV tag must be 16 bytes, but got only ", " bytes"));
    }
}
