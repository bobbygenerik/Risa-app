package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.List;
import p166.C2602;
import p166.InterfaceC2601;
import p430.C5097;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements InterfaceC2601 {
    @Override // p166.InterfaceC2601
    /* renamed from: ⁱˊ */
    public final Object mo412(Context context) {
        if (!C2602.m5847(context).f9844.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        if (!AbstractC0208.f1121.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0203());
        }
        C0200 c0200 = C0200.f1106;
        c0200.getClass();
        c0200.f1114 = new Handler();
        c0200.f1111.m710(EnumC0174.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0194(c0200));
        return c0200;
    }

    @Override // p166.InterfaceC2601
    /* renamed from: ﹳٴ */
    public final List mo413() {
        return C5097.f19202;
    }
}
