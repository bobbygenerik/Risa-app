package p139;

import j$.util.DesugarCollections;
import java.util.HashMap;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p093.C1859;
import p118.C1999;
import p118.InterfaceC1995;

/* renamed from: ˉˋ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2371 implements InterfaceC1731 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f9158;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f9159;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2371 f9160 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˋ.ﾞᴵ, java.lang.Object] */
    static {
        C1999 c1999 = new C1999(1);
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC1995.class, c1999);
        f9159 = new C1734("currentCacheSizeBytes", DesugarCollections.unmodifiableMap(new HashMap(hashMap)));
        C1999 c19992 = new C1999(2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(InterfaceC1995.class, c19992);
        f9158 = new C1734("maxCacheSizeBytes", DesugarCollections.unmodifiableMap(new HashMap(hashMap2)));
    }

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        C1859 c1859 = (C1859) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4678(f9159, c1859.f7470);
        interfaceC1732.mo4678(f9158, c1859.f7469);
    }
}
