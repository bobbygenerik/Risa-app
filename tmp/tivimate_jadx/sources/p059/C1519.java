package p059;

import android.content.Context;
import android.net.ConnectivityManager;
import p113.AbstractC1980;
import p322.C3965;
import ᐧᵎ.ᵢי;

/* renamed from: ʾʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1519 extends AbstractC1524 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ʼˎ f5994;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ConnectivityManager f5995;

    public C1519(Context context, ᵢי r2) {
        super(context, r2);
        this.f5995 = (ConnectivityManager) this.f6004.getSystemService("connectivity");
        this.f5994 = new ʼˎ(0, this);
    }

    @Override // p059.AbstractC1524
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo4326() {
        try {
            C3965.m8127().m8133(AbstractC1523.f6000, "Registering network callback");
            AbstractC1980.m4965(this.f5995, this.f5994);
        } catch (IllegalArgumentException e) {
            C3965.m8127().m8130(AbstractC1523.f6000, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            C3965.m8127().m8130(AbstractC1523.f6000, "Received exception while registering network callback", e2);
        }
    }

    @Override // p059.AbstractC1524
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo4327() {
        try {
            C3965.m8127().m8133(AbstractC1523.f6000, "Unregistering network callback");
            this.f5995.unregisterNetworkCallback((ConnectivityManager.NetworkCallback) this.f5994);
        } catch (IllegalArgumentException e) {
            C3965.m8127().m8130(AbstractC1523.f6000, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            C3965.m8127().m8130(AbstractC1523.f6000, "Received exception while unregistering network callback", e2);
        }
    }

    @Override // p059.AbstractC1524
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo4328() {
        return AbstractC1523.m4331(this.f5995);
    }
}
