package p447;

import android.os.IBinder;
import android.os.IInterface;
import p296.AbstractC3675;

/* renamed from: ﹶﾞ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5271 extends AbstractC3675 {
    @Override // p296.AbstractC3675
    /* renamed from: ʻٴ */
    public final String mo4839() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // p296.AbstractC3675
    /* renamed from: ʼᐧ */
    public final /* synthetic */ IInterface mo4840(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof InterfaceC5260 ? (InterfaceC5260) queryLocalInterface : new C5261(iBinder);
    }

    @Override // p296.AbstractC3675, p369.InterfaceC4507
    /* renamed from: ˈ */
    public final int mo4842() {
        return 12451000;
    }

    @Override // p296.AbstractC3675
    /* renamed from: ـˆ */
    public final String mo4845() {
        return "com.google.android.gms.measurement.START";
    }
}
