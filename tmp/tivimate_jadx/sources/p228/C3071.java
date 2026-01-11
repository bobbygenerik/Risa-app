package p228;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import p233.C3191;
import p296.AbstractC3659;
import p296.ServiceConnectionC3669;

/* renamed from: ˑʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3071 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile C3071 f11657;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f11658 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ConcurrentHashMap f11659 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3071 m6618() {
        if (f11657 == null) {
            synchronized (f11658) {
                try {
                    if (f11657 == null) {
                        f11657 = new C3071();
                    }
                } finally {
                }
            }
        }
        C3071 c3071 = f11657;
        AbstractC3659.m7687(c3071);
        return c3071;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m6619(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((C3191.m7014(context).f12211.getPackageManager().getApplicationInfo(packageName, 0).flags & 2097152) != 0) {
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (serviceConnection instanceof ServiceConnectionC3669) {
            if (executor == null) {
                executor = null;
            }
            return (Build.VERSION.SDK_INT < 29 || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
        }
        ConcurrentHashMap concurrentHashMap = this.f11659;
        ServiceConnection serviceConnection2 = (ServiceConnection) concurrentHashMap.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction());
        }
        if (executor == null) {
            executor = null;
        }
        try {
            boolean bindService = (Build.VERSION.SDK_INT < 29 || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
            if (bindService) {
                return bindService;
            }
            return false;
        } finally {
            concurrentHashMap.remove(serviceConnection, serviceConnection);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6620(Context context, ServiceConnection serviceConnection) {
        if (!(serviceConnection instanceof ServiceConnectionC3669)) {
            ConcurrentHashMap concurrentHashMap = this.f11659;
            if (concurrentHashMap.containsKey(serviceConnection)) {
                try {
                    try {
                        context.unbindService((ServiceConnection) concurrentHashMap.get(serviceConnection));
                    } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
                    }
                    return;
                } finally {
                    concurrentHashMap.remove(serviceConnection);
                }
            }
        }
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused2) {
        }
    }
}
