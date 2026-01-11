package p252;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
import p035.AbstractC1220;
import p122.C2119;
import p212.C2987;
import ʻʿ.ˈ;

/* renamed from: יˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3311 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3309 f12737 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AtomicReference f12738 = new AtomicReference(null);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2987 f12739;

    public C3311(C2987 c2987) {
        this.f12739 = c2987;
        c2987.m6518(new ˈ(22, this));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m7127(String str) {
        C3311 c3311 = (C3311) this.f12738.get();
        return c3311 != null && c3311.m7127(str);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7128(String str, long j, C2119 c2119) {
        AbstractC1220.m3771("Deferring native open session: ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        this.f12739.m6518(new C3312(str, j, c2119));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m7129() {
        C3311 c3311 = (C3311) this.f12738.get();
        return c3311 != null && c3311.m7129();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3309 m7130(String str) {
        C3311 c3311 = (C3311) this.f12738.get();
        return c3311 == null ? f12737 : c3311.m7130(str);
    }
}
