package p447;

import com.google.android.gms.internal.measurement.InterfaceC0462;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p027.RunnableC1101;

/* renamed from: ﹶﾞ.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5283 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ AppMeasurementDynamiteService f19928;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19929;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0462 f19930;

    public /* synthetic */ RunnableC5283(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0462 interfaceC0462, int i) {
        this.f19929 = i;
        this.f19930 = interfaceC0462;
        this.f19928 = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19929) {
            case 0:
                C5240 m10569 = this.f19928.f2521.m10569();
                InterfaceC0462 interfaceC0462 = this.f19930;
                m10569.m10252();
                m10569.m10526();
                m10569.m10306(new RunnableC1101(m10569, m10569.m10302(false), interfaceC0462, 13, false));
                return;
            default:
                AppMeasurementDynamiteService appMeasurementDynamiteService = this.f19928;
                C5339 c5339 = appMeasurementDynamiteService.f2521.f20208;
                C5322.m10560(c5339);
                C5322 c5322 = appMeasurementDynamiteService.f2521;
                c5339.m10696(this.f19930, c5322.f20185 != null && c5322.f20185.booleanValue());
                return;
        }
    }
}
