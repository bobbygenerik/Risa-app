package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p230.C3162;
import p245.C3261;
import p245.C3275;
import p245.C3280;
import p330.C4154;
import p330.C4182;
import p330.EnumC4131;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3384 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13218;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13219;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13220;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13221;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        f13221 = new C4775(C3275.class, new C3162(22));
        f13220 = new C4791(m9601, new C3162(23));
        f13218 = new C4792(C3280.class, new C3162(24));
        f13219 = new C4779(m9601, new C3162(25));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static EnumC4150 m7268(C3261 c3261) {
        if (C3261.f12573.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12546.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12553.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C3261 m7269(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12573;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12553;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12546;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7270(EnumC4131 enumC4131) {
        int ordinal = enumC4131.ordinal();
        if (ordinal == 1) {
            return C3261.f12548;
        }
        if (ordinal == 2) {
            return C3261.f12578;
        }
        if (ordinal == 3) {
            return C3261.f12561;
        }
        if (ordinal == 4) {
            return C3261.f12571;
        }
        if (ordinal == 5) {
            return C3261.f12554;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + enumC4131.m8412());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4182 m7271(C3275 c3275) {
        EnumC4131 enumC4131;
        C4154 m8556 = C4182.m8556();
        int i = c3275.f12624;
        m8556.m2486();
        C4182.m8554((C4182) m8556.f2977, i);
        C3261 c3261 = c3275.f12628;
        if (C3261.f12548.equals(c3261)) {
            enumC4131 = EnumC4131.f15566;
        } else if (C3261.f12554.equals(c3261)) {
            enumC4131 = EnumC4131.f15570;
        } else if (C3261.f12561.equals(c3261)) {
            enumC4131 = EnumC4131.f15572;
        } else if (C3261.f12578.equals(c3261)) {
            enumC4131 = EnumC4131.f15567;
        } else {
            if (!C3261.f12571.equals(c3261)) {
                throw new GeneralSecurityException("Unable to serialize HashType " + c3261);
            }
            enumC4131 = EnumC4131.f15569;
        }
        m8556.m2486();
        C4182.m8557((C4182) m8556.f2977, enumC4131);
        return (C4182) m8556.m2485();
    }
}
