package p145;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import p255.C3356;

/* renamed from: ˉᵎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2408 extends BroadcastReceiver {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AtomicReference f9306 = new AtomicReference();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f9307;

    public C2408(Context context) {
        this.f9307 = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        synchronized (C2405.f9286) {
            try {
                Iterator it = ((C3356) C2405.f9287.values()).iterator();
                while (it.hasNext()) {
                    ((C2405) it.next()).m5510();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9307.unregisterReceiver(this);
    }
}
