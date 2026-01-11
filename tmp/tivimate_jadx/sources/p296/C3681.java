package p296;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import p237.C3202;
import p331.C4190;
import p331.C4196;

/* renamed from: ٴﾞ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3681 implements Handler.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14406;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f14407;

    public /* synthetic */ C3681(int i, Object obj) {
        this.f14406 = i;
        this.f14407 = obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final boolean m7717(Message message) {
        if (message.what != 0) {
            return false;
        }
        C3202 c3202 = (C3202) this.f14407;
        if (message.obj != null) {
            throw new ClassCastException();
        }
        synchronized (c3202.f12254) {
            throw null;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f14406) {
            case 0:
                int i = message.what;
                if (i == 0) {
                    synchronized (((C3673) this.f14407).f14368) {
                        try {
                            C3664 c3664 = (C3664) message.obj;
                            ServiceConnectionC3669 serviceConnectionC3669 = (ServiceConnectionC3669) ((C3673) this.f14407).f14368.get(c3664);
                            if (serviceConnectionC3669 != null && serviceConnectionC3669.f14350.isEmpty()) {
                                if (serviceConnectionC3669.f14349) {
                                    serviceConnectionC3669.f14353.f14364.removeMessages(1, serviceConnectionC3669.f14355);
                                    C3673 c3673 = serviceConnectionC3669.f14353;
                                    c3673.f14365.m6620(c3673.f14367, serviceConnectionC3669);
                                    serviceConnectionC3669.f14349 = false;
                                    serviceConnectionC3669.f14354 = 2;
                                }
                                ((C3673) this.f14407).f14368.remove(c3664);
                            }
                        } finally {
                        }
                    }
                } else {
                    if (i != 1) {
                        return false;
                    }
                    synchronized (((C3673) this.f14407).f14368) {
                        try {
                            C3664 c36642 = (C3664) message.obj;
                            ServiceConnectionC3669 serviceConnectionC36692 = (ServiceConnectionC3669) ((C3673) this.f14407).f14368.get(c36642);
                            if (serviceConnectionC36692 != null && serviceConnectionC36692.f14354 == 3) {
                                "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(c36642));
                                new Exception();
                                ComponentName componentName = serviceConnectionC36692.f14352;
                                if (componentName == null) {
                                    c36642.getClass();
                                    componentName = null;
                                }
                                if (componentName == null) {
                                    String str = c36642.f14344;
                                    AbstractC3659.m7687(str);
                                    componentName = new ComponentName(str, "unknown");
                                }
                                serviceConnectionC36692.onServiceDisconnected(componentName);
                            }
                        } finally {
                        }
                    }
                }
                return true;
            case 1:
                return m7717(message);
            default:
                C4196 c4196 = (C4196) this.f14407;
                int i2 = message.what;
                if (i2 == 1) {
                    c4196.m8586((C4190) message.obj);
                    return true;
                }
                if (i2 == 2) {
                    c4196.f15627.m1166((C4190) message.obj);
                }
                return false;
        }
    }
}
