package p245;

import com.bumptech.glide.ʽ;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import java.security.GeneralSecurityException;
import p071.C1631;
import p230.C3162;
import p277.AbstractC3528;
import p330.C4119;
import p330.C4127;
import p330.C4163;
import p330.C4171;
import p330.EnumC4150;
import p404.AbstractC4804;
import p404.C4775;
import p404.C4779;
import p404.C4791;
import p404.C4792;

/* renamed from: יʻ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3268 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4792 f12597;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4779 f12598;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4791 f12599;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4775 f12600;

    static {
        C1631 m9601 = AbstractC4804.m9601("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        f12600 = new C4775(C3277.class, new C3162(15));
        f12599 = new C4791(m9601, new C3162(16));
        f12597 = new C4792(C3264.class, new C3162(17));
        f12598 = new C4779(m9601, new C3162(18));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static EnumC4150 m7089(C3261 c3261) {
        if (C3261.f12568.equals(c3261)) {
            return EnumC4150.f15575;
        }
        if (C3261.f12559.equals(c3261)) {
            return EnumC4150.f15581;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + c3261);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4163 m7090(C3277 c3277) {
        try {
            C4171 m8515 = C4171.m8515(ʽ.ʾᵎ(c3277.f12632), C0713.m2526());
            C4119 m8490 = C4163.m8490();
            String str = c3277.f12633;
            m8490.m2486();
            C4163.m8491((C4163) m8490.f2977, str);
            m8490.m2486();
            C4163.m8487((C4163) m8490.f2977, m8515);
            return (C4163) m8490.m2485();
        } catch (InvalidProtocolBufferException e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3277 m7091(C4163 c4163, EnumC4150 enumC4150) {
        C3261 c3261;
        C3261 c32612 = C3261.f12559;
        Object obj = C3261.f12555;
        C3261 c32613 = C3261.f12549;
        C3261 c32614 = C3261.f12567;
        C3261 c32615 = C3261.f12575;
        C3261 c32616 = C3261.f12551;
        C3261 c32617 = C3261.f12545;
        C4127 m8513 = C4171.m8513();
        m8513.m8398(c4163.m8492().m8519());
        m8513.m8399(c4163.m8492().m8518());
        m8513.m8397(EnumC4150.f15581);
        AbstractC3528 abstractC3528 = ʽ.יـ(((C4171) m8513.m2485()).m2700());
        if (abstractC3528 instanceof C3284) {
            c3261 = c32617;
        } else if (abstractC3528 instanceof C3272) {
            c3261 = c32616;
        } else if (abstractC3528 instanceof C3262) {
            c3261 = c32615;
        } else if (abstractC3528 instanceof C3275) {
            c3261 = c32614;
        } else if (abstractC3528 instanceof C3281) {
            c3261 = c32613;
        } else {
            if (!(abstractC3528 instanceof C3269)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing " + abstractC3528);
            }
            c3261 = obj;
        }
        int ordinal = enumC4150.ordinal();
        if (ordinal == 1) {
            c32612 = C3261.f12568;
        } else if (ordinal != 3) {
            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + enumC4150.m8458());
        }
        String m8493 = c4163.m8493();
        AbstractC3256 abstractC3256 = (AbstractC3256) abstractC3528;
        if (m8493 == null) {
            throw new GeneralSecurityException("kekUri must be set");
        }
        if (abstractC3256 == null) {
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        if (abstractC3256.mo6546()) {
            throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
        }
        if ((c3261.equals(c32617) && (abstractC3256 instanceof C3284)) || ((c3261.equals(c32616) && (abstractC3256 instanceof C3272)) || ((c3261.equals(c32615) && (abstractC3256 instanceof C3262)) || ((c3261.equals(c32614) && (abstractC3256 instanceof C3275)) || ((c3261.equals(c32613) && (abstractC3256 instanceof C3281)) || (c3261.equals(obj) && (abstractC3256 instanceof C3269))))))) {
            return new C3277(c32612, m8493, c3261, abstractC3256);
        }
        throw new GeneralSecurityException("Cannot use parsing strategy " + c3261.f12579 + " when new keys are picked according to " + abstractC3256 + ".");
    }
}
