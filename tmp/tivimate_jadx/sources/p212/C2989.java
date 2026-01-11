package p212;

import android.os.StrictMode;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p074.InterfaceC1650;
import p221.ScheduledExecutorServiceC3044;
import p221.ThreadFactoryC3047;

/* renamed from: ˏ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C2989 implements InterfaceC1650 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f11406;

    public /* synthetic */ C2989(int i) {
        this.f11406 = i;
    }

    @Override // p074.InterfaceC1650
    public final Object get() {
        switch (this.f11406) {
            case 0:
                return Collections.EMPTY_SET;
            case 1:
                return null;
            case 2:
                return ExecutorsRegistrar.m2724();
            case 3:
                C2990 c2990 = ExecutorsRegistrar.f3090;
                return new ScheduledExecutorServiceC3044(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new ThreadFactoryC3047("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.f3088.get());
            case 4:
                C2990 c29902 = ExecutorsRegistrar.f3090;
                return new ScheduledExecutorServiceC3044(Executors.newCachedThreadPool(new ThreadFactoryC3047("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.f3088.get());
            default:
                C2990 c29903 = ExecutorsRegistrar.f3090;
                return Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC3047("Firebase Scheduler", 0, null));
        }
    }
}
