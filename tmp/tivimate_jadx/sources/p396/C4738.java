package p396;

import android.net.ConnectivityManager;
import p126.C2134;
import p126.InterfaceC2136;
import p240.C3231;
import p322.C3966;
import p340.C4233;
import p351.InterfaceC4297;
import ʼˋ.ᵔʾ;

/* renamed from: ⁱᵎ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4738 implements InterfaceC4297 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ConnectivityManager f17888;

    public C4738(ConnectivityManager connectivityManager) {
        this.f17888 = connectivityManager;
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ʽ */
    public final boolean mo8705(C3231 c3231) {
        if (mo8704(c3231)) {
            throw new IllegalStateException("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        }
        return false;
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ⁱˊ */
    public final C4233 mo8706(C3966 c3966) {
        return new C4233(new ᵔʾ(c3966, this, (InterfaceC2136) null, 22), C2134.f8324, -2, 1);
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ﹳٴ */
    public final boolean mo8704(C3231 c3231) {
        return c3231.f12327.m8136() != null;
    }
}
