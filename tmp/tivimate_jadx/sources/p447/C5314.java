package p447;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC0342;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* renamed from: ﹶﾞ.ᐧⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5314 implements InterfaceC5299 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AppMeasurementDynamiteService f20044;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0342 f20045;

    public C5314(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0342 interfaceC0342) {
        this.f20044 = appMeasurementDynamiteService;
        this.f20045 = interfaceC0342;
    }

    @Override // p447.InterfaceC5299
    /* renamed from: ﹳٴ */
    public final void mo8074(long j, Bundle bundle, String str, String str2) {
        try {
            this.f20045.mo1568(j, bundle, str, str2);
        } catch (RemoteException e) {
            C5322 c5322 = this.f20044.f2521;
            if (c5322 != null) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10216(e, "Event listener threw exception");
            }
        }
    }
}
