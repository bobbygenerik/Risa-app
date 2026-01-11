package p409;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: ﹳˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ComponentCallbacks2C4842 implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final ComponentCallbacks2C4842 f18161 = new ComponentCallbacks2C4842();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AtomicBoolean f18163 = new AtomicBoolean();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AtomicBoolean f18165 = new AtomicBoolean();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ArrayList f18162 = new ArrayList();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f18164 = false;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m9649(Application application) {
        ComponentCallbacks2C4842 componentCallbacks2C4842 = f18161;
        synchronized (componentCallbacks2C4842) {
            try {
                if (!componentCallbacks2C4842.f18164) {
                    application.registerActivityLifecycleCallbacks(componentCallbacks2C4842);
                    application.registerComponentCallbacks(componentCallbacks2C4842);
                    componentCallbacks2C4842.f18164 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f18163.compareAndSet(true, false);
        this.f18165.set(true);
        if (compareAndSet) {
            m9650(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f18163.compareAndSet(true, false);
        this.f18165.set(true);
        if (compareAndSet) {
            m9650(false);
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

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20 && this.f18163.compareAndSet(false, true)) {
            this.f18165.set(true);
            m9650(true);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9650(boolean z) {
        synchronized (f18161) {
            try {
                ArrayList arrayList = this.f18162;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((InterfaceC4854) obj).mo5505(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9651(InterfaceC4854 interfaceC4854) {
        synchronized (f18161) {
            this.f18162.add(interfaceC4854);
        }
    }
}
