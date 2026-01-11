package com.google.android.gms.internal.play_billing;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* renamed from: com.google.android.gms.internal.play_billing.ⁱᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0637 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0637 f2473 = new C0637();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ConcurrentHashMap f2474 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0618 f2475 = new C0618();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0571 m2245(Class cls) {
        InterfaceC0571 m2270;
        Charset charset = AbstractC0634.f2471;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f2474;
        InterfaceC0571 interfaceC0571 = (InterfaceC0571) concurrentHashMap.get(cls);
        if (interfaceC0571 != null) {
            return interfaceC0571;
        }
        C0618 c0618 = this.f2475;
        c0618.getClass();
        C0539 c0539 = AbstractC0531.f2299;
        AbstractC0529.class.isAssignableFrom(cls);
        C0535 mo2088 = ((C0618) c0618.f2447).mo2088(cls);
        if ((mo2088.f2304 & 2) == 2) {
            C0539 c05392 = AbstractC0531.f2299;
            C0539 c05393 = AbstractC0599.f2408;
            m2270 = new C0600(c05392, mo2088.f2306);
        } else {
            int i = AbstractC0604.f2411;
            int i2 = AbstractC0524.f2291;
            C0539 c05394 = AbstractC0531.f2299;
            C0539 c05395 = mo2088.m2079() + (-1) != 1 ? AbstractC0599.f2408 : null;
            int i3 = AbstractC0642.f2488;
            m2270 = C0644.m2270(mo2088, c05394, c05395);
        }
        InterfaceC0571 interfaceC05712 = (InterfaceC0571) concurrentHashMap.putIfAbsent(cls, m2270);
        return interfaceC05712 != null ? interfaceC05712 : m2270;
    }
}
