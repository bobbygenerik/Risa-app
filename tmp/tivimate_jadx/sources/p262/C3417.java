package p262;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkerStoppedException;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import p240.C3231;
import p322.C3965;
import p322.C3980;
import p352.C4302;
import p352.InterfaceC4303;
import ᐧᵎ.ᵢי;

/* renamed from: ـʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3417 implements InterfaceC4303 {

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final String f13411 = C3965.m8128("Processor");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3980 f13413;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ᵢי f13415;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WorkDatabase f13416;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f13420;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final HashMap f13418 = new HashMap();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final HashMap f13422 = new HashMap();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final HashSet f13412 = new HashSet();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList f13414 = new ArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public PowerManager.WakeLock f13421 = null;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object f13417 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final HashMap f13419 = new HashMap();

    public C3417(Context context, C3980 c3980, ᵢי r3, WorkDatabase workDatabase) {
        this.f13420 = context;
        this.f13413 = c3980;
        this.f13415 = r3;
        this.f13416 = workDatabase;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m7303(String str, C3419 c3419, int i) {
        String str2 = f13411;
        if (c3419 == null) {
            C3965.m8127().m8133(str2, "WorkerWrapper could not be found for " + str);
            return false;
        }
        c3419.f13428.mo3907(new WorkerStoppedException(i));
        C3965.m8127().m8133(str2, "WorkerWrapper interrupted for " + str);
        return true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3231 m7304(String str) {
        synchronized (this.f13417) {
            try {
                C3419 m7305 = m7305(str);
                if (m7305 == null) {
                    return null;
                }
                return m7305.f13434;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3419 m7305(String str) {
        C3419 c3419 = (C3419) this.f13422.get(str);
        return c3419 == null ? (C3419) this.f13418.get(str) : c3419;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7306(InterfaceC3436 interfaceC3436) {
        synchronized (this.f13417) {
            this.f13414.remove(interfaceC3436);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m7307(C3432 c3432, int i) {
        String str = c3432.f13455.f12346;
        synchronized (this.f13417) {
            try {
                if (this.f13422.get(str) == null) {
                    Set set = (Set) this.f13419.get(str);
                    if (set != null && set.contains(c3432)) {
                        return m7303(str, m7308(str), i);
                    }
                    return false;
                }
                C3965.m8127().m8133(f13411, "Ignored stopWork. WorkerWrapper " + str + " is in foreground");
                return false;
            } finally {
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3419 m7308(String str) {
        C3419 c3419 = (C3419) this.f13422.remove(str);
        boolean z = c3419 != null;
        if (!z) {
            c3419 = (C3419) this.f13418.remove(str);
        }
        this.f13419.remove(str);
        if (z) {
            synchronized (this.f13417) {
                try {
                    if (this.f13422.isEmpty()) {
                        Context context = this.f13420;
                        String str2 = C4302.f15931;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.f13420.startService(intent);
                        } catch (Throwable th) {
                            C3965.m8127().m8130(f13411, "Unable to stop foreground service", th);
                        }
                        PowerManager.WakeLock wakeLock = this.f13421;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.f13421 = null;
                        }
                    }
                } finally {
                }
            }
        }
        return c3419;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7309(InterfaceC3436 interfaceC3436) {
        synchronized (this.f13417) {
            this.f13414.add(interfaceC3436);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m7310(String str) {
        boolean z;
        synchronized (this.f13417) {
            z = m7305(str) != null;
        }
        return z;
    }
}
