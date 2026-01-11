package p296;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.internal.zzaj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;
import p319.C3936;
import p347.AbstractC4277;

/* renamed from: ٴﾞ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC3669 implements ServiceConnection {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f14349;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public IBinder f14351;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ComponentName f14352;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C3673 f14353;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3664 f14355;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final HashMap f14350 = new HashMap();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f14354 = 2;

    public ServiceConnectionC3669(C3673 c3673, C3664 c3664) {
        this.f14353 = c3673;
        this.f14355 = c3664;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3936 m7694(ServiceConnectionC3669 serviceConnectionC3669, String str, Executor executor) {
        try {
            Intent m7693 = serviceConnectionC3669.f14355.m7693(serviceConnectionC3669.f14353.f14367);
            serviceConnectionC3669.f14354 = 3;
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            if (Build.VERSION.SDK_INT >= 31) {
                StrictMode.setVmPolicy(AbstractC4277.m8653(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
            }
            try {
                C3673 c3673 = serviceConnectionC3669.f14353;
                boolean m6619 = c3673.f14365.m6619(c3673.f14367, str, m7693, serviceConnectionC3669, 4225, executor);
                serviceConnectionC3669.f14349 = m6619;
                if (m6619) {
                    serviceConnectionC3669.f14353.f14364.sendMessageDelayed(serviceConnectionC3669.f14353.f14364.obtainMessage(1, serviceConnectionC3669.f14355), serviceConnectionC3669.f14353.f14369);
                    C3936 c3936 = C3936.f15222;
                    StrictMode.setVmPolicy(vmPolicy);
                    return c3936;
                }
                serviceConnectionC3669.f14354 = 2;
                try {
                    C3673 c36732 = serviceConnectionC3669.f14353;
                    c36732.f14365.m6620(c36732.f14367, serviceConnectionC3669);
                } catch (IllegalArgumentException unused) {
                }
                C3936 c39362 = new C3936(16);
                StrictMode.setVmPolicy(vmPolicy);
                return c39362;
            } catch (Throwable th) {
                StrictMode.setVmPolicy(vmPolicy);
                throw th;
            }
        } catch (zzaj e) {
            return e.f1725;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f14353.f14368) {
            try {
                this.f14353.f14364.removeMessages(1, this.f14355);
                this.f14351 = iBinder;
                this.f14352 = componentName;
                Iterator it = this.f14350.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f14354 = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f14353.f14368) {
            try {
                this.f14353.f14364.removeMessages(1, this.f14355);
                this.f14351 = null;
                this.f14352 = componentName;
                Iterator it = this.f14350.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f14354 = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
