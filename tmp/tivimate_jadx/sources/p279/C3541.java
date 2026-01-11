package p279;

import android.net.ConnectivityManager;
import android.util.Log;
import p319.C3934;
import ʾʽ.ʼˎ;

/* renamed from: ٴʽ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3541 implements InterfaceC3546 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3934 f13884;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ʼˎ f13885 = new ʼˎ(1, this);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3551 f13886;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f13887;

    public C3541(C3934 c3934, C3551 c3551) {
        this.f13884 = c3934;
        this.f13886 = c3551;
    }

    @Override // p279.InterfaceC3546
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo7494() {
        C3934 c3934 = this.f13884;
        this.f13887 = ((ConnectivityManager) c3934.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) c3934.get()).registerDefaultNetworkCallback(this.f13885);
            return true;
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
            }
            return false;
        }
    }

    @Override // p279.InterfaceC3546
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7495() {
        ((ConnectivityManager) this.f13884.get()).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) this.f13885);
    }
}
