package p363;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import java.util.Calendar;
import p165.C2600;
import p256.AbstractC3376;
import ʼ.ᵎﹶ;
import ˑי.ʽ;

/* renamed from: ᵔᵢ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4420 extends AbstractC3376 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16433 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16434;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f16435;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4420(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430, Context context) {
        super(layoutInflaterFactory2C4430);
        this.f16434 = layoutInflaterFactory2C4430;
        this.f16435 = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4420(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430, ʽ r3) {
        super(layoutInflaterFactory2C4430);
        this.f16434 = layoutInflaterFactory2C4430;
        this.f16435 = r3;
    }

    @Override // p256.AbstractC3376
    /* renamed from: ˈ */
    public final IntentFilter mo7249() {
        switch (this.f16433) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // p256.AbstractC3376
    /* renamed from: ٴﹶ */
    public final void mo7251() {
        switch (this.f16433) {
            case 0:
                this.f16434.m8958(true, true);
                return;
            default:
                this.f16434.m8958(true, true);
                return;
        }
    }

    @Override // p256.AbstractC3376
    /* renamed from: ᵎﹶ */
    public final int mo7252() {
        Location location;
        boolean z;
        long j;
        Location location2;
        switch (this.f16433) {
            case 0:
                return AbstractC4419.m8925((PowerManager) this.f16435) ? 2 : 1;
            default:
                ʽ r0 = (ʽ) this.f16435;
                C4416 c4416 = (C4416) r0.ʽʽ;
                LocationManager locationManager = (LocationManager) r0.ᴵˊ;
                if (c4416.f16431 > System.currentTimeMillis()) {
                    z = c4416.f16432;
                } else {
                    Context context = (Context) r0.ʾˋ;
                    Location location3 = null;
                    if (ᵎﹶ.ٴﹶ(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        if (locationManager.isProviderEnabled("network")) {
                            location2 = locationManager.getLastKnownLocation("network");
                            location = location2;
                        }
                        location2 = null;
                        location = location2;
                    } else {
                        location = null;
                    }
                    if (ᵎﹶ.ٴﹶ(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                location3 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e) {
                        }
                    }
                    if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                        location = location3;
                    }
                    if (location != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (C2600.f9836 == null) {
                            C2600.f9836 = new C2600();
                        }
                        C2600 c2600 = C2600.f9836;
                        c2600.m5846(location.getLatitude(), location.getLongitude(), currentTimeMillis - 86400000);
                        c2600.m5846(location.getLatitude(), location.getLongitude(), currentTimeMillis);
                        z = c2600.f9838 == 1;
                        long j2 = c2600.f9837;
                        long j3 = c2600.f9839;
                        c2600.m5846(location.getLatitude(), location.getLongitude(), currentTimeMillis + 86400000);
                        long j4 = c2600.f9837;
                        if (j2 == -1 || j3 == -1) {
                            j = currentTimeMillis + 43200000;
                        } else {
                            if (currentTimeMillis > j3) {
                                j2 = j4;
                            } else if (currentTimeMillis > j2) {
                                j2 = j3;
                            }
                            j = j2 + 60000;
                        }
                        c4416.f16432 = z;
                        c4416.f16431 = j;
                    } else {
                        int i = Calendar.getInstance().get(11);
                        if (i < 6 || i >= 22) {
                            z = true;
                        }
                    }
                }
                return z ? 2 : 1;
        }
    }
}
