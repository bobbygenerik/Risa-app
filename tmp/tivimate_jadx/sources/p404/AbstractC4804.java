package p404;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import p071.C1631;

/* renamed from: ﹳʽ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4804 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f18064 = 0;

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1631 m9601(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '!' || charAt > '~') {
                throw new RuntimeException("Not a printable ASCII character: " + charAt);
            }
            bArr[i] = (byte) charAt;
        }
        return C1631.m4412(bArr);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m9602(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr2[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1631 m9603(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '!' || charAt > '~') {
                throw new GeneralSecurityException("Not a printable ASCII character: " + charAt);
            }
            bArr[i] = (byte) charAt;
        }
        return C1631.m4412(bArr);
    }
}
