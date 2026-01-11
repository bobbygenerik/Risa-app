package com.google.android.gms.internal.measurement;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* renamed from: com.google.android.gms.internal.measurement.ᵔᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0464 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0464 f2220 = new C0464();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ConcurrentHashMap f2221 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0425 f2222 = new C0425(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0363 m1889(Class cls) {
        InterfaceC0363 m1520;
        Charset charset = AbstractC0405.f2135;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f2221;
        InterfaceC0363 interfaceC0363 = (InterfaceC0363) concurrentHashMap.get(cls);
        if (interfaceC0363 != null) {
            return interfaceC0363;
        }
        C0425 c0425 = this.f2222;
        c0425.getClass();
        C0298 c0298 = AbstractC0383.f2041;
        AbstractC0269.class.isAssignableFrom(cls);
        C0423 mo1311 = ((C0425) c0425.f2169).mo1311(cls);
        if ((mo1311.f2163 & 2) == 2) {
            C0298 c02982 = AbstractC0383.f2041;
            C0298 c02983 = AbstractC0463.f2219;
            m1520 = new C0435(c02982, mo1311.f2165);
        } else {
            int i = AbstractC0508.f2281;
            int i2 = AbstractC0440.f2185;
            C0298 c02984 = AbstractC0383.f2041;
            C0298 c02985 = mo1311.m1849() + (-1) != 1 ? AbstractC0463.f2219 : null;
            int i3 = AbstractC0284.f1872;
            m1520 = C0314.m1520(mo1311, c02984, c02985);
        }
        InterfaceC0363 interfaceC03632 = (InterfaceC0363) concurrentHashMap.putIfAbsent(cls, m1520);
        return interfaceC03632 != null ? interfaceC03632 : m1520;
    }
}
