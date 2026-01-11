package p151;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import p121.RunnableC2028;

/* renamed from: ˊʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2435 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f9389;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f9390;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Activity f9393;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f9391 = false;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f9394 = false;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f9392 = false;

    public C2435(Activity activity) {
        this.f9393 = activity;
        this.f9389 = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f9393 == activity) {
            this.f9393 = null;
            this.f9394 = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f9394 || this.f9392 || this.f9391) {
            return;
        }
        Object obj = this.f9390;
        try {
            Object obj2 = AbstractC2425.f9372.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f9389) {
                AbstractC2425.f9375.postAtFrontOfQueue(new RunnableC2028(AbstractC2425.f9376.get(activity), 28, obj2));
                this.f9392 = true;
                this.f9390 = null;
            }
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f9393 == activity) {
            this.f9391 = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
