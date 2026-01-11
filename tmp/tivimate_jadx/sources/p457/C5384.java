package p457;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import p218.C3017;
import p218.C3018;

/* renamed from: ﾞˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5384 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f20505;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f20506;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m10782(int i) {
        if (i != 32 && i != 48 && i != 64) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 32-byte, 48-byte and 64-byte AES-SIV keys are supported", Integer.valueOf(i)));
        }
        this.f20506 = Integer.valueOf(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C3018 m10783() {
        Integer num = (Integer) this.f20506;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (((C3017) this.f20505) != null) {
            return new C3018(num.intValue(), (C3017) this.f20505);
        }
        throw new GeneralSecurityException("Variant is not set");
    }
}
