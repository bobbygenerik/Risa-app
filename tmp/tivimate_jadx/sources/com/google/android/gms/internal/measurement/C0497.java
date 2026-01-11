package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: com.google.android.gms.internal.measurement.ﹳᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0497 extends AbstractC0465 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0425 f2261;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final HashMap f2262;

    public C0497(C0425 c0425) {
        super("require");
        this.f2262 = new HashMap();
        this.f2261 = c0425;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0465
    /* renamed from: ʽ */
    public final InterfaceC0457 mo1199(ˏˆ.ﹳٴ r3, List list) {
        InterfaceC0457 interfaceC0457;
        ˉᵎ.ⁱˊ.ˑٴ(1, "require", list);
        String mo1558 = ((C0371) r3.ʽʽ).m1698(r3, (InterfaceC0457) list.get(0)).mo1558();
        HashMap hashMap = this.f2262;
        if (hashMap.containsKey(mo1558)) {
            return (InterfaceC0457) hashMap.get(mo1558);
        }
        HashMap hashMap2 = (HashMap) this.f2261.f2169;
        if (hashMap2.containsKey(mo1558)) {
            try {
                interfaceC0457 = (InterfaceC0457) ((Callable) hashMap2.get(mo1558)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(mo1558)));
            }
        } else {
            interfaceC0457 = InterfaceC0457.f2214;
        }
        if (interfaceC0457 instanceof AbstractC0465) {
            hashMap.put(mo1558, (AbstractC0465) interfaceC0457);
        }
        return interfaceC0457;
    }
}
