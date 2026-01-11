package p404;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import p071.C1631;
import p277.AbstractC3528;
import p366.C4473;
import ᐧᵎ.ᵢי;
import ﹳˋ.ʽʽ;

/* renamed from: ﹳʽ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4810 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4810 f18077;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicReference f18078 = new AtomicReference(new C4800(new ᵢי(3)));

    static {
        try {
            C4810 c4810 = new C4810();
            c4810.m9612(new C4792(C4777.class, new C4473(19)));
            f18077 = c4810;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m9611(C4779 c4779) {
        ᵢי r0 = new ᵢי((C4800) this.f18078.get());
        r0.ٴﹶ(c4779);
        this.f18078.set(new C4800(r0));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m9612(C4792 c4792) {
        ᵢי r0 = new ᵢי((C4800) this.f18078.get());
        r0.ﾞʻ(c4792);
        this.f18078.set(new C4800(r0));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m9613(C4791 c4791) {
        ᵢי r0 = new ᵢי((C4800) this.f18078.get());
        r0.ˉʿ(c4791);
        this.f18078.set(new C4800(r0));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC4789 m9614(ʽʽ r5) {
        C4800 c4800 = (C4800) this.f18078.get();
        c4800.getClass();
        C4795 c4795 = new C4795(r5.getClass(), C4799.class);
        HashMap hashMap = c4800.f18058;
        if (hashMap.containsKey(c4795)) {
            return ((C4792) hashMap.get(c4795)).f18039.mo6963(r5);
        }
        throw new GeneralSecurityException("No Key serializer for " + c4795 + " available");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC4789 m9615(AbstractC3528 abstractC3528) {
        C4800 c4800 = (C4800) this.f18078.get();
        c4800.getClass();
        C4795 c4795 = new C4795(abstractC3528.getClass(), C4790.class);
        HashMap hashMap = c4800.f18055;
        if (hashMap.containsKey(c4795)) {
            return ((C4775) hashMap.get(c4795)).f18014.mo6962(abstractC3528);
        }
        throw new GeneralSecurityException("No Key Format serializer for " + c4795 + " available");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC3528 m9616(C4790 c4790) {
        C4800 c4800 = (C4800) this.f18078.get();
        c4800.getClass();
        C4801 c4801 = new C4801(C4790.class, (C1631) c4790.f18036);
        HashMap hashMap = c4800.f18056;
        if (hashMap.containsKey(c4801)) {
            return ((C4791) hashMap.get(c4801)).f18037.mo6960(c4790);
        }
        throw new GeneralSecurityException("No Parameters Parser for requested key type " + c4801 + " available");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽʽ m9617(C4799 c4799) {
        C4800 c4800 = (C4800) this.f18078.get();
        c4800.getClass();
        C4801 c4801 = new C4801(C4799.class, (C1631) c4799.f18053);
        HashMap hashMap = c4800.f18057;
        if (hashMap.containsKey(c4801)) {
            return ((C4779) hashMap.get(c4801)).f18022.mo6961(c4799);
        }
        throw new GeneralSecurityException("No Key Parser for requested key type " + c4801 + " available");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final synchronized void m9618(C4775 c4775) {
        ᵢי r0 = new ᵢי((C4800) this.f18078.get());
        r0.ᵔʾ(c4775);
        this.f18078.set(new C4800(r0));
    }
}
