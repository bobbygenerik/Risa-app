package p062;

import android.os.Build;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;

/* renamed from: ʾˈ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1547 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1547 f6079 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f6078 = C1734.m4681("appId");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f6074 = C1734.m4681("deviceModel");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f6075 = C1734.m4681("sessionSdkVersion");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1734 f6076 = C1734.m4681("osVersion");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1734 f6080 = C1734.m4681("logEnvironment");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1734 f6077 = C1734.m4681("androidAppInfo");

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        C1587 c1587 = (C1587) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4680(f6078, c1587.f6195);
        interfaceC1732.mo4680(f6074, Build.MODEL);
        interfaceC1732.mo4680(f6075, "3.0.0");
        interfaceC1732.mo4680(f6076, Build.VERSION.RELEASE);
        interfaceC1732.mo4680(f6080, EnumC1542.f6061);
        interfaceC1732.mo4680(f6077, c1587.f6194);
    }
}
