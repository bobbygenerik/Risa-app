package p447;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import p228.C3071;
import p296.AbstractC3659;
import p296.AbstractC3675;
import p296.C3673;
import p296.InterfaceC3663;
import p296.InterfaceC3687;
import p319.C3936;
import p319.C3940;
import p409.RunnableC4848;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ᵢʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC5334 implements ServiceConnection, InterfaceC3687, InterfaceC3663 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f20260;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile boolean f20261;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile C5271 f20262;

    public ServiceConnectionC5334(C5240 c5240) {
        this.f20260 = c5240;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C5215 c5215 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10201();
        synchronized (this) {
            if (iBinder == null) {
                this.f20261 = false;
                C5344 c5344 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10217("Service connected with null binder");
                return;
            }
            InterfaceC5260 interfaceC5260 = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    interfaceC5260 = queryLocalInterface instanceof InterfaceC5260 ? (InterfaceC5260) queryLocalInterface : new C5261(iBinder);
                    C5344 c53442 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                    C5322.m10556(c53442);
                    c53442.f20350.m10217("Bound to IMeasurementService interface");
                } else {
                    C5344 c53443 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10216(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                C5344 c53444 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                C5322.m10556(c53444);
                c53444.f20343.m10217("Service connect failed to get IMeasurementService");
            }
            if (interfaceC5260 == null) {
                this.f20261 = false;
                try {
                    C3071 m6618 = C3071.m6618();
                    C5240 c5240 = this.f20260;
                    m6618.m6620(((C5322) ((ᵎﹶ) c5240).ʾˋ).f20184, c5240.f19692);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                C5215 c52152 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20200;
                C5322.m10556(c52152);
                c52152.m10200(new RunnableC5247(this, interfaceC5260, 0));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this.f20260).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10201();
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20340.m10217("Service disconnected");
        C5215 c52152 = c5322.f20200;
        C5322.m10556(c52152);
        c52152.m10200(new ﹶˎ(this, 6, componentName));
    }

    @Override // p296.InterfaceC3687
    /* renamed from: ʽ */
    public final void mo7725(int i) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this.f20260).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10201();
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20340.m10217("Service connection suspended");
        C5215 c52152 = c5322.f20200;
        C5322.m10556(c52152);
        c52152.m10200(new RunnableC4848(4, this));
    }

    @Override // p296.InterfaceC3687
    /* renamed from: ˈ */
    public final void mo7726() {
        C5215 c5215 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10201();
        synchronized (this) {
            try {
                AbstractC3659.m7687(this.f20262);
                InterfaceC5260 interfaceC5260 = (InterfaceC5260) this.f20262.m7704();
                C5215 c52152 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20200;
                C5322.m10556(c52152);
                c52152.m10200(new RunnableC5247(this, interfaceC5260, 1));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f20262 = null;
                this.f20261 = false;
            }
        }
    }

    @Override // p296.InterfaceC3663
    /* renamed from: ˑﹳ */
    public final void mo7692(C3936 c3936) {
        C5240 c5240 = this.f20260;
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10201();
        C5344 c5344 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
        if (c5344 == null || !c5344.f19908) {
            c5344 = null;
        }
        if (c5344 != null) {
            c5344.f20350.m10216(c3936, "Service connection failed");
        }
        synchronized (this) {
            this.f20261 = false;
            this.f20262 = null;
        }
        C5215 c52152 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20200;
        C5322.m10556(c52152);
        c52152.m10200(new ﹶˎ(this, 7, c3936));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ٴﾞ.ˑﹳ, ﹶﾞ.ˋᵔ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10591() {
        C5240 c5240 = this.f20260;
        c5240.m10252();
        Context context = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20184;
        synchronized (this) {
            try {
                try {
                    if (this.f20261) {
                        C5344 c5344 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                        C5322.m10556(c5344);
                        c5344.f20350.m10217("Connection attempt already in progress");
                    } else {
                        if (this.f20262 != null && (this.f20262.m7708() || this.f20262.m7713())) {
                            C5344 c53442 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                            C5322.m10556(c53442);
                            c53442.f20350.m10217("Already awaiting connection attempt");
                            return;
                        }
                        this.f20262 = new AbstractC3675(context, Looper.getMainLooper(), C3673.m7697(context), C3940.f15236, 93, this, this, null);
                        C5344 c53443 = ((C5322) ((ᵎﹶ) this.f20260).ʾˋ).f20193;
                        C5322.m10556(c53443);
                        c53443.f20350.m10217("Connecting to remote service");
                        this.f20261 = true;
                        AbstractC3659.m7687(this.f20262);
                        this.f20262.m7707();
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
