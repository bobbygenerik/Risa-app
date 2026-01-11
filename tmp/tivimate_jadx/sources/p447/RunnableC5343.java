package p447;

import android.os.Bundle;
import java.util.Iterator;
import java.util.TreeSet;
import p296.AbstractC3659;
import p384.C4603;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ⁱᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5343 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f20336;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20337;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f20338;

    public /* synthetic */ RunnableC5343(C5253 c5253, Bundle bundle, int i) {
        this.f20337 = i;
        this.f20338 = bundle;
        this.f20336 = c5253;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        switch (this.f20337) {
            case 0:
                C5253 c5253 = this.f20336;
                c5253.m10252();
                c5253.m10526();
                Bundle bundle2 = this.f20338;
                String string = bundle2.getString("name");
                String string2 = bundle2.getString("origin");
                AbstractC3659.m7680(string);
                AbstractC3659.m7680(string2);
                AbstractC3659.m7687(bundle2.get("value"));
                C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
                if (!c5322.m10568()) {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20350.m10217("Conditional property not set since app measurement is disabled");
                    return;
                }
                C5241 c5241 = new C5241(bundle2.getLong("triggered_timestamp"), bundle2.get("value"), string, string2);
                try {
                    C5339 c5339 = c5322.f20208;
                    C5322.m10560(c5339);
                    bundle2.getString("app_id");
                    C5279 m10674 = c5339.m10674(bundle2.getString("triggered_event_name"), bundle2.getBundle("triggered_event_params"), string2, 0L, true);
                    C5322.m10560(c5339);
                    bundle2.getString("app_id");
                    C5279 m106742 = c5339.m10674(bundle2.getString("timed_out_event_name"), bundle2.getBundle("timed_out_event_params"), string2, 0L, true);
                    bundle2.getString("app_id");
                    c5322.m10569().m10295(new C5287(bundle2.getString("app_id"), string2, c5241, bundle2.getLong("creation_timestamp"), false, bundle2.getString("trigger_event_name"), m106742, bundle2.getLong("trigger_timeout"), m10674, bundle2.getLong("time_to_live"), c5339.m10674(bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), string2, 0L, true)));
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            case 1:
                C5253 c52532 = this.f20336;
                c52532.m10252();
                c52532.m10526();
                Bundle bundle3 = this.f20338;
                String string3 = bundle3.getString("name");
                AbstractC3659.m7680(string3);
                C5322 c53222 = (C5322) ((ᵎﹶ) c52532).ʾˋ;
                if (!c53222.m10568()) {
                    C5344 c53442 = c53222.f20193;
                    C5322.m10556(c53442);
                    c53442.f20350.m10217("Conditional property not cleared since app measurement is disabled");
                    return;
                } else {
                    C5241 c52412 = new C5241(0L, null, string3, "");
                    try {
                        C5339 c53392 = c53222.f20208;
                        C5322.m10560(c53392);
                        bundle3.getString("app_id");
                        c53222.m10569().m10295(new C5287(bundle3.getString("app_id"), "", c52412, bundle3.getLong("creation_timestamp"), bundle3.getBoolean("active"), bundle3.getString("trigger_event_name"), null, bundle3.getLong("trigger_timeout"), null, bundle3.getLong("time_to_live"), c53392.m10674(bundle3.getString("expired_event_name"), bundle3.getBundle("expired_event_params"), "", bundle3.getLong("creation_timestamp"), true)));
                        return;
                    } catch (IllegalArgumentException unused2) {
                        return;
                    }
                }
            default:
                C5253 c52533 = this.f20336;
                C4603 c4603 = c52533.f19813;
                C5322 c53223 = (C5322) ((ᵎﹶ) c52533).ʾˋ;
                Bundle bundle4 = this.f20338;
                if (bundle4.isEmpty()) {
                    bundle = bundle4;
                } else {
                    C5313 c5313 = c53223.f20205;
                    C5339 c53393 = c53223.f20208;
                    C5327 c5327 = c53223.f20189;
                    C5344 c53443 = c53223.f20193;
                    C5322.m10560(c5313);
                    bundle = new Bundle(c5313.f20023.ʼᐧ());
                    for (String str : bundle4.keySet()) {
                        Object obj = bundle4.get(str);
                        if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                            C5322.m10560(c53393);
                            if (C5339.m10659(obj)) {
                                C5339.m10668(c4603, null, 27, null, null, 0);
                            }
                            C5322.m10556(c53443);
                            c53443.f20347.m10214(str, obj, "Invalid default event parameter type. Name, value");
                        } else if (C5339.m10669(str)) {
                            C5322.m10556(c53443);
                            c53443.f20347.m10216(str, "Invalid default event parameter name. Name");
                        } else if (obj == null) {
                            bundle.remove(str);
                        } else {
                            C5322.m10560(c53393);
                            c5327.getClass();
                            if (c53393.m10690("param", str, 500, obj)) {
                                c53393.m10707(bundle, str, obj);
                            }
                        }
                    }
                    C5322.m10560(c53393);
                    C5339 c53394 = ((C5322) ((ᵎﹶ) c5327).ʾˋ).f20208;
                    C5322.m10560(c53394);
                    int i = c53394.m10683(201500000) ? 100 : 25;
                    if (bundle.size() > i) {
                        Iterator it = new TreeSet(bundle.keySet()).iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            i2++;
                            if (i2 > i) {
                                bundle.remove(str2);
                            }
                        }
                        C5322.m10560(c53393);
                        C5339.m10668(c4603, null, 26, null, null, 0);
                        C5322.m10556(c53443);
                        c53443.f20347.m10217("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                }
                C5313 c53132 = c53223.f20205;
                C5322.m10560(c53132);
                c53132.f20023.ᵔﹳ(bundle);
                if (!bundle4.isEmpty() || c53223.f20189.m10577(null, AbstractC5321.f20170)) {
                    c53223.m10569().m10301(bundle);
                    return;
                }
                return;
        }
    }
}
