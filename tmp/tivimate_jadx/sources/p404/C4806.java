package p404;

import android.support.v4.media.session.AbstractC0001;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import p229.C3125;

/* renamed from: ﹳʽ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4806 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4806 f18067 = new C4806();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicReference f18068 = new AtomicReference(new C4780(new C3125(22)));

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m9604(InterfaceC4786 interfaceC4786) {
        C3125 c3125 = new C3125((C4780) this.f18068.get());
        HashMap hashMap = (HashMap) c3125.f11941;
        Class mo6542 = interfaceC4786.mo6542();
        if (hashMap.containsKey(mo6542)) {
            InterfaceC4786 interfaceC47862 = (InterfaceC4786) hashMap.get(mo6542);
            if (!interfaceC47862.equals(interfaceC4786) || !interfaceC4786.equals(interfaceC47862)) {
                throw new GeneralSecurityException(AbstractC0001.m22(mo6542, "Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type"));
            }
        } else {
            hashMap.put(mo6542, interfaceC4786);
        }
        this.f18068.set(new C4780(c3125));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m9605(C4807 c4807) {
        C3125 c3125 = new C3125((C4780) this.f18068.get());
        c3125.m6833(c4807);
        this.f18068.set(new C4780(c3125));
    }
}
