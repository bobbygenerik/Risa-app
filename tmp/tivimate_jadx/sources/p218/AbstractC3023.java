package p218;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import p035.AbstractC1220;
import p130.AbstractC2192;
import p273.AbstractC3485;
import p330.C4122;
import p404.C4775;
import p404.C4778;
import p404.C4787;
import p404.C4806;
import p404.C4807;
import p404.C4808;
import p404.C4810;
import p404.C4811;
import p457.C5384;

/* renamed from: ˏˑ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3023 {
    static {
        int i = C4122.CONFIG_NAME_FIELD_NUMBER;
        try {
            m6551();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6551() {
        C4806 c4806 = C4806.f18067;
        c4806.m9604(C3014.f11516);
        c4806.m9605(C3014.f11515);
        if (AbstractC2192.m5191()) {
            return;
        }
        C4807 c4807 = AbstractC3015.f11520;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering AES SIV is not supported in FIPS mode");
        }
        C4775 c4775 = AbstractC3485.f13680;
        C4810 c4810 = C4810.f18077;
        c4810.m9618(AbstractC3485.f13680);
        c4810.m9613(AbstractC3485.f13679);
        c4810.m9612(AbstractC3485.f13676);
        c4810.m9611(AbstractC3485.f13677);
        c4806.m9605(AbstractC3015.f11520);
        C4778 c4778 = C4778.f18020;
        HashMap hashMap = new HashMap();
        hashMap.put("AES256_SIV", AbstractC3016.f11521);
        C5384 m6545 = C3018.m6545();
        m6545.m10782(64);
        m6545.f20505 = C3017.f11523;
        hashMap.put("AES256_SIV_RAW", m6545.m10783());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap));
        C4787.f18029.m9553(AbstractC3015.f11517, C3018.class);
        C4811.f18079.m9620(AbstractC3015.f11518, C3018.class);
        C4808.f18073.m9607(AbstractC3015.f11519);
    }
}
