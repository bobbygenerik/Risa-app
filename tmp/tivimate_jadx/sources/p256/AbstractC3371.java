package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p245.C3258;
import p245.C3261;
import p245.C3272;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3371 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13179;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13180;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13181;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13182;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        f13182 = new C4775(C3272.class, new C3375(8));
        f13181 = new C4791(m9601, new C3375(9));
        f13179 = new C4792(C3258.class, new C3375(10));
        f13180 = new C4779(m9601, new C3375(11));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7232(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12560;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12544;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12550;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7233(C3261 c3261) {
        if (C3261.f12560.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12550.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12544.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
