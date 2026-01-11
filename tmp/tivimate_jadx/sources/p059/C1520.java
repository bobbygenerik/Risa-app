package p059;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.C0334;
import p003.RunnableC0786;
import p152.AbstractC2444;
import p256.AbstractC3376;
import p279.C3556;
import p279.RunnableC3553;
import p305.C3729;
import p409.RunnableC4848;
import p425.C5038;
import p425.C5049;
import p447.AbstractC5321;
import p447.C5215;
import p447.C5322;
import p447.C5344;
import ʼﾞ.ᴵᵔ;

/* renamed from: ʾʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1520 extends BroadcastReceiver {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f5996;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5997;

    public /* synthetic */ C1520(int i, Object obj) {
        this.f5997 = i;
        this.f5996 = obj;
    }

    public /* synthetic */ C1520(int i, Object obj, boolean z) {
        this.f5997 = i;
        this.f5996 = obj;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f5997) {
            case 0:
                ((AbstractC1522) this.f5996).mo4330(intent);
                return;
            case 1:
                if (AbstractC2444.m5562(intent != null ? intent.getAction() : null, "android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                    String stringExtra = intent.getStringExtra("reason");
                    if (AbstractC2444.m5562(stringExtra, "homekey") || AbstractC2444.m5562(stringExtra, "recentapps")) {
                        ((ᴵᵔ) this.f5996).ʽ();
                        return;
                    }
                    return;
                }
                return;
            case 2:
                C3556.f13902.execute(new RunnableC3553((C3556) this.f5996, 2));
                return;
            case 3:
                ((C3729) this.f5996).f14523.execute(new RunnableC0786(this, 28, context));
                return;
            case 4:
                ((AbstractC3376) this.f5996).mo7251();
                return;
            case 5:
                if (isInitialStickyBroadcast()) {
                    return;
                }
                C5038 c5038 = (C5038) this.f5996;
                c5038.m9949(C5049.m9955(context, intent, c5038.f18942, c5038.f18948));
                return;
            default:
                C5322 c5322 = (C5322) this.f5996;
                if (intent == null) {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20348.m10217("App receiver called with null intent");
                    return;
                }
                String action = intent.getAction();
                if (action == null) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20348.m10217("App receiver called with null action");
                    return;
                }
                int hashCode = action.hashCode();
                if (hashCode != -1928239649) {
                    if (hashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                        C5344 c53443 = c5322.f20193;
                        C5322.m10556(c53443);
                        c53443.f20350.m10217("[sgtm] App Receiver notified batches are available");
                        C5215 c5215 = c5322.f20200;
                        C5322.m10556(c5215);
                        c5215.m10200(new RunnableC4848(8, this));
                        return;
                    }
                } else if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
                    C0334.m1580();
                    if (c5322.f20189.m10577(null, AbstractC5321.f20125)) {
                        C5344 c53444 = c5322.f20193;
                        C5322.m10556(c53444);
                        c53444.f20350.m10217("App receiver notified triggers are available");
                        C5215 c52152 = c5322.f20200;
                        C5322.m10556(c52152);
                        c52152.m10200(new RunnableC4848(9, c5322));
                        return;
                    }
                    return;
                }
                C5344 c53445 = c5322.f20193;
                C5322.m10556(c53445);
                c53445.f20348.m10217("App receiver called with unknown action");
                return;
        }
    }
}
