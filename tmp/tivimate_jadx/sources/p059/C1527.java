package p059;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p322.C3965;
import ᐧᵎ.ᵢי;

/* renamed from: ʾʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1527 extends AbstractC1522 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ int f6008;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1527(Context context, ᵢי r2, int i) {
        super(context, r2);
        this.f6008 = i;
    }

    @Override // p059.AbstractC1522
    /* renamed from: ˑﹳ */
    public final IntentFilter mo4329() {
        switch (this.f6008) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.CHARGING");
                intentFilter.addAction("android.os.action.DISCHARGING");
                return intentFilter;
            case 1:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.BATTERY_OKAY");
                intentFilter2.addAction("android.intent.action.BATTERY_LOW");
                return intentFilter2;
            default:
                IntentFilter intentFilter3 = new IntentFilter();
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_OK");
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_LOW");
                return intentFilter3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r0.equals("android.intent.action.DEVICE_STORAGE_OK") == false) goto L20;
     */
    @Override // p059.AbstractC1524
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4328() {
        /*
            r5 = this;
            int r0 = r5.f6008
            switch(r0) {
                case 0: goto L8a;
                case 1: goto L45;
                default: goto L5;
            }
        L5:
            r0 = 0
            android.content.IntentFilter r1 = r5.mo4329()
            android.content.Context r2 = r5.f6004
            android.content.Intent r0 = r2.registerReceiver(r0, r1)
            r1 = 1
            if (r0 == 0) goto L40
            java.lang.String r2 = r0.getAction()
            if (r2 != 0) goto L1a
            goto L40
        L1a:
            java.lang.String r0 = r0.getAction()
            r2 = 0
            if (r0 == 0) goto L3f
            int r3 = r0.hashCode()
            r4 = -1181163412(0xffffffffb998e06c, float:-2.9158907E-4)
            if (r3 == r4) goto L39
            r4 = -730838620(0xffffffffd47049a4, float:-4.1281105E12)
            if (r3 == r4) goto L30
            goto L3f
        L30:
            java.lang.String r3 = "android.intent.action.DEVICE_STORAGE_OK"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L40
            goto L3f
        L39:
            java.lang.String r1 = "android.intent.action.DEVICE_STORAGE_LOW"
            boolean r0 = r0.equals(r1)
        L3f:
            r1 = r2
        L40:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            return r0
        L45:
            android.content.IntentFilter r0 = new android.content.IntentFilter
            java.lang.String r1 = "android.intent.action.BATTERY_CHANGED"
            r0.<init>(r1)
            android.content.Context r1 = r5.f6004
            r2 = 0
            android.content.Intent r0 = r1.registerReceiver(r2, r0)
            if (r0 != 0) goto L63
            ᴵˋ.ˏי r0 = p322.C3965.m8127()
            java.lang.String r1 = p059.AbstractC1518.f5993
            java.lang.String r2 = "getInitialState - null intent received"
            r0.m8129(r1, r2)
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            goto L89
        L63:
            java.lang.String r1 = "status"
            r2 = -1
            int r1 = r0.getIntExtra(r1, r2)
            java.lang.String r3 = "level"
            int r3 = r0.getIntExtra(r3, r2)
            java.lang.String r4 = "scale"
            int r0 = r0.getIntExtra(r4, r2)
            float r2 = (float) r3
            float r0 = (float) r0
            float r2 = r2 / r0
            r0 = 1
            if (r1 == r0) goto L85
            r1 = 1041865114(0x3e19999a, float:0.15)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 <= 0) goto L84
            goto L85
        L84:
            r0 = 0
        L85:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
        L89:
            return r0
        L8a:
            android.content.IntentFilter r0 = new android.content.IntentFilter
            java.lang.String r1 = "android.intent.action.BATTERY_CHANGED"
            r0.<init>(r1)
            android.content.Context r1 = r5.f6004
            r2 = 0
            android.content.Intent r0 = r1.registerReceiver(r2, r0)
            if (r0 != 0) goto La8
            ᴵˋ.ˏי r0 = p322.C3965.m8127()
            java.lang.String r1 = p059.AbstractC1526.f6007
            java.lang.String r2 = "getInitialState - null intent received"
            r0.m8129(r1, r2)
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            goto Lbd
        La8:
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r1 = 2
            if (r0 == r1) goto Lb8
            r1 = 5
            if (r0 != r1) goto Lb6
            goto Lb8
        Lb6:
            r0 = 0
            goto Lb9
        Lb8:
            r0 = 1
        Lb9:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
        Lbd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p059.C1527.mo4328():java.lang.Object");
    }

    @Override // p059.AbstractC1522
    /* renamed from: ﾞᴵ */
    public final void mo4330(Intent intent) {
        switch (this.f6008) {
            case 0:
                String action = intent.getAction();
                if (action == null) {
                    return;
                }
                C3965.m8127().m8133(AbstractC1526.f6007, "Received ".concat(action));
                switch (action.hashCode()) {
                    case -1886648615:
                        if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                            m4332(Boolean.FALSE);
                            return;
                        }
                        return;
                    case -54942926:
                        if (action.equals("android.os.action.DISCHARGING")) {
                            m4332(Boolean.FALSE);
                            return;
                        }
                        return;
                    case 948344062:
                        if (action.equals("android.os.action.CHARGING")) {
                            m4332(Boolean.TRUE);
                            return;
                        }
                        return;
                    case 1019184907:
                        if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                            m4332(Boolean.TRUE);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            case 1:
                if (intent.getAction() == null) {
                    return;
                }
                C3965.m8127().m8133(AbstractC1518.f5993, "Received " + intent.getAction());
                String action2 = intent.getAction();
                if (action2 != null) {
                    int hashCode = action2.hashCode();
                    if (hashCode == -1980154005) {
                        if (action2.equals("android.intent.action.BATTERY_OKAY")) {
                            m4332(Boolean.TRUE);
                            return;
                        }
                        return;
                    } else {
                        if (hashCode == 490310653 && action2.equals("android.intent.action.BATTERY_LOW")) {
                            m4332(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                }
                return;
            default:
                if (intent.getAction() == null) {
                    return;
                }
                C3965.m8127().m8133(AbstractC1521.f5998, "Received " + intent.getAction());
                String action3 = intent.getAction();
                if (action3 != null) {
                    int hashCode2 = action3.hashCode();
                    if (hashCode2 == -1181163412) {
                        if (action3.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                            m4332(Boolean.FALSE);
                            return;
                        }
                        return;
                    } else {
                        if (hashCode2 == -730838620 && action3.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                            m4332(Boolean.TRUE);
                            return;
                        }
                        return;
                    }
                }
                return;
        }
    }
}
