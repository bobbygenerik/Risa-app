package p059;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p322.C3965;
import ᐧᵎ.ᵢי;

/* renamed from: ʾʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1522 extends AbstractC1524 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1520 f5999;

    public AbstractC1522(Context context, ᵢי r2) {
        super(context, r2);
        this.f5999 = new C1520(0, this);
    }

    @Override // p059.AbstractC1524
    /* renamed from: ʽ */
    public final void mo4326() {
        C3965.m8127().m8133(AbstractC1529.f6010, getClass().getSimpleName().concat(": registering receiver"));
        this.f6004.registerReceiver(this.f5999, mo4329());
    }

    @Override // p059.AbstractC1524
    /* renamed from: ˈ */
    public final void mo4327() {
        C3965.m8127().m8133(AbstractC1529.f6010, getClass().getSimpleName().concat(": unregistering receiver"));
        this.f6004.unregisterReceiver(this.f5999);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract IntentFilter mo4329();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract void mo4330(Intent intent);
}
