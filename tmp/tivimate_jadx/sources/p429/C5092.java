package p429;

import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p277.InterfaceC3536;
import p404.AbstractC4796;
import p404.AbstractC4804;

/* renamed from: ﹶˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5092 implements InterfaceC3536 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ˑ f19188 = new ˑ(10);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final SecretKeySpec f19189;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f19190;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5088 f19191;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f19192;

    public C5092(int i, byte[] bArr, byte[] bArr2) {
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
        }
        if (i != 12 && i != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f19190 = i;
        AbstractC5086.m9990(bArr.length);
        this.f19189 = new SecretKeySpec(bArr, "AES");
        this.f19191 = new C5088(bArr);
        this.f19192 = bArr2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] m9995(int i, int i2, int i3, byte[] bArr) {
        byte[] bArr2 = new byte[i3 + 16];
        bArr2[15] = (byte) i;
        System.arraycopy(bArr, i2, bArr2, 16, i3);
        return this.f19191.mo7509(16, bArr2);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f19192;
        int length2 = length - bArr3.length;
        int i = this.f19190;
        int i2 = (length2 - i) - 16;
        if (i2 < 0) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] m9995 = m9995(0, bArr3.length, i, bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] m99952 = m9995(1, 0, bArr2.length, bArr2);
        byte[] m99953 = m9995(2, bArr3.length + i, i2, bArr);
        int length3 = bArr.length - 16;
        byte b = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            b = (byte) (b | (((bArr[length3 + i3] ^ m99952[i3]) ^ m9995[i3]) ^ m99953[i3]));
        }
        if (b != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher = (Cipher) f19188.get();
        cipher.init(1, this.f19189, new IvParameterSpec(m9995));
        return cipher.doFinal(bArr, bArr3.length + i, i2);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f19192;
        int length2 = Integer.MAX_VALUE - bArr3.length;
        int i = this.f19190;
        if (length > (length2 - i) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + i + bArr.length + 16);
        byte[] m9578 = AbstractC4796.m9578(i);
        System.arraycopy(m9578, 0, copyOf, bArr3.length, i);
        byte[] m9995 = m9995(0, 0, m9578.length, m9578);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] m99952 = m9995(1, 0, bArr2.length, bArr2);
        Cipher cipher = (Cipher) f19188.get();
        cipher.init(1, this.f19189, new IvParameterSpec(m9995));
        cipher.doFinal(bArr, 0, bArr.length, copyOf, bArr3.length + i);
        byte[] m99953 = m9995(2, bArr3.length + i, bArr.length, copyOf);
        int length3 = bArr3.length + bArr.length + i;
        for (int i2 = 0; i2 < 16; i2++) {
            copyOf[length3 + i2] = (byte) ((m99952[i2] ^ m9995[i2]) ^ m99953[i2]);
        }
        return copyOf;
    }
}
