package p025;

import java.security.GeneralSecurityException;
import p071.C1631;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;
import p405.C4815;
import p405.C4817;
import p405.C4827;
import ʻʿ.ᵔﹳ;

/* renamed from: ʼˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1077 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f4230;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f4231;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f4232;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f4233;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f4233 = new C4775(C4817.class, new ᵔﹳ(9));
        f4232 = new C4791(m9601, new ᵔﹳ(10));
        f4230 = new C4792(C4827.class, new ᵔﹳ(11));
        f4231 = new C4779(m9601, new ᵔﹳ(12));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4815 m3422(EnumC4150 enumC4150) {
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            return C4815.f18090;
        }
        if (ordinal == 2) {
            return C4815.f18088;
        }
        if (ordinal == 3) {
            return C4815.f18089;
        }
        if (ordinal == 4) {
            return C4815.f18087;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m3423(C4815 c4815) {
        if (C4815.f18090.equals(c4815)) {
            return EnumC4150.f15575;
        }
        if (C4815.f18087.equals(c4815)) {
            return EnumC4150.f15578;
        }
        if (C4815.f18089.equals(c4815)) {
            return EnumC4150.f15581;
        }
        if (C4815.f18088.equals(c4815)) {
            return EnumC4150.f15576;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c4815);
    }
}
