package p447;

import com.google.android.gms.internal.measurement.C0380;
import com.google.android.gms.internal.measurement.C0400;
import java.util.HashMap;
import java.util.concurrent.Callable;
import p229.C3125;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC5265 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ String f19879;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C5304 f19880;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19881;

    public /* synthetic */ CallableC5265(C5304 c5304, String str, int i) {
        this.f19881 = i;
        this.f19880 = c5304;
        this.f19879 = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f19881) {
            case 0:
                return new C0380(new CallableC5265(this.f19880, this.f19879, 1));
            case 1:
                C5304 c5304 = this.f19880;
                C5257 c5257 = c5304.f19910.f20275;
                C5337.m10599(c5257);
                String str = this.f19879;
                C5243 m10441 = c5257.m10441(str);
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("package_name", str);
                ((C5322) ((ᵎﹶ) c5304).ʾˋ).f20189.m10579();
                hashMap.put("gmp_version", 133005L);
                if (m10441 != null) {
                    String m10346 = m10441.m10346();
                    if (m10346 != null) {
                        hashMap.put("app_version", m10346);
                    }
                    hashMap.put("app_version_int", Long.valueOf(m10441.m10332()));
                    hashMap.put("dynamite_version", Long.valueOf(m10441.m10350()));
                }
                return hashMap;
            default:
                C3125 c3125 = new C3125(this.f19880, this.f19879, 28, false);
                C0400 c0400 = new C0400(0, "internal.remoteConfig");
                c0400.f2224.put("getValue", new C0380(c0400, c3125));
                return c0400;
        }
    }
}
