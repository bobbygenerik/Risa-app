package p062;

import android.os.Build;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;

/* renamed from: ʾˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1538 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1538 f6050 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1734 f6049 = C1734.m4681("packageName");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1734 f6045 = C1734.m4681("versionName");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1734 f6046 = C1734.m4681("appBuildVersion");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1734 f6047 = C1734.m4681("deviceManufacturer");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1734 f6051 = C1734.m4681("currentProcessDetails");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1734 f6048 = C1734.m4681("appProcessDetails");

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo4342(Object obj, Object obj2) {
        C1589 c1589 = (C1589) obj;
        InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
        interfaceC1732.mo4680(f6049, c1589.f6202);
        interfaceC1732.mo4680(f6045, c1589.f6201);
        interfaceC1732.mo4680(f6046, c1589.f6198);
        interfaceC1732.mo4680(f6047, Build.MANUFACTURER);
        interfaceC1732.mo4680(f6051, c1589.f6199);
        interfaceC1732.mo4680(f6048, c1589.f6200);
    }
}
