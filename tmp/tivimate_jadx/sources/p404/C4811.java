package p404;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import p218.C3021;
import p277.AbstractC3528;
import ﹳˋ.ʽʽ;

/* renamed from: ﹳʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4811 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4811 f18079;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f18080 = new HashMap();

    static {
        C3021 c3021 = new C3021(10);
        C4811 c4811 = new C4811();
        try {
            c4811.m9620(c3021, C4784.class);
            f18079 = c4811;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ʽʽ m9619(AbstractC3528 abstractC3528, Integer num) {
        ʽʽ m6549;
        synchronized (this) {
            C3021 c3021 = (C3021) this.f18080.get(abstractC3528.getClass());
            if (c3021 == null) {
                throw new GeneralSecurityException("Cannot create a new key for parameters " + abstractC3528 + ": no key creator for this class was registered.");
            }
            m6549 = c3021.m6549(abstractC3528, num);
        }
        return m6549;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m9620(C3021 c3021, Class cls) {
        try {
            C3021 c30212 = (C3021) this.f18080.get(cls);
            if (c30212 != null && !c30212.equals(c3021)) {
                throw new GeneralSecurityException("Different key creator for parameters class " + cls + " already inserted");
            }
            this.f18080.put(cls, c3021);
        } catch (Throwable th) {
            throw th;
        }
    }
}
