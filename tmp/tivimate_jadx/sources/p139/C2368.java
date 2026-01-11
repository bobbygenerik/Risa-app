package p139;

import j$.util.DesugarCollections;
import java.util.HashMap;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p093.C1857;
import p118.C1999;
import p118.InterfaceC1995;

/* renamed from: ˉˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2368 implements InterfaceC1731 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f9149;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2368 f9150 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˉˋ.ⁱˊ] */
    static {
        C1999 c1999 = new C1999(1);
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC1995.class, c1999);
        f9149 = new C1734("storageMetrics", DesugarCollections.unmodifiableMap(new HashMap(hashMap)));
    }

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        ((InterfaceC1732) obj2).mo4680(f9149, ((C1857) obj).f7463);
    }
}
