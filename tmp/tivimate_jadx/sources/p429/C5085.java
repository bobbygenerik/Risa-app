package p429;

import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p282.InterfaceC3562;

/* renamed from: ﹶˆ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5085 implements InterfaceC3562 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final SecretKeySpec f19172;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f19173;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f19174;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5094 f19175;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r4.equals("HMACSHA256") == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5085(java.lang.String r4, javax.crypto.spec.SecretKeySpec r5) {
        /*
            r3 = this;
            r3.<init>()
            ﹶˆ.ﾞʻ r0 = new ﹶˆ.ﾞʻ
            r0.<init>(r3)
            r3.f19175 = r0
            r1 = 2
            boolean r2 = p035.AbstractC1220.m3783(r1)
            if (r2 == 0) goto L92
            r3.f19174 = r4
            r3.f19172 = r5
            byte[] r5 = r5.getEncoded()
            int r5 = r5.length
            r2 = 16
            if (r5 < r2) goto L8a
            r4.getClass()
            int r5 = r4.hashCode()
            r2 = -1
            switch(r5) {
                case -1823053428: goto L55;
                case 392315023: goto L4a;
                case 392315118: goto L41;
                case 392316170: goto L36;
                case 392317873: goto L2b;
                default: goto L29;
            }
        L29:
            r1 = r2
            goto L5f
        L2b:
            java.lang.String r5 = "HMACSHA512"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L34
            goto L29
        L34:
            r1 = 4
            goto L5f
        L36:
            java.lang.String r5 = "HMACSHA384"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L3f
            goto L29
        L3f:
            r1 = 3
            goto L5f
        L41:
            java.lang.String r5 = "HMACSHA256"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L5f
            goto L29
        L4a:
            java.lang.String r5 = "HMACSHA224"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L53
            goto L29
        L53:
            r1 = 1
            goto L5f
        L55:
            java.lang.String r5 = "HMACSHA1"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L5e
            goto L29
        L5e:
            r1 = 0
        L5f:
            switch(r1) {
                case 0: goto L82;
                case 1: goto L7d;
                case 2: goto L78;
                case 3: goto L73;
                case 4: goto L6e;
                default: goto L62;
            }
        L62:
            java.security.NoSuchAlgorithmException r5 = new java.security.NoSuchAlgorithmException
            java.lang.String r0 = "unknown Hmac algorithm: "
            java.lang.String r4 = r0.concat(r4)
            r5.<init>(r4)
            throw r5
        L6e:
            r4 = 64
            r3.f19173 = r4
            goto L86
        L73:
            r4 = 48
            r3.f19173 = r4
            goto L86
        L78:
            r4 = 32
            r3.f19173 = r4
            goto L86
        L7d:
            r4 = 28
            r3.f19173 = r4
            goto L86
        L82:
            r4 = 20
            r3.f19173 = r4
        L86:
            r0.get()
            return
        L8a:
            java.security.InvalidAlgorithmParameterException r4 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r5 = "key size too small, need at least 16 bytes"
            r4.<init>(r5)
            throw r4
        L92:
            java.security.GeneralSecurityException r4 = new java.security.GeneralSecurityException
            java.lang.String r5 = "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p429.C5085.<init>(java.lang.String, javax.crypto.spec.SecretKeySpec):void");
    }

    @Override // p282.InterfaceC3562
    /* renamed from: ﹳٴ */
    public final byte[] mo7509(int i, byte[] bArr) {
        if (i > this.f19173) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        C5094 c5094 = this.f19175;
        ((Mac) c5094.get()).update(bArr);
        return Arrays.copyOf(((Mac) c5094.get()).doFinal(), i);
    }
}
