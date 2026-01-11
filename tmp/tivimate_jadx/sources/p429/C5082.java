package p429;

import com.google.android.gms.internal.play_billing.י;
import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p071.C1631;
import p277.InterfaceC3535;
import p404.AbstractC4804;
import ﹳˋ.ٴﹶ;

/* renamed from: ﹶˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5082 implements InterfaceC3535 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f19167;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f19168;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5088 f19169;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final List f19163 = Arrays.asList(64);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f19164 = new byte[16];

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final byte[] f19166 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final ˑ f19165 = new ˑ(11);

    public C5082(byte[] bArr, C1631 c1631) {
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
        }
        if (!f19163.contains(Integer.valueOf(bArr.length))) {
            throw new InvalidKeyException(AbstractC1220.m3782(new StringBuilder("invalid key size: "), bArr.length, " bytes; key must have 64 bytes"));
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length / 2);
        this.f19168 = Arrays.copyOfRange(bArr, bArr.length / 2, bArr.length);
        this.f19169 = new C5088(copyOfRange);
        this.f19167 = c1631.m4413();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] m9988(byte[]... bArr) {
        byte[] bArr2;
        int length = bArr.length;
        C5088 c5088 = this.f19169;
        if (length == 0) {
            return c5088.mo7509(16, f19166);
        }
        byte[] mo7509 = c5088.mo7509(16, f19164);
        for (int i = 0; i < bArr.length - 1; i++) {
            byte[] bArr3 = bArr[i];
            if (bArr3 == null) {
                bArr3 = new byte[0];
            }
            mo7509 = י.ˉٴ(ٴﹶ.ﹳᐧ(mo7509), c5088.mo7509(16, bArr3));
        }
        byte[] bArr4 = bArr[bArr.length - 1];
        if (bArr4.length >= 16) {
            if (bArr4.length < mo7509.length) {
                throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
            }
            int length2 = bArr4.length - mo7509.length;
            bArr2 = Arrays.copyOf(bArr4, bArr4.length);
            for (int i2 = 0; i2 < mo7509.length; i2++) {
                int i3 = length2 + i2;
                bArr2[i3] = (byte) (bArr2[i3] ^ mo7509[i2]);
            }
        } else {
            if (bArr4.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] copyOf = Arrays.copyOf(bArr4, 16);
            copyOf[bArr4.length] = Byte.MIN_VALUE;
            bArr2 = י.ˉٴ(copyOf, ٴﹶ.ﹳᐧ(mo7509));
        }
        return c5088.mo7509(16, bArr2);
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ⁱˊ */
    public final byte[] mo6547(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f19167;
        if (length < bArr3.length + 16) {
            throw new GeneralSecurityException("Ciphertext too short.");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        Cipher cipher = (Cipher) f19165.get();
        byte[] copyOfRange = Arrays.copyOfRange(bArr, bArr3.length, bArr3.length + 16);
        byte[] bArr4 = (byte[]) copyOfRange.clone();
        bArr4[8] = (byte) (bArr4[8] & Byte.MAX_VALUE);
        bArr4[12] = (byte) (bArr4[12] & Byte.MAX_VALUE);
        cipher.init(2, new SecretKeySpec(this.f19168, "AES"), new IvParameterSpec(bArr4));
        int length2 = bArr3.length + 16;
        int length3 = bArr.length - length2;
        byte[] doFinal = cipher.doFinal(bArr, length2, length3);
        if (length3 == 0 && doFinal == null && "The Android Project".equals(System.getProperty("java.vendor"))) {
            doFinal = new byte[0];
        }
        if (MessageDigest.isEqual(copyOfRange, m9988(bArr2, doFinal))) {
            return doFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ﹳٴ */
    public final byte[] mo6548(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f19167;
        if (length > 2147483631 - bArr3.length) {
            throw new GeneralSecurityException("plaintext too long");
        }
        Cipher cipher = (Cipher) f19165.get();
        byte[] m9988 = m9988(bArr2, bArr);
        byte[] bArr4 = (byte[]) m9988.clone();
        bArr4[8] = (byte) (bArr4[8] & Byte.MAX_VALUE);
        bArr4[12] = (byte) (bArr4[12] & Byte.MAX_VALUE);
        cipher.init(1, new SecretKeySpec(this.f19168, "AES"), new IvParameterSpec(bArr4));
        byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + m9988.length + bArr.length);
        System.arraycopy(m9988, 0, copyOf, bArr3.length, m9988.length);
        if (cipher.doFinal(bArr, 0, bArr.length, copyOf, bArr3.length + m9988.length) == bArr.length) {
            return copyOf;
        }
        throw new GeneralSecurityException("not enough data written");
    }
}
