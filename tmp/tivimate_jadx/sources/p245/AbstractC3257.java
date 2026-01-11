package p245;

import java.security.GeneralSecurityException;
import p071.C1631;
import p230.C3162;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יʻ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3257 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f12530;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f12531;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f12532;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f12533;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        f12533 = new C4775(C3276.class, new C3162(11));
        f12532 = new C4791(m9601, new C3162(12));
        f12530 = new C4792(C3259.class, new C3162(13));
        f12531 = new C4779(m9601, new C3162(14));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7077(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12563;
        }
        if (ordinal == 3) {
            return C3261.f12552;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7078(C3261 c3261) {
        if (C3261.f12563.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12552.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
