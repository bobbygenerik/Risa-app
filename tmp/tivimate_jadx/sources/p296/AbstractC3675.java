package p296;

import android.accounts.Account;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.leanback.widget.RunnableC0142;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.measurement.AbstractC0292;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p035.C1218;
import p319.C3926;
import p319.C3936;
import p319.C3940;
import p384.C4603;
import p409.C4840;
import ˉˆ.ʿ;

/* renamed from: ٴﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3675 {

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static final C3926[] f14371 = new C3926[0];

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C3689 f14373;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final InterfaceC3663 f14374;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f14375;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public InterfaceC3668 f14377;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3673 f14378;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ServiceConnectionC3660 f14379;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final InterfaceC3687 f14380;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3940 f14382;

    /* renamed from: יـ, reason: contains not printable characters */
    public volatile String f14383;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public IInterface f14385;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int f14389;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1218 f14390;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String f14392;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final HandlerC3677 f14394;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public volatile String f14391 = null;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f14386 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object f14388 = new Object();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f14393 = new ArrayList();

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f14387 = 1;

    /* renamed from: ˏי, reason: contains not printable characters */
    public C3936 f14381 = null;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f14376 = false;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public volatile C3680 f14372 = null;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final AtomicInteger f14384 = new AtomicInteger(0);

    public AbstractC3675(Context context, Looper looper, C3673 c3673, C3940 c3940, int i, InterfaceC3687 interfaceC3687, InterfaceC3663 interfaceC3663, String str) {
        AbstractC3659.m7683(context, "Context must not be null");
        this.f14375 = context;
        AbstractC3659.m7683(looper, "Looper must not be null");
        AbstractC3659.m7683(c3673, "Supervisor must not be null");
        this.f14378 = c3673;
        AbstractC3659.m7683(c3940, "API availability must not be null");
        this.f14382 = c3940;
        this.f14394 = new HandlerC3677(this, looper);
        this.f14389 = i;
        this.f14380 = interfaceC3687;
        this.f14374 = interfaceC3663;
        this.f14392 = str;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ void m7700(AbstractC3675 abstractC3675) {
        int i;
        int i2;
        synchronized (abstractC3675.f14386) {
            i = abstractC3675.f14387;
        }
        if (i == 3) {
            abstractC3675.f14376 = true;
            i2 = 5;
        } else {
            i2 = 4;
        }
        HandlerC3677 handlerC3677 = abstractC3675.f14394;
        handlerC3677.sendMessage(handlerC3677.obtainMessage(i2, abstractC3675.f14384.get(), 16));
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ boolean m7701(AbstractC3675 abstractC3675, int i, int i2, IInterface iInterface) {
        synchronized (abstractC3675.f14386) {
            try {
                if (abstractC3675.f14387 != i) {
                    return false;
                }
                abstractC3675.m7705(i2, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʻٴ */
    public abstract String mo4839();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7702(C4603 c4603) {
        ((C4840) c4603.f17126).f18156.f18174.post(new RunnableC0142(29, c4603));
    }

    /* renamed from: ʼᐧ */
    public abstract IInterface mo4840(IBinder iBinder);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7703(String str) {
        this.f14391 = str;
        m7709();
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final IInterface m7704() {
        IInterface iInterface;
        synchronized (this.f14386) {
            try {
                if (this.f14387 == 5) {
                    throw new DeadObjectException();
                }
                if (!m7713()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                iInterface = this.f14385;
                AbstractC3659.m7683(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m7705(int i, IInterface iInterface) {
        C1218 c1218;
        AbstractC3659.m7686((i == 4) == (iInterface != null));
        synchronized (this.f14386) {
            try {
                this.f14387 = i;
                this.f14385 = iInterface;
                Bundle bundle = null;
                if (i == 1) {
                    ServiceConnectionC3660 serviceConnectionC3660 = this.f14379;
                    if (serviceConnectionC3660 != null) {
                        C3673 c3673 = this.f14378;
                        String str = this.f14390.f4715;
                        AbstractC3659.m7687(str);
                        this.f14390.getClass();
                        if (this.f14392 == null) {
                            this.f14375.getClass();
                        }
                        c3673.m7699(str, serviceConnectionC3660, this.f14390.f4714);
                        this.f14379 = null;
                    }
                } else if (i == 2 || i == 3) {
                    ServiceConnectionC3660 serviceConnectionC36602 = this.f14379;
                    if (serviceConnectionC36602 != null && (c1218 = this.f14390) != null) {
                        String str2 = "Calling connect() while still connected, missing disconnect() for " + c1218.f4715 + " on com.google.android.gms";
                        C3673 c36732 = this.f14378;
                        String str3 = this.f14390.f4715;
                        AbstractC3659.m7687(str3);
                        this.f14390.getClass();
                        if (this.f14392 == null) {
                            this.f14375.getClass();
                        }
                        c36732.m7699(str3, serviceConnectionC36602, this.f14390.f4714);
                        this.f14384.incrementAndGet();
                    }
                    ServiceConnectionC3660 serviceConnectionC36603 = new ServiceConnectionC3660(this, this.f14384.get());
                    this.f14379 = serviceConnectionC36603;
                    String mo4845 = mo4845();
                    boolean mo4841 = mo4841();
                    this.f14390 = new C1218(1, mo4845, mo4841);
                    if (mo4841 && mo4842() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f14390.f4715)));
                    }
                    C3673 c36733 = this.f14378;
                    String str4 = this.f14390.f4715;
                    AbstractC3659.m7687(str4);
                    this.f14390.getClass();
                    String str5 = this.f14392;
                    if (str5 == null) {
                        str5 = this.f14375.getClass().getName();
                    }
                    C3936 m7698 = c36733.m7698(new C3664(str4, this.f14390.f4714), serviceConnectionC36603, str5, null);
                    if (!(m7698.f15226 == 0)) {
                        String str6 = "unable to connect to service: " + this.f14390.f4715 + " on com.google.android.gms";
                        int i2 = m7698.f15226;
                        if (i2 == -1) {
                            i2 = 16;
                        }
                        if (m7698.f15223 != null) {
                            bundle = new Bundle();
                            bundle.putParcelable("pendingIntent", m7698.f15223);
                        }
                        int i3 = this.f14384.get();
                        C3666 c3666 = new C3666(this, i2, bundle);
                        HandlerC3677 handlerC3677 = this.f14394;
                        handlerC3677.sendMessage(handlerC3677.obtainMessage(7, i3, -1, c3666));
                    }
                } else if (i == 4) {
                    AbstractC3659.m7687(iInterface);
                    System.currentTimeMillis();
                }
            } finally {
            }
        }
    }

    /* renamed from: ʾᵎ */
    public boolean mo4841() {
        return mo4842() >= 211700000;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String m7706() {
        return this.f14391;
    }

    /* renamed from: ˈ */
    public abstract int mo4842();

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m7707() {
        int m8112 = this.f14382.m8112(this.f14375, mo4842());
        if (m8112 == 0) {
            m7715(new ʿ(27, this));
            return;
        }
        m7705(1, null);
        this.f14377 = new ʿ(27, this);
        int i = this.f14384.get();
        HandlerC3677 handlerC3677 = this.f14394;
        handlerC3677.sendMessage(handlerC3677.obtainMessage(3, i, m8112, null));
    }

    /* renamed from: ˏי */
    public Set mo4843() {
        return Collections.EMPTY_SET;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m7708() {
        boolean z;
        synchronized (this.f14386) {
            int i = this.f14387;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: יـ */
    public Bundle mo4844() {
        return new Bundle();
    }

    /* renamed from: ـˆ */
    public abstract String mo4845();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m7709() {
        this.f14384.incrementAndGet();
        synchronized (this.f14393) {
            try {
                int size = this.f14393.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC3662) this.f14393.get(i)).m7688();
                }
                this.f14393.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f14388) {
            this.f14373 = null;
        }
        m7705(1, null);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3926[] m7710() {
        C3680 c3680 = this.f14372;
        if (c3680 == null) {
            return null;
        }
        return c3680.f14405;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m7711(InterfaceC3684 interfaceC3684, Set set) {
        Bundle mo4844 = mo4844();
        String str = Build.VERSION.SDK_INT < 31 ? this.f14383 : this.f14383;
        int i = this.f14389;
        int i2 = C3940.f15237;
        Scope[] scopeArr = C3682.f14408;
        Bundle bundle = new Bundle();
        C3926[] c3926Arr = C3682.f14409;
        C3682 c3682 = new C3682(6, i, i2, null, null, scopeArr, bundle, null, c3926Arr, c3926Arr, true, 0, false, str);
        c3682.f14413 = this.f14375.getPackageName();
        c3682.f14417 = mo4844;
        if (set != null) {
            c3682.f14415 = (Scope[]) set.toArray(new Scope[0]);
        }
        if (m7714()) {
            Account mo4846 = mo4846();
            if (mo4846 == null) {
                mo4846 = new Account("<<default account>>", "com.google");
            }
            c3682.f14414 = mo4846;
            if (interfaceC3684 != 0) {
                c3682.f14419 = ((AbstractC0292) interfaceC3684).f1904;
            }
        }
        c3682.f14421 = f14371;
        c3682.f14416 = mo4848();
        try {
            synchronized (this.f14388) {
                try {
                    C3689 c3689 = this.f14373;
                    if (c3689 != null) {
                        c3689.m7727(new BinderC3667(this, this.f14384.get()), c3682);
                    }
                } finally {
                }
            }
        } catch (DeadObjectException e) {
            int i3 = this.f14384.get();
            HandlerC3677 handlerC3677 = this.f14394;
            handlerC3677.sendMessage(handlerC3677.obtainMessage(6, i3, 3));
        } catch (RemoteException e2) {
            int i4 = this.f14384.get();
            C3686 c3686 = new C3686(this, 8, null, null);
            HandlerC3677 handlerC36772 = this.f14394;
            handlerC36772.sendMessage(handlerC36772.obtainMessage(1, i4, -1, c3686));
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            int i42 = this.f14384.get();
            C3686 c36862 = new C3686(this, 8, null, null);
            HandlerC3677 handlerC367722 = this.f14394;
            handlerC367722.sendMessage(handlerC367722.obtainMessage(1, i42, -1, c36862));
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7712() {
        if (!m7713() || this.f14390 == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
    }

    /* renamed from: ᵔﹳ */
    public Account mo4846() {
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m7713() {
        boolean z;
        synchronized (this.f14386) {
            z = this.f14387 == 4;
        }
        return z;
    }

    /* renamed from: ﹳᐧ */
    public C3926[] mo4848() {
        return f14371;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean m7714() {
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7715(InterfaceC3668 interfaceC3668) {
        this.f14377 = interfaceC3668;
        m7705(2, null);
    }
}
