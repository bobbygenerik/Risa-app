package p062;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import p126.InterfaceC2136;
import p324.AbstractC3999;
import ʼˋ.ﾞᴵ;

/* renamed from: ʾˈ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1554 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1573 f6095;

    public C1554(C1573 c1573) {
        this.f6095 = c1573;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f6095.m4364();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C1573 c1573 = this.f6095;
        c1573.f6143 = true;
        C1579 c1579 = c1573.f6149;
        if (c1579 == null) {
            return;
        }
        String str = "App foregrounded on " + c1573.f6152.m4344();
        if (c1573.m4363(c1579) || c1573.m4362(c1579)) {
            AbstractC3999.m8168(AbstractC3999.m8179(c1573.f6148), null, new ﾞᴵ(c1573, c1579, (InterfaceC2136) null, 10), 3);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
