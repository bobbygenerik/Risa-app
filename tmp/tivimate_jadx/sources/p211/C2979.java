package p211;

import android.content.SharedPreferences;
import android.util.Base64;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* renamed from: ˎﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2979 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String[] f11378 = {"*", "FCM", "GCM", ""};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11379;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SharedPreferences f11380;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        if (r1.isEmpty() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2979(p145.C2405 r4) {
        /*
            r3 = this;
            r3.<init>()
            r4.m5512()
            android.content.Context r0 = r4.f9296
            java.lang.String r1 = "com.google.android.gms.appid"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r3.f11380 = r0
            r4.m5512()
            ˉᵎ.ʼˎ r0 = r4.f9289
            java.lang.String r1 = r0.f9276
            if (r1 == 0) goto L1b
            goto L48
        L1b:
            r4.m5512()
            java.lang.String r1 = r0.f9278
            java.lang.String r4 = "1:"
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L31
            java.lang.String r4 = "2:"
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L31
            goto L48
        L31:
            java.lang.String r4 = ":"
            java.lang.String[] r4 = r1.split(r4)
            int r0 = r4.length
            r1 = 4
            r2 = 0
            if (r0 == r1) goto L3e
        L3c:
            r1 = r2
            goto L48
        L3e:
            r0 = 1
            r1 = r4[r0]
            boolean r4 = r1.isEmpty()
            if (r4 == 0) goto L48
            goto L3c
        L48:
            r3.f11379 = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p211.C2979.<init>(ˉᵎ.ᵎﹶ):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m6505() {
        PublicKey publicKey;
        synchronized (this.f11380) {
            String str = null;
            String string = this.f11380.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                String str2 = "Invalid key stored " + e;
                publicKey = null;
            }
            if (publicKey == null) {
                return null;
            }
            try {
                byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
                digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
                str = Base64.encodeToString(digest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
            }
            return str;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m6506() {
        String string;
        synchronized (this.f11380) {
            string = this.f11380.getString("|S|id", null);
        }
        return string;
    }
}
