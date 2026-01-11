package p336;

import android.content.Context;
import android.os.Bundle;
import p013.C0907;
import p126.InterfaceC2136;
import p303.C3709;
import p303.EnumC3707;
import ﹳٴ.ﹳٴ;

/* renamed from: ᵎʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4223 implements InterfaceC4216 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Bundle f15701;

    public C4223(Context context) {
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.f15701 = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // p336.InterfaceC4216
    /* renamed from: ʽ */
    public final Object mo8613(InterfaceC2136 interfaceC2136) {
        return C0907.f3832;
    }

    @Override // p336.InterfaceC4216
    /* renamed from: ˈ */
    public final C3709 mo8614() {
        Bundle bundle = this.f15701;
        if (bundle.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return new C3709(ﹳٴ.ﹳـ(bundle.getInt("firebase_sessions_sessions_restart_timeout"), EnumC3707.SECONDS));
        }
        return null;
    }

    @Override // p336.InterfaceC4216
    /* renamed from: ⁱˊ */
    public final Double mo8615() {
        Bundle bundle = this.f15701;
        if (bundle.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(bundle.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    @Override // p336.InterfaceC4216
    /* renamed from: ﹳٴ */
    public final Boolean mo8616() {
        Bundle bundle = this.f15701;
        if (bundle.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(bundle.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }
}
