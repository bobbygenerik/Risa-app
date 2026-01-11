package p122;

import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;

/* renamed from: ˈˋ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2078 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2078 f8145 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f8144 = C1734.m4681("batteryLevel");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f8140 = C1734.m4681("batteryVelocity");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f8141 = C1734.m4681("proximityOn");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1734 f8142 = C1734.m4681("orientation");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1734 f8146 = C1734.m4681("ramUsed");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1734 f8143 = C1734.m4681("diskUsed");

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        C2094 c2094 = (C2094) ((AbstractC2100) obj);
        interfaceC1732.mo4680(f8144, c2094.f8188);
        interfaceC1732.mo4679(f8140, c2094.f8187);
        interfaceC1732.mo4677(f8141, c2094.f8184);
        interfaceC1732.mo4679(f8142, c2094.f8185);
        interfaceC1732.mo4678(f8146, c2094.f8186);
        interfaceC1732.mo4678(f8143, c2094.f8189);
    }
}
