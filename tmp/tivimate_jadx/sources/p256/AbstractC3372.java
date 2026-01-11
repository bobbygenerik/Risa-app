package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p245.C3261;
import p245.C3262;
import p245.C3278;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3372 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13183;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13184;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13185;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13186;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f13186 = new C4775(C3262.class, new C3375(16));
        f13185 = new C4791(m9601, new C3375(17));
        f13183 = new C4792(C3278.class, new C3375(18));
        f13184 = new C4779(m9601, new C3375(19));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7234(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12570;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12569;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12564;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7235(C3261 c3261) {
        if (C3261.f12570.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12564.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12569.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
