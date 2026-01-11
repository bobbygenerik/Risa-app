package p139;

import j$.util.DesugarCollections;
import java.util.HashMap;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p093.C1854;
import p118.C1999;
import p118.InterfaceC1995;

/* renamed from: ˉˋ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2358 implements InterfaceC1731 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f9118;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f9119;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2358 f9120 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˉˋ.ʽ] */
    static {
        C1999 c1999 = new C1999(1);
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC1995.class, c1999);
        f9119 = new C1734("eventsDroppedCount", DesugarCollections.unmodifiableMap(new HashMap(hashMap)));
        C1999 c19992 = new C1999(3);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(InterfaceC1995.class, c19992);
        f9118 = new C1734("reason", DesugarCollections.unmodifiableMap(new HashMap(hashMap2)));
    }

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        C1854 c1854 = (C1854) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4678(f9119, c1854.f7457);
        interfaceC1732.mo4680(f9118, c1854.f7456);
    }
}
