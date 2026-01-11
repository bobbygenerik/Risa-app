package p106;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Arrays;
import p121.AbstractC2026;
import p404.AbstractC4796;
import p429.AbstractC5086;

/* renamed from: ˆـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1936 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f7695 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4893(String str) {
        synchronized (f7695) {
            try {
                String m9989 = AbstractC5086.m9989(str);
                try {
                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                    keyStore.load(null);
                    if (keyStore.containsAlias(m9989)) {
                        return false;
                    }
                    AbstractC2026.m5051(m9989);
                    return true;
                } catch (IOException e) {
                    throw new GeneralSecurityException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1937 m4894(String str) {
        C1937 c1937;
        try {
            synchronized (f7695) {
                try {
                    c1937 = new C1937(AbstractC5086.m9989(str));
                    byte[] m9578 = AbstractC4796.m9578(10);
                    byte[] bArr = new byte[0];
                    if (!Arrays.equals(m9578, c1937.mo4895(c1937.mo4896(m9578, bArr), bArr))) {
                        throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c1937;
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }
}
