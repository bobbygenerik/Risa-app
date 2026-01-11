package p062;

import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;

/* renamed from: ʾˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1563 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1563 f6116 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f6115 = C1734.m4681("performance");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f6113 = C1734.m4681("crashlytics");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f6114 = C1734.m4681("sessionSamplingRate");

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        C1570 c1570 = (C1570) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4680(f6115, c1570.f6136);
        interfaceC1732.mo4680(f6113, c1570.f6135);
        interfaceC1732.mo4676(f6114, c1570.f6134);
    }
}
