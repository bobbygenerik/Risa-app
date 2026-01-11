package p409;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import p262.C3433;

/* renamed from: ﹳˊ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4857 extends BroadcastReceiver {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3433 f18201;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Context f18202;

    public C4857(C3433 c3433) {
        this.f18201 = c3433;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            Object obj = this.f18201.f13456;
            throw null;
        }
    }
}
