package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p230.C3162;
import p245.C3261;
import p245.C3281;
import p245.C3289;
import p330.C4109;
import p330.C4121;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3383 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13214;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13215;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13216;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13217;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f13217 = new C4775(C3281.class, new C3162(26));
        f13216 = new C4791(m9601, new C3162(27));
        f13214 = new C4792(C3289.class, new C3162(28));
        f13215 = new C4779(m9601, new C3162(29));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C3261 m7265(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12566;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12556;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12577;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static EnumC4150 m7266(C3261 c3261) {
        if (C3261.f12566.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12577.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12556.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4109 m7267(C3281 c3281) {
        if (c3281.f12646 != 16) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes.", Integer.valueOf(c3281.f12646)));
        }
        C4121 m8351 = C4109.m8351();
        int i = c3281.f12648;
        m8351.m2486();
        C4109.m8353((C4109) m8351.f2977, i);
        return (C4109) m8351.m2485();
    }
}
