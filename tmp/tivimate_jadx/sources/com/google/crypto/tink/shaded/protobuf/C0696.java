package com.google.crypto.tink.shaded.protobuf;

import j$.util.concurrent.ConcurrentHashMap;
import p010.AbstractC0844;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0696 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0696 f2964 = new C0696();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ConcurrentHashMap f2965 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0729 f2966 = new C0729();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0711 m2472(Class cls) {
        InterfaceC0711 m2664;
        Class cls2;
        AbstractC0702.m2488(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f2965;
        InterfaceC0711 interfaceC0711 = (InterfaceC0711) concurrentHashMap.get(cls);
        if (interfaceC0711 != null) {
            return interfaceC0711;
        }
        C0729 c0729 = this.f2966;
        c0729.getClass();
        Class cls3 = AbstractC0735.f3044;
        if (!AbstractC0725.class.isAssignableFrom(cls) && (cls2 = AbstractC0735.f3044) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        C0748 mo2532 = ((C0716) c0729.f3018).mo2532(cls);
        int i = mo2532.f3069;
        AbstractC0749 abstractC0749 = mo2532.f3071;
        if ((i & 2) == 2) {
            if (AbstractC0725.class.isAssignableFrom(cls)) {
                m2664 = new C0709(AbstractC0735.f3042, AbstractC0745.f3066, abstractC0749);
            } else {
                AbstractC0714 abstractC0714 = AbstractC0735.f3043;
                C0698 c0698 = AbstractC0745.f3065;
                if (c0698 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                m2664 = new C0709(abstractC0714, c0698, abstractC0749);
            }
        } else if (AbstractC0725.class.isAssignableFrom(cls)) {
            C0698 c06982 = null;
            C0722 c0722 = AbstractC0719.f3005;
            C0700 c0700 = AbstractC0710.f2998;
            C0705 c0705 = AbstractC0735.f3042;
            if (AbstractC0844.m3018(mo2532.m2698()) != 1) {
                c06982 = AbstractC0745.f3066;
            }
            C0698 c06983 = c06982;
            C0739 c0739 = AbstractC0728.f3015;
            if (!(mo2532 instanceof C0748)) {
                int[] iArr = C0743.f3048;
                mo2532.getClass();
                throw new ClassCastException();
            }
            m2664 = C0743.m2664(mo2532, c0722, c0700, c0705, c06983, c0739);
        } else {
            C0698 c06984 = null;
            C0722 c07222 = AbstractC0719.f3006;
            C0700 c07002 = AbstractC0710.f2999;
            AbstractC0714 abstractC07142 = AbstractC0735.f3043;
            if (AbstractC0844.m3018(mo2532.m2698()) != 1 && (c06984 = AbstractC0745.f3065) == null) {
                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
            }
            C0698 c06985 = c06984;
            C0739 c07392 = AbstractC0728.f3016;
            if (!(mo2532 instanceof C0748)) {
                int[] iArr2 = C0743.f3048;
                mo2532.getClass();
                throw new ClassCastException();
            }
            m2664 = C0743.m2664(mo2532, c07222, c07002, abstractC07142, c06985, c07392);
        }
        InterfaceC0711 interfaceC07112 = (InterfaceC0711) concurrentHashMap.putIfAbsent(cls, m2664);
        return interfaceC07112 != null ? interfaceC07112 : m2664;
    }
}
