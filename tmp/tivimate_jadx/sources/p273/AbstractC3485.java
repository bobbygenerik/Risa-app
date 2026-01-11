package p273;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import p071.C1631;
import p218.C3017;
import p218.C3018;
import p218.C3022;
import p256.C3375;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: ـᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3485 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f13676;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f13677;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Map f13678;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f13679;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f13680;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Map f13681;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.AesSivKey");
        f13680 = new C4775(C3018.class, new C3375(23));
        f13679 = new C4791(m9601, new C3375(24));
        f13676 = new C4792(C3022.class, new C3375(25));
        f13677 = new C4779(m9601, new C3375(26));
        HashMap hashMap = new HashMap();
        C3017 c3017 = C3017.f11523;
        EnumC4150 enumC4150 = EnumC4150.f15581;
        hashMap.put(c3017, enumC4150);
        C3017 c30172 = C3017.f11524;
        EnumC4150 enumC41502 = EnumC4150.f15575;
        hashMap.put(c30172, enumC41502);
        C3017 c30173 = C3017.f11522;
        EnumC4150 enumC41503 = EnumC4150.f15578;
        hashMap.put(c30173, enumC41503);
        f13678 = DesugarCollections.unmodifiableMap(hashMap);
        EnumMap enumMap = new EnumMap(EnumC4150.class);
        enumMap.put((EnumMap) enumC4150, (EnumC4150) c3017);
        enumMap.put((EnumMap) enumC41502, (EnumC4150) c30172);
        enumMap.put((EnumMap) enumC41503, (EnumC4150) c30173);
        enumMap.put((EnumMap) EnumC4150.f15576, (EnumC4150) c30173);
        f13681 = DesugarCollections.unmodifiableMap(enumMap);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3017 m7412(EnumC4150 enumC4150) {
        Map map = f13681;
        if (map.containsKey(enumC4150)) {
            return (C3017) map.get(enumC4150);
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m7413(C3017 c3017) {
        Map map = f13678;
        if (map.containsKey(c3017)) {
            return (EnumC4150) map.get(c3017);
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3017);
    }
}
