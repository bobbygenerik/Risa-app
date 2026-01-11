package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;

/* renamed from: androidx.lifecycle.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class FragmentC0170 extends Fragment {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f1058 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ﹳי.ʽ f1059;

    /* renamed from: androidx.lifecycle.ˈʿ$ﹳٴ, reason: contains not printable characters */
    /* loaded from: classes.dex */
    public static final class C0171 implements Application.ActivityLifecycleCallbacks {
        public static final C0201 Companion = new Object();

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            C0201.m735(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            int i = FragmentC0170.f1058;
            AbstractC0168.m696(activity, EnumC0174.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m699(EnumC0174.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        m699(EnumC0174.ON_DESTROY);
        this.f1059 = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        m699(EnumC0174.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        ﹳי.ʽ r0 = this.f1059;
        if (r0 != null) {
            ((C0200) r0.ʾˋ).m734();
        }
        m699(EnumC0174.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        ﹳי.ʽ r0 = this.f1059;
        if (r0 != null) {
            C0200 c0200 = (C0200) r0.ʾˋ;
            int i = c0200.f1108 + 1;
            c0200.f1108 = i;
            if (i == 1 && c0200.f1109) {
                c0200.f1111.m710(EnumC0174.ON_START);
                c0200.f1109 = false;
            }
        }
        m699(EnumC0174.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        m699(EnumC0174.ON_STOP);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m699(EnumC0174 enumC0174) {
        if (Build.VERSION.SDK_INT < 29) {
            AbstractC0168.m696(getActivity(), enumC0174);
        }
    }
}
