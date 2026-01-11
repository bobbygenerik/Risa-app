package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

/* renamed from: com.google.android.gms.internal.measurement.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0281 implements Comparator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0465 f1793;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ˏˆ.ﹳٴ f1794;

    public C0281(AbstractC0465 abstractC0465, ˏˆ.ﹳٴ r2) {
        this.f1793 = abstractC0465;
        this.f1794 = r2;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        InterfaceC0457 interfaceC0457 = (InterfaceC0457) obj;
        InterfaceC0457 interfaceC04572 = (InterfaceC0457) obj2;
        if (interfaceC0457 instanceof C0494) {
            return !(interfaceC04572 instanceof C0494) ? 1 : 0;
        }
        if (interfaceC04572 instanceof C0494) {
            return -1;
        }
        AbstractC0465 abstractC0465 = this.f1793;
        return abstractC0465 == null ? interfaceC0457.mo1558().compareTo(interfaceC04572.mo1558()) : (int) ˉᵎ.ⁱˊ.ᴵˑ(abstractC0465.mo1199(this.f1794, Arrays.asList(interfaceC0457, interfaceC04572)).mo1562().doubleValue());
    }
}
