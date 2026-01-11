package p122;

import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;

/* renamed from: ˈˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2123 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2123 f8304 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f8303 = C1734.m4681("baseAddress");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f8300 = C1734.m4681("size");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f8301 = C1734.m4681("name");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1734 f8302 = C1734.m4681("uuid");

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        C2040 c2040 = (C2040) ((AbstractC2070) obj);
        interfaceC1732.mo4678(f8303, c2040.f7968);
        interfaceC1732.mo4678(f8300, c2040.f7967);
        interfaceC1732.mo4680(f8301, c2040.f7965);
        String str = c2040.f7966;
        interfaceC1732.mo4680(f8302, str != null ? str.getBytes(AbstractC2121.f8298) : null);
    }
}
