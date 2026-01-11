package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* renamed from: com.google.android.gms.internal.measurement.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0500 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f2263;

    public C0500(C0248 c0248) {
        this.f2263 = c0248;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f2263.m1198(new C0451(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f2263.m1198(new C0506(this, activity, 4));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f2263.m1198(new C0506(this, activity, 2));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f2263.m1198(new C0506(this, activity, 1));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        BinderC0452 binderC0452 = new BinderC0452();
        this.f2263.m1198(new C0451(this, activity, binderC0452));
        Bundle m1884 = binderC0452.m1884(50L);
        if (m1884 != null) {
            bundle.putAll(m1884);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f2263.m1198(new C0506(this, activity, 0));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f2263.m1198(new C0506(this, activity, 3));
    }
}
