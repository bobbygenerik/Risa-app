package p245;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import p035.AbstractC1220;
import p130.AbstractC2192;
import p229.C3125;
import p256.AbstractC3371;
import p256.AbstractC3372;
import p256.AbstractC3377;
import p256.AbstractC3378;
import p256.AbstractC3380;
import p256.AbstractC3383;
import p256.AbstractC3384;
import p330.C4122;
import p404.C4775;
import p404.C4778;
import p404.C4787;
import p404.C4799;
import p404.C4802;
import p404.C4806;
import p404.C4807;
import p404.C4808;
import p404.C4810;
import p404.C4811;
import p405.AbstractC4818;
import ˏˆ.ﹳٴ;

/* renamed from: יʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3287 {
    static {
        int i = C4122.CONFIG_NAME_FIELD_NUMBER;
        try {
            m7102();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m7102() {
        C4806 c4806 = C4806.f18067;
        c4806.m9604(C3290.f12670);
        c4806.m9605(C3290.f12669);
        AbstractC4818.m9623();
        int i = AbstractC3254.f12522;
        if (!AbstractC1220.m3793(i)) {
            throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        C4775 c4775 = AbstractC3384.f13221;
        C4810 c4810 = C4810.f18077;
        c4810.m9618(AbstractC3384.f13221);
        c4810.m9613(AbstractC3384.f13220);
        c4810.m9612(AbstractC3384.f13218);
        c4810.m9611(AbstractC3384.f13219);
        c4806.m9605(AbstractC3254.f12524);
        C4778 c4778 = C4778.f18020;
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", AbstractC3274.f12617);
        C4799 m7096 = C3275.m7096();
        m7096.m9591(16);
        m7096.m9598(32);
        m7096.m9596(16);
        m7096.m9599(16);
        C3261 c3261 = C3261.f12561;
        m7096.f18051 = c3261;
        C3261 c32612 = C3261.f12553;
        m7096.f18054 = c32612;
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", m7096.m9597());
        hashMap.put("AES256_CTR_HMAC_SHA256", AbstractC3274.f12622);
        C4799 m70962 = C3275.m7096();
        m70962.m9591(32);
        m70962.m9598(32);
        m70962.m9596(32);
        m70962.m9599(16);
        m70962.f18051 = c3261;
        m70962.f18054 = c32612;
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", m70962.m9597());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap));
        C4787 c4787 = C4787.f18029;
        c4787.m9553(AbstractC3254.f12520, C3275.class);
        C4811 c4811 = C4811.f18079;
        c4811.m9620(AbstractC3254.f12521, C3275.class);
        C4808 c4808 = C4808.f18073;
        c4808.m9608(AbstractC3254.f12523, i);
        int i2 = AbstractC3255.f12527;
        if (!AbstractC1220.m3793(i2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        c4810.m9618(AbstractC3378.f13199);
        c4810.m9613(AbstractC3378.f13198);
        c4810.m9612(AbstractC3378.f13196);
        c4810.m9611(AbstractC3378.f13197);
        c4806.m9605(AbstractC3255.f12529);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("AES128_GCM", AbstractC3274.f12621);
        ﹳٴ m7101 = C3284.m7101();
        m7101.ˆﾞ();
        m7101.ˈʿ(16);
        m7101.ˊˋ();
        C3261 c32613 = C3261.f12547;
        m7101.ᴵᵔ = c32613;
        hashMap2.put("AES128_GCM_RAW", m7101.ˉʿ());
        hashMap2.put("AES256_GCM", AbstractC3274.f12620);
        ﹳٴ m71012 = C3284.m7101();
        m71012.ˆﾞ();
        m71012.ˈʿ(32);
        m71012.ˊˋ();
        m71012.ᴵᵔ = c32613;
        hashMap2.put("AES256_GCM_RAW", m71012.ˉʿ());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap2));
        c4787.m9553(AbstractC3255.f12525, C3284.class);
        c4811.m9620(AbstractC3255.f12526, C3284.class);
        c4808.m9608(AbstractC3255.f12528, i2);
        if (AbstractC2192.m5191()) {
            return;
        }
        C4807 c4807 = AbstractC3265.f12588;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3383.f13217);
        c4810.m9613(AbstractC3383.f13216);
        c4810.m9612(AbstractC3383.f13214);
        c4810.m9611(AbstractC3383.f13215);
        c4806.m9605(AbstractC3265.f12588);
        HashMap hashMap3 = new HashMap();
        hashMap3.put("AES128_EAX", AbstractC3274.f12614);
        ﹳٴ m7100 = C3281.m7100();
        m7100.ᵔٴ(16);
        m7100.ˈʿ(16);
        m7100.ˊˋ();
        C3261 c32614 = C3261.f12556;
        m7100.ᴵᵔ = c32614;
        hashMap3.put("AES128_EAX_RAW", m7100.ﾞʻ());
        hashMap3.put("AES256_EAX", AbstractC3274.f12616);
        ﹳٴ m71002 = C3281.m7100();
        m71002.ᵔٴ(16);
        m71002.ˈʿ(32);
        m71002.ˊˋ();
        m71002.ᴵᵔ = c32614;
        hashMap3.put("AES256_EAX_RAW", m71002.ﾞʻ());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap3));
        c4811.m9620(AbstractC3265.f12586, C3281.class);
        c4808.m9607(AbstractC3265.f12587);
        C4807 c48072 = AbstractC3271.f12609;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3380.f13204);
        c4810.m9613(AbstractC3380.f13203);
        c4810.m9612(AbstractC3380.f13201);
        c4810.m9611(AbstractC3380.f13202);
        HashMap hashMap4 = new HashMap();
        C3125 m7092 = C3269.m7092();
        m7092.m6826(16);
        C3261 c32615 = C3261.f12574;
        m7092.f11941 = c32615;
        hashMap4.put("AES128_GCM_SIV", m7092.m6828());
        C3125 m70922 = C3269.m7092();
        m70922.m6826(16);
        C3261 c32616 = C3261.f12562;
        m70922.f11941 = c32616;
        hashMap4.put("AES128_GCM_SIV_RAW", m70922.m6828());
        C3125 m70923 = C3269.m7092();
        m70923.m6826(32);
        m70923.f11941 = c32615;
        hashMap4.put("AES256_GCM_SIV", m70923.m6828());
        C3125 m70924 = C3269.m7092();
        m70924.m6826(32);
        m70924.f11941 = c32616;
        hashMap4.put("AES256_GCM_SIV_RAW", m70924.m6828());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap4));
        c4787.m9553(AbstractC3271.f12606, C3269.class);
        c4811.m9620(AbstractC3271.f12608, C3269.class);
        c4806.m9605(AbstractC3271.f12609);
        c4808.m9607(AbstractC3271.f12607);
        C4807 c48073 = AbstractC3252.f12514;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3371.f13182);
        c4810.m9613(AbstractC3371.f13181);
        c4810.m9612(AbstractC3371.f13179);
        c4810.m9611(AbstractC3371.f13180);
        c4806.m9605(AbstractC3252.f12514);
        c4811.m9620(AbstractC3252.f12513, C3272.class);
        HashMap hashMap5 = new HashMap();
        hashMap5.put("CHACHA20_POLY1305", new C3272(C3261.f12560));
        hashMap5.put("CHACHA20_POLY1305_RAW", new C3272(C3261.f12544));
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap5));
        c4808.m9607(AbstractC3252.f12512);
        C4807 c48074 = AbstractC3260.f12543;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3257.f12533);
        c4810.m9613(AbstractC3257.f12532);
        c4810.m9612(AbstractC3257.f12530);
        c4810.m9611(AbstractC3257.f12531);
        c4806.m9605(AbstractC3260.f12543);
        c4811.m9620(AbstractC3260.f12541, C3276.class);
        c4808.m9607(AbstractC3260.f12542);
        C4802 c4802 = AbstractC3285.f12660;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3268.f12600);
        c4810.m9613(AbstractC3268.f12599);
        c4810.m9612(AbstractC3268.f12597);
        c4810.m9611(AbstractC3268.f12598);
        c4811.m9620(AbstractC3285.f12659, C3277.class);
        c4806.m9605(AbstractC3285.f12658);
        c4808.m9607(AbstractC3285.f12660);
        C4807 c48075 = AbstractC3282.f12653;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC3372.f13186);
        c4810.m9613(AbstractC3372.f13185);
        c4810.m9612(AbstractC3372.f13183);
        c4810.m9611(AbstractC3372.f13184);
        c4806.m9605(AbstractC3282.f12653);
        HashMap hashMap6 = new HashMap();
        hashMap6.put("XCHACHA20_POLY1305", new C3262(C3261.f12570));
        hashMap6.put("XCHACHA20_POLY1305_RAW", new C3262(C3261.f12569));
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap6));
        c4811.m9620(AbstractC3282.f12651, C3262.class);
        c4787.m9553(AbstractC3282.f12650, C3262.class);
        c4808.m9607(AbstractC3282.f12652);
        c4810.m9618(AbstractC3377.f13195);
        c4810.m9613(AbstractC3377.f13194);
        c4810.m9612(AbstractC3377.f13192);
        c4810.m9611(AbstractC3377.f13193);
        HashMap hashMap7 = new HashMap();
        hashMap7.put("XAES_256_GCM_192_BIT_NONCE", AbstractC3274.f12618);
        hashMap7.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", AbstractC3274.f12619);
        hashMap7.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", AbstractC3274.f12613);
        hashMap7.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", AbstractC3274.f12615);
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap7));
        c4806.m9605(AbstractC3279.f12639);
        c4811.m9620(AbstractC3279.f12640, C3273.class);
    }
}
