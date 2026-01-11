package androidx.lifecycle;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;

/* renamed from: androidx.lifecycle.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0194 extends AbstractC0198 {
    final /* synthetic */ C0200 this$0;

    /* renamed from: androidx.lifecycle.ᵎˊ$ﹳٴ, reason: contains not printable characters */
    /* loaded from: classes.dex */
    public static final class C0195 extends AbstractC0198 {
        final /* synthetic */ C0200 this$0;

        public C0195(C0200 c0200) {
            this.this$0 = c0200;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            this.this$0.m734();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            C0200 c0200 = this.this$0;
            int i = c0200.f1108 + 1;
            c0200.f1108 = i;
            if (i == 1 && c0200.f1109) {
                c0200.f1111.m710(EnumC0174.ON_START);
                c0200.f1109 = false;
            }
        }
    }

    public C0194(C0200 c0200) {
        this.this$0 = c0200;
    }

    @Override // androidx.lifecycle.AbstractC0198, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 29) {
            int i = FragmentC0170.f1058;
            ((FragmentC0170) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag")).f1059 = this.this$0.f1110;
        }
    }

    @Override // androidx.lifecycle.AbstractC0198, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C0200 c0200 = this.this$0;
        int i = c0200.f1113 - 1;
        c0200.f1113 = i;
        if (i == 0) {
            c0200.f1114.postDelayed(c0200.f1112, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        AbstractC0186.m717(activity, new C0195(this.this$0));
    }

    @Override // androidx.lifecycle.AbstractC0198, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C0200 c0200 = this.this$0;
        int i = c0200.f1108 - 1;
        c0200.f1108 = i;
        if (i == 0 && c0200.f1107) {
            c0200.f1111.m710(EnumC0174.ON_STOP);
            c0200.f1109 = true;
        }
    }
}
