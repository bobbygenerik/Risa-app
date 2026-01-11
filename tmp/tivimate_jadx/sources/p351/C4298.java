package p351;

import android.os.Build;
import p240.C3231;
import p322.C3965;
import p396.C4739;

/* renamed from: ᵎﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4298 extends AbstractC4299 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f15926 = C3965.m8128("NetworkMeteredCtrlr");

    @Override // p351.AbstractC4299
    /* renamed from: ˈ */
    public final int mo8702() {
        return 7;
    }

    @Override // p351.AbstractC4299
    /* renamed from: ˑﹳ */
    public final boolean mo8703(Object obj) {
        C4739 c4739 = (C4739) obj;
        boolean z = c4739.f17892;
        if (Build.VERSION.SDK_INT >= 26) {
            return (z && c4739.f17889) ? false : true;
        }
        C3965.m8127().m8133(f15926, "Metered network constraint is not supported before API 26, only checking for connected state.");
        return !z;
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ﹳٴ */
    public final boolean mo8704(C3231 c3231) {
        return c3231.f12327.f15296 == 5;
    }
}
