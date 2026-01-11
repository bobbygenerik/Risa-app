package p256;

import java.security.GeneralSecurityException;
import p071.C1631;
import p245.C3261;
import p245.C3266;
import p245.C3284;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יٴ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3378 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13196;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13197;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13198;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13199;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f13199 = new C4775(C3284.class, new C3375(0));
        f13198 = new C4791(m9601, new C3375(1));
        f13196 = new C4792(C3266.class, new C3375(2));
        f13197 = new C4779(m9601, new C3375(3));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7258(C3284 c3284) {
        int i = c3284.f12654;
        int i2 = c3284.f12656;
        if (i != 16) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports serialization of AES GCM keys with tag size equal to 16 bytes.", Integer.valueOf(c3284.f12654)));
        }
        if (i2 != 12) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d. Currently Tink only supports serialization of AES GCM keys with IV size equal to 12 bytes.", Integer.valueOf(i2)));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3261 m7259(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C3261.f12572;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3261.f12547;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
            }
        }
        return C3261.f12557;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7260(C3261 c3261) {
        if (C3261.f12572.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12557.equals(c3261)) {
            return EnumC4150.f15578;
        }
        if (C3261.f12547.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }
}
