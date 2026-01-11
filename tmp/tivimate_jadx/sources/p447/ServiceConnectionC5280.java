package p447;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.measurement.AbstractBinderC0439;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.measurement.InterfaceC0272;
import j$.util.Objects;
import p179.RunnableC2689;

/* renamed from: ﹶﾞ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC5280 implements ServiceConnection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f19915;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5317 f19916;

    public ServiceConnectionC5280(C5317 c5317, String str) {
        Objects.requireNonNull(c5317);
        this.f19916 = c5317;
        this.f19915 = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.measurement.ʽʽ] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C5317 c5317 = this.f19916;
        if (iBinder == null) {
            C5344 c5344 = c5317.f20057.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10217("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i = AbstractBinderC0439.f2184;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            ?? abstractC0292 = queryLocalInterface instanceof InterfaceC0272 ? (InterfaceC0272) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService", 0);
            C5322 c5322 = c5317.f20057;
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20350.m10217("Install Referrer Service connected");
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC2689(this, (InterfaceC0272) abstractC0292, this));
        } catch (RuntimeException e) {
            C5344 c53443 = c5317.f20057.f20193;
            C5322.m10556(c53443);
            c53443.f20348.m10216(e, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C5344 c5344 = this.f19916.f20057.f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10217("Install Referrer Service disconnected");
    }
}
