package p027;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.AbstractC0617;
import com.google.android.gms.internal.play_billing.C0627;
import com.google.android.gms.internal.play_billing.C0637;
import com.google.android.gms.internal.play_billing.EnumC0583;
import com.google.android.gms.internal.play_billing.י;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1097 extends BroadcastReceiver {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C1102 f4284;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f4285;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f4286;

    public C1097(C1102 c1102, boolean z) {
        this.f4284 = c1102;
        this.f4285 = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023b  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r19, android.content.Intent r20) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.C1097.onReceive(android.content.Context, android.content.Intent):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3481(Bundle bundle, C1115 c1115, int i, EnumC0583 enumC0583, long j, boolean z) {
        AbstractC0617 abstractC0617;
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") == null) {
                ((InterfaceC1087) this.f4284.f4300).ˉٴ(AbstractC1104.m3492(23, i, c1115, null, enumC0583), j, z);
                return;
            }
            ⁱי r4 = (InterfaceC1087) this.f4284.f4300;
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            int i2 = AbstractC0617.f2445;
            synchronized (AbstractC0617.class) {
                int i3 = AbstractC0617.f2445;
                C0637 c0637 = C0637.f2473;
                abstractC0617 = י.ٴʼ();
                int i4 = AbstractC0617.f2445;
            }
            r4.ˉٴ(C0627.m2239(byteArray, abstractC0617), j, z);
        } catch (Throwable unused) {
            AbstractC0542.m2097("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m3482(Context context, IntentFilter intentFilter) {
        C1097 c1097;
        try {
            try {
                if (this.f4286) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    c1097 = this;
                    context.registerReceiver(c1097, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != this.f4285 ? 4 : 2);
                } else {
                    c1097 = this;
                    context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                c1097.f4286 = true;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m3483(Context context, IntentFilter intentFilter) {
        try {
            if (this.f4286) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, true != this.f4285 ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.f4286 = true;
        } catch (Throwable th) {
            throw th;
        }
    }
}
