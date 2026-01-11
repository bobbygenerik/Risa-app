package p446;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.parse.ˋᵔ;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import p035.C1218;
import p069.AbstractBinderC1623;
import p069.AbstractC1626;
import p069.C1625;
import p069.InterfaceC1624;
import p228.C3071;
import p296.AbstractC3659;
import p319.C3940;
import p319.ServiceConnectionC3937;

/* renamed from: ﹶﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5211 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f19567;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f19568 = new Object();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C5210 f19569;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f19570;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC1624 f19571;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ServiceConnectionC3937 f19572;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Context f19573;

    public C5211(Context context) {
        AbstractC3659.m7687(context);
        Context applicationContext = context.getApplicationContext();
        this.f19573 = applicationContext != null ? applicationContext : context;
        this.f19567 = false;
        this.f19570 = -1L;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m10183(C1218 c1218, long j, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            hashMap.put("app_context", "1");
            if (c1218 != null) {
                hashMap.put("limit_ad_tracking", true != c1218.f4714 ? "0" : "1");
                String str = c1218.f4715;
                if (str != null) {
                    hashMap.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th != null) {
                hashMap.put("error", th.getClass().getName());
            }
            hashMap.put("tag", "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j));
            new ˋᵔ(hashMap).start();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1218 m10184(Context context) {
        C5211 c5211 = new C5211(context);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            c5211.m10185();
            C1218 m10186 = c5211.m10186();
            m10183(m10186, SystemClock.elapsedRealtime() - elapsedRealtime, null);
            return m10186;
        } finally {
        }
    }

    public final void finalize() {
        m10187();
        super.finalize();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10185() {
        AbstractC3659.m7682("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f19567) {
                    m10187();
                }
                Context context = this.f19573;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int m8112 = C3940.f15236.m8112(context, 12451000);
                    if (m8112 != 0 && m8112 != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    ServiceConnectionC3937 serviceConnectionC3937 = new ServiceConnectionC3937();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!C3071.m6618().m6619(context, context.getClass().getName(), intent, serviceConnectionC3937, 1, null)) {
                            throw new IOException("Connection failure");
                        }
                        this.f19572 = serviceConnectionC3937;
                        try {
                            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                            IBinder m8111 = serviceConnectionC3937.m8111();
                            int i = AbstractBinderC1623.f6469;
                            IInterface queryLocalInterface = m8111.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            this.f19571 = queryLocalInterface instanceof InterfaceC1624 ? (InterfaceC1624) queryLocalInterface : new C1625(m8111);
                            this.f19567 = true;
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new Exception();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1218 m10186() {
        C1218 c1218;
        AbstractC3659.m7682("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f19567) {
                    synchronized (this.f19568) {
                        C5210 c5210 = this.f19569;
                        if (c5210 == null || !c5210.f19565) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        m10185();
                        if (!this.f19567) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                AbstractC3659.m7687(this.f19572);
                AbstractC3659.m7687(this.f19571);
                try {
                    C1625 c1625 = (C1625) this.f19571;
                    c1625.getClass();
                    Parcel obtain = Parcel.obtain();
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    boolean z = true;
                    Parcel m4406 = c1625.m4406(obtain, 1);
                    String readString = m4406.readString();
                    m4406.recycle();
                    C1625 c16252 = (C1625) this.f19571;
                    c16252.getClass();
                    Parcel obtain2 = Parcel.obtain();
                    obtain2.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    int i = AbstractC1626.f6471;
                    obtain2.writeInt(1);
                    Parcel m44062 = c16252.m4406(obtain2, 2);
                    if (m44062.readInt() == 0) {
                        z = false;
                    }
                    m44062.recycle();
                    c1218 = new C1218(2, readString, z);
                } catch (RemoteException e2) {
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m10188();
        return c1218;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10187() {
        AbstractC3659.m7682("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f19573 == null || this.f19572 == null) {
                    return;
                }
                try {
                    if (this.f19567) {
                        C3071.m6618().m6620(this.f19573, this.f19572);
                    }
                } catch (Throwable th) {
                }
                this.f19567 = false;
                this.f19571 = null;
                this.f19572 = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m10188() {
        synchronized (this.f19568) {
            C5210 c5210 = this.f19569;
            if (c5210 != null) {
                c5210.f19563.countDown();
                try {
                    this.f19569.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.f19570;
            if (j > 0) {
                this.f19569 = new C5210(this, j);
            }
        }
    }
}
