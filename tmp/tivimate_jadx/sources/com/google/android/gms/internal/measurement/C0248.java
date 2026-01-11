package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p296.AbstractC3659;
import p447.AbstractC5218;

/* renamed from: com.google.android.gms.internal.measurement.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0248 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static volatile C0248 f1732;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f1733;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f1734;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f1735;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˊⁱ.ˑﹳ f1736;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ExecutorService f1737;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public volatile InterfaceC0460 f1738;

    public C0248(Context context, Bundle bundle) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0346(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f1737 = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f1736 = new ˊⁱ.ˑﹳ(23, this);
        this.f1733 = new ArrayList();
        int i = 0;
        try {
            if (AbstractC5218.m10211(context, AbstractC5218.m10212(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, C0248.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f1735 = true;
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        m1198(new C0451(this, context, bundle, i));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new C0500(this));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C0248 m1196(Context context, Bundle bundle) {
        AbstractC3659.m7687(context);
        if (f1732 == null) {
            synchronized (C0248.class) {
                try {
                    if (f1732 == null) {
                        f1732 = new C0248(context, bundle);
                    }
                } finally {
                }
            }
        }
        return f1732;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1197(Exception exc, boolean z, boolean z2) {
        this.f1735 |= z;
        if (z) {
            return;
        }
        if (z2) {
            m1198(new C0336(this, exc));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m1198(AbstractRunnableC0411 abstractRunnableC0411) {
        this.f1737.execute(abstractRunnableC0411);
    }
}
