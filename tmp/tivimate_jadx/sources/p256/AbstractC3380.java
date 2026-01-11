package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p245.C3261;
import p245.C3269;
import p245.C3288;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3380 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13201;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13202;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13203;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13204;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f13204 = new C4775(C3269.class, new C3375(4));
        f13203 = new C4791(m9601, new C3375(5));
        f13201 = new C4792(C3288.class, new C3375(6));
        f13202 = new C4779(m9601, new C3375(7));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7261(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12574;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12562;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12576;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7262(C3261 c3261) {
        if (C3261.f12574.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12576.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12562.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
