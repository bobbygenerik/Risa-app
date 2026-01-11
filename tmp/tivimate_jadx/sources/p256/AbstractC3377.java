package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p245.C3261;
import p245.C3267;
import p245.C3273;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3377 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13192;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13193;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13194;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13195;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        f13195 = new C4775(C3273.class, new C3375(12));
        f13194 = new C4791(m9601, new C3375(13));
        f13192 = new C4792(C3267.class, new C3375(14));
        f13193 = new C4779(m9601, new C3375(15));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7256(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12565;
        }
        if (ordinal == 3) {
            return C3261.f12558;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7257(C3261 c3261) {
        if (c3261.equals(C3261.f12565)) {
            return EnumC4150.f15575;
        }
        if (c3261.equals(C3261.f12558)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
