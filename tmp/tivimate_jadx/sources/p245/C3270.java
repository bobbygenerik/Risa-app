package p245;

import com.google.android.gms.internal.play_billing.י;
import com.parse.ˑ;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import java.util.Iterator;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p035.AbstractC1220;
import p071.C1631;
import p256.AbstractC3373;
import p256.AbstractC3374;
import p256.C3382;
import p256.C3385;
import p277.InterfaceC3536;
import p404.AbstractC4796;
import p404.AbstractC4804;
import p404.C4776;
import p429.AbstractC5086;

/* renamed from: יʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3270 implements InterfaceC3536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f12603;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f12604;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12605;

    public C3270(int i, byte[] bArr, byte[] bArr2) {
        this.f12605 = i;
        switch (i) {
            case 4:
                this.f12604 = new C3385(0, bArr);
                this.f12603 = bArr2;
                return;
            case 5:
                this.f12604 = new C3385(1, bArr);
                this.f12603 = bArr2;
                return;
            default:
                if (!AbstractC1220.m3779(1)) {
                    throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
                }
                if (((Cipher) C3382.f13211.get()) == null) {
                    throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
                }
                if (bArr.length != 32) {
                    throw new InvalidKeyException("The key length in bytes must be 32.");
                }
                this.f12604 = bArr;
                this.f12603 = bArr2;
                return;
        }
    }

    public C3270(C3263 c3263, C4776 c4776) {
        this.f12605 = 0;
        this.f12604 = c3263;
        this.f12603 = c4776;
    }

    public C3270(InterfaceC3536 interfaceC3536, byte[] bArr) {
        this.f12605 = 1;
        this.f12604 = interfaceC3536;
        if (bArr.length != 0 && bArr.length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.f12603 = bArr;
    }

    public C3270(byte[] bArr, C1631 c1631) {
        this.f12605 = 3;
        if (!AbstractC1220.m3783(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        ˑ r0 = AbstractC3373.f13187;
        AbstractC5086.m9990(bArr.length);
        this.f12604 = new SecretKeySpec(bArr, "AES");
        this.f12603 = c1631.m4413();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public byte[] m7093(byte[] bArr, byte[] bArr2) {
        if (bArr.length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] copyOf = Arrays.copyOf(bArr, 12);
        return ((C3385) this.f12604).m7250(ByteBuffer.wrap(bArr, 12, bArr.length - 12), copyOf, bArr2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte[] m7094(byte[] bArr, byte[] bArr2) {
        if (bArr.length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] copyOf = Arrays.copyOf(bArr, 24);
        return ((C3385) this.f12604).m7250(ByteBuffer.wrap(bArr, 24, bArr.length - 24), copyOf, bArr2);
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        switch (this.f12605) {
            case 0:
                Iterator it = ((C4776) this.f12603).m9547(bArr).iterator();
                while (it.hasNext()) {
                    try {
                        return ((C3263) it.next()).f12582.mo4895(bArr, bArr2);
                    } catch (GeneralSecurityException unused) {
                    }
                }
                throw new GeneralSecurityException("decryption failed");
            case 1:
                InterfaceC3536 interfaceC3536 = (InterfaceC3536) this.f12604;
                byte[] bArr3 = (byte[]) this.f12603;
                if (bArr3.length == 0) {
                    return interfaceC3536.mo4895(bArr, bArr2);
                }
                if (AbstractC4804.m9602(bArr3, bArr)) {
                    return interfaceC3536.mo4895(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
                }
                throw new GeneralSecurityException("wrong prefix");
            case 2:
                byte[] bArr4 = (byte[]) this.f12603;
                if (bArr == null) {
                    throw new NullPointerException("ciphertext is null");
                }
                if (bArr.length < bArr4.length + 40) {
                    throw new GeneralSecurityException("ciphertext too short");
                }
                if (!AbstractC4804.m9602(bArr4, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                byte[] bArr5 = new byte[24];
                System.arraycopy(bArr, bArr4.length, bArr5, 0, 24);
                SecretKeySpec secretKeySpec = new SecretKeySpec(AbstractC3374.m7241((byte[]) this.f12604, bArr5), "ChaCha20");
                byte[] bArr6 = new byte[12];
                System.arraycopy(bArr5, 16, bArr6, 4, 8);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr6);
                Cipher cipher = (Cipher) C3382.f13211.get();
                cipher.init(2, secretKeySpec, ivParameterSpec);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher.updateAAD(bArr2);
                }
                return cipher.doFinal(bArr, bArr4.length + 24, (bArr.length - bArr4.length) - 24);
            case 3:
                byte[] bArr7 = (byte[]) this.f12603;
                if (bArr == null) {
                    throw new NullPointerException("ciphertext is null");
                }
                if (bArr.length < bArr7.length + 28) {
                    throw new GeneralSecurityException("ciphertext too short");
                }
                if (!AbstractC4804.m9602(bArr7, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                AlgorithmParameterSpec m7236 = AbstractC3373.m7236(bArr, bArr7.length, 12);
                Cipher cipher2 = (Cipher) AbstractC3373.f13187.get();
                cipher2.init(2, (SecretKeySpec) this.f12604, m7236);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher2.updateAAD(bArr2);
                }
                return cipher2.doFinal(bArr, bArr7.length + 12, (bArr.length - bArr7.length) - 12);
            case 4:
                byte[] bArr8 = (byte[]) this.f12603;
                if (bArr8.length == 0) {
                    return m7093(bArr, bArr2);
                }
                if (AbstractC4804.m9602(bArr8, bArr)) {
                    return m7093(Arrays.copyOfRange(bArr, bArr8.length, bArr.length), bArr2);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            default:
                byte[] bArr9 = (byte[]) this.f12603;
                if (bArr9.length == 0) {
                    return m7094(bArr, bArr2);
                }
                if (AbstractC4804.m9602(bArr9, bArr)) {
                    return m7094(Arrays.copyOfRange(bArr, bArr9.length, bArr.length), bArr2);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        int i = this.f12605;
        Object obj = this.f12603;
        Object obj2 = this.f12604;
        switch (i) {
            case 0:
                byte[] mo4896 = ((C3263) obj2).f12582.mo4896(bArr, bArr2);
                int length = bArr.length;
                return mo4896;
            case 1:
                InterfaceC3536 interfaceC3536 = (InterfaceC3536) obj2;
                byte[] bArr3 = (byte[]) obj;
                return bArr3.length == 0 ? interfaceC3536.mo4896(bArr, bArr2) : י.ﾞʻ(new byte[][]{bArr3, interfaceC3536.mo4896(bArr, bArr2)});
            case 2:
                byte[] bArr4 = (byte[]) obj;
                if (bArr == null) {
                    throw new NullPointerException("plaintext is null");
                }
                byte[] m9578 = AbstractC4796.m9578(24);
                SecretKeySpec secretKeySpec = new SecretKeySpec(AbstractC3374.m7241((byte[]) obj2, m9578), "ChaCha20");
                byte[] bArr5 = new byte[12];
                System.arraycopy(m9578, 16, bArr5, 4, 8);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr5);
                Cipher cipher = (Cipher) C3382.f13211.get();
                cipher.init(1, secretKeySpec, ivParameterSpec);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher.updateAAD(bArr2);
                }
                int outputSize = cipher.getOutputSize(bArr.length);
                if (outputSize > 2147483623 - bArr4.length) {
                    throw new GeneralSecurityException("plaintext too long");
                }
                byte[] copyOf = Arrays.copyOf(bArr4, bArr4.length + 24 + outputSize);
                System.arraycopy(m9578, 0, copyOf, bArr4.length, 24);
                if (cipher.doFinal(bArr, 0, bArr.length, copyOf, 24 + bArr4.length) == outputSize) {
                    return copyOf;
                }
                throw new GeneralSecurityException("not enough data written");
            case 3:
                byte[] bArr6 = (byte[]) obj;
                if (bArr == null) {
                    throw new NullPointerException("plaintext is null");
                }
                byte[] m95782 = AbstractC4796.m9578(12);
                AlgorithmParameterSpec m7236 = AbstractC3373.m7236(m95782, 0, m95782.length);
                Cipher cipher2 = (Cipher) AbstractC3373.f13187.get();
                cipher2.init(1, (SecretKeySpec) obj2, m7236);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher2.updateAAD(bArr2);
                }
                int outputSize2 = cipher2.getOutputSize(bArr.length);
                if (outputSize2 > 2147483635 - bArr6.length) {
                    throw new GeneralSecurityException("plaintext too long");
                }
                byte[] copyOf2 = Arrays.copyOf(bArr6, bArr6.length + 12 + outputSize2);
                System.arraycopy(m95782, 0, copyOf2, bArr6.length, 12);
                if (cipher2.doFinal(bArr, 0, bArr.length, copyOf2, bArr6.length + 12) == outputSize2) {
                    return copyOf2;
                }
                throw new GeneralSecurityException("not enough data written");
            case 4:
                ByteBuffer allocate = ByteBuffer.allocate(bArr.length + 28);
                byte[] m95783 = AbstractC4796.m9578(12);
                allocate.put(m95783);
                ((C3385) obj2).m7255(allocate, m95783, bArr, bArr2);
                byte[] array = allocate.array();
                byte[] bArr7 = (byte[]) obj;
                return bArr7.length == 0 ? array : י.ﾞʻ(new byte[][]{bArr7, array});
            default:
                ByteBuffer allocate2 = ByteBuffer.allocate(bArr.length + 40);
                byte[] m95784 = AbstractC4796.m9578(24);
                allocate2.put(m95784);
                ((C3385) obj2).m7255(allocate2, m95784, bArr, bArr2);
                byte[] array2 = allocate2.array();
                byte[] bArr8 = (byte[]) obj;
                return bArr8.length == 0 ? array2 : י.ﾞʻ(new byte[][]{bArr8, array2});
        }
    }
}
