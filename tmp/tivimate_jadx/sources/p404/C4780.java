package p404;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import p229.C3125;
import ﹳˋ.ʽʽ;

/* renamed from: ﹳʽ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4780 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f18024;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f18025;

    public C4780(C3125 c3125) {
        this.f18025 = new HashMap((HashMap) c3125.f11943);
        this.f18024 = new HashMap((HashMap) c3125.f11941);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m9552(ʽʽ r3, Class cls) {
        C4798 c4798 = new C4798(r3.getClass(), cls);
        HashMap hashMap = this.f18025;
        if (hashMap.containsKey(c4798)) {
            return ((C4807) hashMap.get(c4798)).f18069.mo5682(r3);
        }
        throw new GeneralSecurityException("No PrimitiveConstructor for " + c4798 + " available, see https://developers.google.com/tink/faq/registration_errors");
    }
}
