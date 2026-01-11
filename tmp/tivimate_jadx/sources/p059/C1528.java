package p059;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import p152.AbstractC2444;
import p322.C3965;
import ᐧᵎ.ᵢי;

/* renamed from: ʾʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1528 extends AbstractC1522 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ConnectivityManager f6009;

    public C1528(Context context, ᵢי r2) {
        super(context, r2);
        this.f6009 = (ConnectivityManager) this.f6004.getSystemService("connectivity");
    }

    @Override // p059.AbstractC1522
    /* renamed from: ˑﹳ */
    public final IntentFilter mo4329() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // p059.AbstractC1524
    /* renamed from: ﹳٴ */
    public final Object mo4328() {
        return AbstractC1523.m4331(this.f6009);
    }

    @Override // p059.AbstractC1522
    /* renamed from: ﾞᴵ */
    public final void mo4330(Intent intent) {
        if (AbstractC2444.m5562(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            C3965.m8127().m8133(AbstractC1523.f6000, "Network broadcast received");
            m4332(AbstractC1523.m4331(this.f6009));
        }
    }
}
