package p027;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.play_billing.AbstractBinderC0622;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0551;
import com.google.android.gms.internal.play_billing.C0651;
import com.google.android.gms.internal.play_billing.EnumC0583;
import com.google.android.gms.internal.play_billing.InterfaceC0626;
import j$.util.Objects;
import p035.BinderC1248;
import p035.C1243;
import p035.InterfaceC1238;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC1110 implements ServiceConnection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4326;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4327;

    public /* synthetic */ ServiceConnectionC1110(int i, Object obj) {
        this.f4326 = i;
        this.f4327 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [ʼﾞ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.internal.play_billing.ᵔᵢ] */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ?? r5;
        InterfaceC1238 interfaceC1238;
        switch (this.f4326) {
            case 0:
                AbstractC0542.m2096("BillingClientTesting", "Billing Override Service connected.");
                C1089 c1089 = (C1089) this.f4327;
                int i = AbstractBinderC0622.f2457;
                if (iBinder == null) {
                    r5 = 0;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
                    r5 = queryLocalInterface instanceof InterfaceC0626 ? (InterfaceC0626) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService", 1);
                }
                c1089.f4247 = r5;
                c1089.f4250 = 2;
                int i2 = AbstractC1104.f4313;
                C0651 m3491 = AbstractC1104.m3491(26, EnumC0583.f2383);
                Objects.requireNonNull(m3491, "ApiSuccess should not be null");
                ⁱי r4 = c1089.f4352;
                r4.getClass();
                try {
                    r4.ᵔٴ(m3491, (C0551) r4.ᴵˊ);
                    return;
                } catch (Throwable th) {
                    AbstractC0542.m2091("BillingLogger", "Unable to log.", th);
                    return;
                }
            default:
                C1243 c1243 = (C1243) this.f4327;
                int i3 = BinderC1248.f4858;
                IInterface queryLocalInterface2 = iBinder.queryLocalInterface(InterfaceC1238.f4815);
                if (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof InterfaceC1238)) {
                    ?? obj = new Object();
                    obj.f4863 = iBinder;
                    interfaceC1238 = obj;
                } else {
                    interfaceC1238 = (InterfaceC1238) queryLocalInterface2;
                }
                c1243.f4829 = interfaceC1238;
                try {
                    c1243.f4833 = interfaceC1238.mo3832(c1243.f4825, c1243.f4832);
                    return;
                } catch (RemoteException e) {
                    return;
                }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        switch (this.f4326) {
            case 0:
                AbstractC0542.m2097("BillingClientTesting", "Billing Override Service disconnected.");
                C1089 c1089 = (C1089) this.f4327;
                c1089.f4247 = null;
                c1089.f4250 = 0;
                return;
            default:
                ((C1243) this.f4327).f4829 = null;
                return;
        }
    }
}
