package p279;

import android.content.IntentFilter;
import android.util.Log;
import p087.AbstractC1746;
import ʻـ.ⁱˊ;

/* renamed from: ٴʽ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3553 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13900;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3556 f13901;

    public /* synthetic */ RunnableC3553(C3556 c3556, int i) {
        this.f13900 = i;
        this.f13901 = c3556;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13900) {
            case 0:
                C3556 c3556 = this.f13901;
                c3556.f13904 = c3556.m7499();
                try {
                    C3556 c35562 = this.f13901;
                    c35562.f13907.registerReceiver(c35562.f13908, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f13901.f13905 = true;
                    return;
                } catch (SecurityException e) {
                    if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    }
                    this.f13901.f13905 = false;
                    return;
                }
            case 1:
                if (this.f13901.f13905) {
                    this.f13901.f13905 = false;
                    C3556 c35563 = this.f13901;
                    c35563.f13907.unregisterReceiver(c35563.f13908);
                    return;
                }
                return;
            default:
                boolean z = this.f13901.f13904;
                C3556 c35564 = this.f13901;
                c35564.f13904 = c35564.m7499();
                if (z != this.f13901.f13904) {
                    if (Log.isLoggable("ConnectivityMonitor", 3)) {
                        String str = "connectivity changed, isConnected: " + this.f13901.f13904;
                    }
                    C3556 c35565 = this.f13901;
                    AbstractC1746.m4705().post(new ⁱˊ(2, c35565, c35565.f13904));
                    return;
                }
                return;
        }
    }
}
