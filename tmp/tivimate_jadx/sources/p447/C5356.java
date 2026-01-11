package p447;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.C0441;
import j$.util.concurrent.ConcurrentHashMap;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﾞˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5356 extends AbstractC5308 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile C5351 f20383;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public volatile C5351 f20384;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public volatile boolean f20385;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ConcurrentHashMap f20386;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C5351 f20387;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C0441 f20388;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C5351 f20389;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f20390;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public volatile C5351 f20391;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final Object f20392;

    public C5356(C5322 c5322) {
        super(c5322);
        this.f20392 = new Object();
        this.f20386 = new ConcurrentHashMap();
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10739(C5351 c5351, boolean z, long j) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5298 c5298 = c5322.f20210;
        C5322.m10558(c5298);
        c5322.f20206.getClass();
        c5298.m10499(SystemClock.elapsedRealtime());
        boolean z2 = c5351 != null && c5351.f20368;
        C5256 c5256 = c5322.f20192;
        C5322.m10559(c5256);
        if (!c5256.f19833.m2914(j, z2, z) || c5351 == null) {
            return;
        }
        c5351.f20368 = false;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final String m10740(String str) {
        if (str == null) {
            return "Activity";
        }
        String[] split = str.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        int length2 = str2.length();
        c5322.f20189.getClass();
        if (length2 <= 500) {
            return str2;
        }
        c5322.f20189.getClass();
        return str2.substring(0, 500);
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return false;
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m10741(C0441 c0441, Bundle bundle) {
        Bundle bundle2;
        if (!((C5322) ((ᵎﹶ) this).ʾˋ).f20189.m10583() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f20386.put(Integer.valueOf(c0441.f2187), new C5351(bundle2.getLong("id"), bundle2.getString("name"), bundle2.getString("referrer_name")));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* renamed from: ˎˉ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10742(p447.C5351 r18, p447.C5351 r19, long r20, boolean r22, android.os.Bundle r23) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5356.m10742(ﹶﾞ.ﹶʽ, ﹶﾞ.ﹶʽ, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10743(String str, C5351 c5351, boolean z) {
        C5351 c53512;
        C5351 c53513 = this.f20383 == null ? this.f20384 : this.f20383;
        if (c5351.f20370 == null) {
            c53512 = new C5351(c5351.f20371, str != null ? m10740(str) : null, c5351.f20367, c5351.f20369, c5351.f20372);
        } else {
            c53512 = c5351;
        }
        this.f20384 = this.f20383;
        this.f20383 = c53512;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        c5322.f20206.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5332(this, c53512, c53513, elapsedRealtime, z));
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final C5351 m10744(C0441 c0441) {
        AbstractC3659.m7687(c0441);
        Integer valueOf = Integer.valueOf(c0441.f2187);
        ConcurrentHashMap concurrentHashMap = this.f20386;
        C5351 c5351 = (C5351) concurrentHashMap.get(valueOf);
        if (c5351 == null) {
            String m10740 = m10740(c0441.f2188);
            C5339 c5339 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20208;
            C5322.m10560(c5339);
            C5351 c53512 = new C5351(c5339.m10699(), null, m10740);
            concurrentHashMap.put(valueOf, c53512);
            c5351 = c53512;
        }
        return this.f20391 != null ? this.f20391 : c5351;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final C5351 m10745(boolean z) {
        m10526();
        m10252();
        if (!z) {
            return this.f20389;
        }
        C5351 c5351 = this.f20389;
        return c5351 != null ? c5351 : this.f20387;
    }
}
