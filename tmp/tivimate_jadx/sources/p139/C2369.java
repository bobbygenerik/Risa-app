package p139;

import j$.util.DesugarCollections;
import java.util.HashMap;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p093.C1858;
import p118.C1999;
import p118.InterfaceC1995;

/* renamed from: ˉˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2369 implements InterfaceC1731 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f9151;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f9152;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1734 f9153;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f9154;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2369 f9155 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˉˋ.ﹳٴ] */
    static {
        C1999 c1999 = new C1999(1);
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC1995.class, c1999);
        f9154 = new C1734("window", DesugarCollections.unmodifiableMap(new HashMap(hashMap)));
        C1999 c19992 = new C1999(2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(InterfaceC1995.class, c19992);
        f9151 = new C1734("logSourceMetrics", DesugarCollections.unmodifiableMap(new HashMap(hashMap2)));
        C1999 c19993 = new C1999(3);
        HashMap hashMap3 = new HashMap();
        hashMap3.put(InterfaceC1995.class, c19993);
        f9152 = new C1734("globalMetrics", DesugarCollections.unmodifiableMap(new HashMap(hashMap3)));
        C1999 c19994 = new C1999(4);
        HashMap hashMap4 = new HashMap();
        hashMap4.put(InterfaceC1995.class, c19994);
        f9153 = new C1734("appNamespace", DesugarCollections.unmodifiableMap(new HashMap(hashMap4)));
    }

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        C1858 c1858 = (C1858) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4680(f9154, c1858.f7468);
        interfaceC1732.mo4680(f9151, c1858.f7467);
        interfaceC1732.mo4680(f9152, c1858.f7465);
        interfaceC1732.mo4680(f9153, c1858.f7466);
    }
}
