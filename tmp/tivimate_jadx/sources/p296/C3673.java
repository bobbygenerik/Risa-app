package p296;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.internal.measurement.HandlerC0337;
import java.util.HashMap;
import java.util.concurrent.Executor;
import p228.C3071;
import p319.C3936;

/* renamed from: ٴﾞ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3673 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static HandlerThread f14361;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Object f14362 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C3673 f14363;

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile HandlerC0337 f14364;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3071 f14365;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f14366;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f14367;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f14368 = new HashMap();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f14369;

    /* JADX WARN: Type inference failed for: r3v2, types: [android.os.Handler, com.google.android.gms.internal.measurement.ˉٴ] */
    public C3673(Context context, Looper looper) {
        C3681 c3681 = new C3681(0, this);
        this.f14367 = context.getApplicationContext();
        ?? handler = new Handler(looper, c3681);
        Looper.getMainLooper();
        this.f14364 = handler;
        this.f14365 = C3071.m6618();
        this.f14366 = 5000L;
        this.f14369 = 300000L;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static HandlerThread m7696() {
        synchronized (f14362) {
            try {
                HandlerThread handlerThread = f14361;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f14361 = handlerThread2;
                handlerThread2.start();
                return f14361;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3673 m7697(Context context) {
        synchronized (f14362) {
            try {
                if (f14363 == null) {
                    f14363 = new C3673(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f14363;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3936 m7698(C3664 c3664, ServiceConnectionC3660 serviceConnectionC3660, String str, Executor executor) {
        synchronized (this.f14368) {
            try {
                ServiceConnectionC3669 serviceConnectionC3669 = (ServiceConnectionC3669) this.f14368.get(c3664);
                C3936 c3936 = null;
                if (executor == null) {
                    executor = null;
                }
                if (serviceConnectionC3669 == null) {
                    serviceConnectionC3669 = new ServiceConnectionC3669(this, c3664);
                    serviceConnectionC3669.f14350.put(serviceConnectionC3660, serviceConnectionC3660);
                    c3936 = ServiceConnectionC3669.m7694(serviceConnectionC3669, str, executor);
                    this.f14368.put(c3664, serviceConnectionC3669);
                } else {
                    this.f14364.removeMessages(0, c3664);
                    if (serviceConnectionC3669.f14350.containsKey(serviceConnectionC3660)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(c3664.toString()));
                    }
                    serviceConnectionC3669.f14350.put(serviceConnectionC3660, serviceConnectionC3660);
                    int i = serviceConnectionC3669.f14354;
                    if (i == 1) {
                        serviceConnectionC3660.onServiceConnected(serviceConnectionC3669.f14352, serviceConnectionC3669.f14351);
                    } else if (i == 2) {
                        c3936 = ServiceConnectionC3669.m7694(serviceConnectionC3669, str, executor);
                    }
                }
                if (serviceConnectionC3669.f14349) {
                    return C3936.f15222;
                }
                if (c3936 == null) {
                    c3936 = new C3936(-1);
                }
                return c3936;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7699(String str, ServiceConnection serviceConnection, boolean z) {
        C3664 c3664 = new C3664(str, z);
        AbstractC3659.m7683(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f14368) {
            try {
                ServiceConnectionC3669 serviceConnectionC3669 = (ServiceConnectionC3669) this.f14368.get(c3664);
                if (serviceConnectionC3669 == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: ".concat(c3664.toString()));
                }
                if (!serviceConnectionC3669.f14350.containsKey(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(c3664.toString()));
                }
                serviceConnectionC3669.f14350.remove(serviceConnection);
                if (serviceConnectionC3669.f14350.isEmpty()) {
                    this.f14364.sendMessageDelayed(this.f14364.obtainMessage(0, c3664), this.f14366);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
