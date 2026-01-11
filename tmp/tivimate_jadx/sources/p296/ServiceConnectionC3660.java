package p296;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: ٴﾞ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC3660 implements ServiceConnection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f14325;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3675 f14326;

    public ServiceConnectionC3660(AbstractC3675 abstractC3675, int i) {
        this.f14326 = abstractC3675;
        this.f14325 = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AbstractC3675 abstractC3675 = this.f14326;
        if (iBinder == null) {
            AbstractC3675.m7700(abstractC3675);
            return;
        }
        synchronized (abstractC3675.f14388) {
            try {
                AbstractC3675 abstractC36752 = this.f14326;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                abstractC36752.f14373 = (queryLocalInterface == null || !(queryLocalInterface instanceof C3689)) ? new C3689(iBinder) : (C3689) queryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        AbstractC3675 abstractC36753 = this.f14326;
        int i = this.f14325;
        C3666 c3666 = new C3666(abstractC36753, 0, null);
        HandlerC3677 handlerC3677 = abstractC36753.f14394;
        handlerC3677.sendMessage(handlerC3677.obtainMessage(7, i, -1, c3666));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        AbstractC3675 abstractC3675;
        synchronized (this.f14326.f14388) {
            abstractC3675 = this.f14326;
            abstractC3675.f14373 = null;
        }
        int i = this.f14325;
        HandlerC3677 handlerC3677 = abstractC3675.f14394;
        handlerC3677.sendMessage(handlerC3677.obtainMessage(6, i, 1));
    }
}
