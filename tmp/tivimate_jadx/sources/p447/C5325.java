package p447;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p296.AbstractC3659;
import p409.RunnableC4848;

/* renamed from: ﹶﾞ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5325 extends BroadcastReceiver {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f20219;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f20220;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5337 f20221;

    public C5325(C5337 c5337) {
        AbstractC3659.m7687(c5337);
        this.f20221 = c5337;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C5337 c5337 = this.f20221;
        c5337.m10600();
        String action = intent.getAction();
        c5337.mo10494().f20350.m10216(action, "NetworkBroadcastReceiver received action");
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            c5337.mo10494().f20348.m10216(action, "NetworkBroadcastReceiver received unknown action");
            return;
        }
        C5239 c5239 = c5337.f20299;
        C5337.m10599(c5239);
        boolean m10287 = c5239.m10287();
        if (this.f20219 != m10287) {
            this.f20219 = m10287;
            c5337.mo10495().m10200(new RunnableC4848(this, m10287));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10570() {
        C5337 c5337 = this.f20221;
        c5337.m10600();
        c5337.mo10495().m10203();
        c5337.mo10495().m10203();
        if (this.f20220) {
            c5337.mo10494().f20350.m10217("Unregistering connectivity change receiver");
            this.f20220 = false;
            this.f20219 = false;
            try {
                c5337.f20305.f20184.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                c5337.mo10494().f20343.m10216(e, "Failed to unregister the network broadcast receiver");
            }
        }
    }
}
