package p106;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.ProviderException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import p035.AbstractC1220;
import p277.InterfaceC3536;

/* renamed from: ˆـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1937 implements InterfaceC3536 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f7696;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7697 = 1;

    public C1937(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            this.f7696 = new C1937(str, keyStore);
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }

    public C1937(String str, KeyStore keyStore) {
        SecretKey secretKey = (SecretKey) keyStore.getKey(str, null);
        this.f7696 = secretKey;
        if (secretKey == null) {
            throw new InvalidKeyException(AbstractC1220.m3771("Keystore cannot load the key with ID: ", str));
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        int i = this.f7697;
        Object obj = this.f7696;
        switch (i) {
            case 0:
                if (bArr.length < 28) {
                    throw new BadPaddingException("ciphertext too short");
                }
                GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr, 0, 12);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(2, (SecretKey) obj, gCMParameterSpec);
                cipher.updateAAD(bArr2);
                return cipher.doFinal(bArr, 12, bArr.length - 12);
            default:
                C1937 c1937 = (C1937) obj;
                try {
                    return c1937.mo4895(bArr, bArr2);
                } catch (BadPaddingException e) {
                    throw e;
                } catch (GeneralSecurityException e2) {
                    try {
                        Thread.sleep((int) (Math.random() * 100.0d));
                    } catch (InterruptedException unused) {
                    }
                    return c1937.mo4895(bArr, bArr2);
                } catch (ProviderException e3) {
                    Thread.sleep((int) (Math.random() * 100.0d));
                    return c1937.mo4895(bArr, bArr2);
                }
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        int i = this.f7697;
        Object obj = this.f7696;
        switch (i) {
            case 0:
                if (bArr.length > 2147483619) {
                    throw new GeneralSecurityException("plaintext too long");
                }
                byte[] bArr3 = new byte[bArr.length + 28];
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, (SecretKey) obj);
                cipher.updateAAD(bArr2);
                if (cipher.doFinal(bArr, 0, bArr.length, bArr3, 12) != bArr.length + 16) {
                    throw new GeneralSecurityException("encryption failed: bytesWritten is wrong");
                }
                byte[] iv = cipher.getIV();
                if (iv.length != 12) {
                    throw new GeneralSecurityException("IV has unexpected length");
                }
                System.arraycopy(iv, 0, bArr3, 0, 12);
                return bArr3;
            default:
                C1937 c1937 = (C1937) obj;
                try {
                    return c1937.mo4896(bArr, bArr2);
                } catch (GeneralSecurityException | ProviderException e) {
                    try {
                        Thread.sleep((int) (Math.random() * 100.0d));
                    } catch (InterruptedException unused) {
                    }
                    return c1937.mo4896(bArr, bArr2);
                }
        }
    }
}
