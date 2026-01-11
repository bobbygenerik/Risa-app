package p405;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import p025.AbstractC1074;
import p025.AbstractC1077;
import p035.AbstractC1220;
import p130.AbstractC2192;
import p218.C3021;
import p262.C3433;
import p330.C4122;
import p404.C4778;
import p404.C4787;
import p404.C4806;
import p404.C4808;
import p404.C4810;
import p404.C4811;
import ˑי.ʽ;
import ᐧᵎ.ᵢי;

/* renamed from: ﹳʾ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4818 {
    static {
        int i = C4122.CONFIG_NAME_FIELD_NUMBER;
        try {
            m9623();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9623() {
        C4806 c4806 = C4806.f18067;
        c4806.m9604(C4822.f18106);
        c4806.m9605(C4822.f18107);
        c4806.m9604(C4822.f18108);
        int i = AbstractC4813.f18086;
        if (!AbstractC1220.m3793(i)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        C3433 c3433 = AbstractC1074.f4228;
        C4810 c4810 = C4810.f18077;
        c4810.m9618(AbstractC1074.f4224);
        c4810.m9613(AbstractC1074.f4225);
        c4810.m9612(AbstractC1074.f4226);
        c4810.m9611(AbstractC1074.f4229);
        c4806.m9605(AbstractC4813.f18085);
        c4806.m9605(AbstractC4813.f18084);
        C4778 c4778 = C4778.f18020;
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", AbstractC4828.f18124);
        ᵢי m9627 = C4829.m9627();
        m9627.ʾˋ = 32;
        m9627.ᴵˊ = 16;
        C4821 c4821 = C4821.f18103;
        m9627.ˈٴ = c4821;
        C4816 c4816 = C4816.f18093;
        m9627.ʽʽ = c4816;
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", m9627.ᵎﹶ());
        ᵢי m96272 = C4829.m9627();
        m96272.ʾˋ = 32;
        m96272.ᴵˊ = 32;
        C4821 c48212 = C4821.f18104;
        m96272.ˈٴ = c48212;
        m96272.ʽʽ = c4816;
        hashMap.put("HMAC_SHA256_256BITTAG", m96272.ᵎﹶ());
        ᵢי m96273 = C4829.m9627();
        m96273.ʾˋ = 32;
        m96273.ᴵˊ = 32;
        m96273.ˈٴ = c4821;
        m96273.ʽʽ = c4816;
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", m96273.ᵎﹶ());
        ᵢי m96274 = C4829.m9627();
        m96274.ʾˋ = 64;
        m96274.ᴵˊ = 16;
        m96274.ˈٴ = c48212;
        C4816 c48162 = C4816.f18096;
        m96274.ʽʽ = c48162;
        hashMap.put("HMAC_SHA512_128BITTAG", m96274.ᵎﹶ());
        ᵢי m96275 = C4829.m9627();
        m96275.ʾˋ = 64;
        m96275.ᴵˊ = 16;
        m96275.ˈٴ = c4821;
        m96275.ʽʽ = c48162;
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", m96275.ᵎﹶ());
        ᵢי m96276 = C4829.m9627();
        m96276.ʾˋ = 64;
        m96276.ᴵˊ = 32;
        m96276.ˈٴ = c48212;
        m96276.ʽʽ = c48162;
        hashMap.put("HMAC_SHA512_256BITTAG", m96276.ᵎﹶ());
        ᵢי m96277 = C4829.m9627();
        m96277.ʾˋ = 64;
        m96277.ᴵˊ = 32;
        m96277.ˈٴ = c4821;
        m96277.ʽʽ = c48162;
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", m96277.ᵎﹶ());
        hashMap.put("HMAC_SHA512_512BITTAG", AbstractC4828.f18123);
        ᵢי m96278 = C4829.m9627();
        m96278.ʾˋ = 64;
        m96278.ᴵˊ = 64;
        m96278.ˈٴ = c4821;
        m96278.ʽʽ = c48162;
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", m96278.ᵎﹶ());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap));
        C4811 c4811 = C4811.f18079;
        c4811.m9620(AbstractC4813.f18083, C4829.class);
        C4787.f18029.m9553(AbstractC4813.f18082, C4829.class);
        C4808 c4808 = C4808.f18073;
        c4808.m9608(AbstractC4813.f18081, i);
        if (AbstractC2192.m5191()) {
            return;
        }
        C3021 c3021 = AbstractC4826.f18117;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        c4810.m9618(AbstractC1077.f4233);
        c4810.m9613(AbstractC1077.f4232);
        c4810.m9612(AbstractC1077.f4230);
        c4810.m9611(AbstractC1077.f4231);
        c4811.m9620(AbstractC4826.f18117, C4817.class);
        c4806.m9605(AbstractC4826.f18116);
        c4806.m9605(AbstractC4826.f18114);
        HashMap hashMap2 = new HashMap();
        C4817 c4817 = AbstractC4828.f18122;
        hashMap2.put("AES_CMAC", c4817);
        hashMap2.put("AES256_CMAC", c4817);
        ʽ m9621 = C4817.m9621();
        m9621.ᴵᵔ(32);
        m9621.ˊʻ(16);
        m9621.ʽʽ = C4815.f18089;
        hashMap2.put("AES256_CMAC_RAW", m9621.יـ());
        c4778.m9550(DesugarCollections.unmodifiableMap(hashMap2));
        c4808.m9607(AbstractC4826.f18115);
    }
}
