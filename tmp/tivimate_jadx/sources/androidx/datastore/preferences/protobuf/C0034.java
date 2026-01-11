package androidx.datastore.preferences.protobuf;

import j$.util.concurrent.ConcurrentHashMap;
import p010.AbstractC0844;

/* renamed from: androidx.datastore.preferences.protobuf.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0034 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0034 f426 = new C0034();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ConcurrentHashMap f427 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0010 f428 = new C0010();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0006 m254(Class cls) {
        InterfaceC0006 m327;
        Class cls2;
        AbstractC0013.m218(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f427;
        InterfaceC0006 interfaceC0006 = (InterfaceC0006) concurrentHashMap.get(cls);
        if (interfaceC0006 != null) {
            return interfaceC0006;
        }
        C0010 c0010 = this.f428;
        c0010.getClass();
        Class cls3 = AbstractC0038.f434;
        if (!AbstractC0003.class.isAssignableFrom(cls) && (cls2 = AbstractC0038.f434) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        C0028 mo256 = ((C0047) c0010.f385).mo256(cls);
        int i = mo256.f417;
        AbstractC0063 abstractC0063 = mo256.f419;
        if ((i & 2) == 2) {
            if (AbstractC0003.class.isAssignableFrom(cls)) {
                m327 = new C0056(AbstractC0038.f432, AbstractC0008.f381, abstractC0063);
            } else {
                AbstractC0014 abstractC0014 = AbstractC0038.f433;
                C0024 c0024 = AbstractC0008.f380;
                if (c0024 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                m327 = new C0056(abstractC0014, c0024, abstractC0063);
            }
        } else if (AbstractC0003.class.isAssignableFrom(cls)) {
            C0024 c00242 = null;
            C0017 c0017 = AbstractC0057.f489;
            C0060 c0060 = AbstractC0012.f386;
            C0052 c0052 = AbstractC0038.f432;
            if (AbstractC0844.m3018(mo256.m237()) != 1) {
                c00242 = AbstractC0008.f381;
            }
            C0024 c00243 = c00242;
            C0041 c0041 = AbstractC0026.f412;
            if (!(mo256 instanceof C0028)) {
                int[] iArr = C0051.f466;
                mo256.getClass();
                throw new ClassCastException();
            }
            m327 = C0051.m327(mo256, c0017, c0060, c0052, c00243, c0041);
        } else {
            C0024 c00244 = null;
            C0017 c00172 = AbstractC0057.f490;
            C0060 c00602 = AbstractC0012.f387;
            AbstractC0014 abstractC00142 = AbstractC0038.f433;
            if (AbstractC0844.m3018(mo256.m237()) != 1 && (c00244 = AbstractC0008.f380) == null) {
                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
            }
            C0024 c00245 = c00244;
            C0041 c00412 = AbstractC0026.f413;
            if (!(mo256 instanceof C0028)) {
                int[] iArr2 = C0051.f466;
                mo256.getClass();
                throw new ClassCastException();
            }
            m327 = C0051.m327(mo256, c00172, c00602, abstractC00142, c00245, c00412);
        }
        InterfaceC0006 interfaceC00062 = (InterfaceC0006) concurrentHashMap.putIfAbsent(cls, m327);
        return interfaceC00062 != null ? interfaceC00062 : m327;
    }
}
