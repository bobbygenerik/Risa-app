package p296;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.HandlerC0337;
import p307.AbstractC3740;
import p319.C3936;

/* renamed from: ٴﾞ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class HandlerC3677 extends HandlerC0337 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3675 f14395;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3677(AbstractC3675 abstractC3675, Looper looper) {
        super(looper, 2);
        this.f14395 = abstractC3675;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Boolean bool;
        if (this.f14395.f14384.get() != message.arg1) {
            int i = message.what;
            if (i == 2 || i == 1 || i == 7) {
                AbstractC3662 abstractC3662 = (AbstractC3662) message.obj;
                abstractC3662.getClass();
                abstractC3662.m7689();
                return;
            }
            return;
        }
        int i2 = message.what;
        if ((i2 == 1 || i2 == 7 || i2 == 4 || i2 == 5) && !this.f14395.m7708()) {
            AbstractC3662 abstractC36622 = (AbstractC3662) message.obj;
            abstractC36622.getClass();
            abstractC36622.m7689();
            return;
        }
        int i3 = message.what;
        if (i3 == 4) {
            AbstractC3675 abstractC3675 = this.f14395;
            abstractC3675.f14381 = new C3936(message.arg2);
            if (!abstractC3675.f14376 && !TextUtils.isEmpty(abstractC3675.mo4839()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(abstractC3675.mo4839());
                    AbstractC3675 abstractC36752 = this.f14395;
                    if (!abstractC36752.f14376) {
                        abstractC36752.m7705(3, null);
                        return;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            AbstractC3675 abstractC36753 = this.f14395;
            C3936 c3936 = abstractC36753.f14381;
            if (c3936 == null) {
                c3936 = new C3936(8);
            }
            abstractC36753.f14377.mo3487(c3936);
            System.currentTimeMillis();
            return;
        }
        if (i3 == 5) {
            AbstractC3675 abstractC36754 = this.f14395;
            C3936 c39362 = abstractC36754.f14381;
            if (c39362 == null) {
                c39362 = new C3936(8);
            }
            abstractC36754.f14377.mo3487(c39362);
            System.currentTimeMillis();
            return;
        }
        if (i3 == 3) {
            Object obj = message.obj;
            this.f14395.f14377.mo3487(new C3936(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null));
            System.currentTimeMillis();
            return;
        }
        if (i3 == 6) {
            this.f14395.m7705(5, null);
            InterfaceC3687 interfaceC3687 = this.f14395.f14380;
            if (interfaceC3687 != null) {
                interfaceC3687.mo7725(message.arg2);
            }
            System.currentTimeMillis();
            AbstractC3675.m7701(this.f14395, 5, 1, null);
            return;
        }
        if (i3 == 2 && !this.f14395.m7713()) {
            AbstractC3662 abstractC36623 = (AbstractC3662) message.obj;
            abstractC36623.getClass();
            abstractC36623.m7689();
            return;
        }
        int i4 = message.what;
        if (i4 != 2 && i4 != 1 && i4 != 7) {
            AbstractC3740.m7932(i4, "Don't know how to handle message: ");
            new Exception();
            return;
        }
        AbstractC3662 abstractC36624 = (AbstractC3662) message.obj;
        synchronized (abstractC36624) {
            try {
                bool = abstractC36624.f14340;
                if (abstractC36624.f14339) {
                    String str = "Callback proxy " + abstractC36624.toString() + " being reused. This is not safe.";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            AbstractC3675 abstractC36755 = abstractC36624.f14341;
            int i5 = abstractC36624.f14337;
            if (i5 != 0) {
                abstractC36755.m7705(1, null);
                Bundle bundle = abstractC36624.f14338;
                abstractC36624.mo7691(new C3936(i5, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
            } else if (!abstractC36624.mo7690()) {
                abstractC36755.m7705(1, null);
                abstractC36624.mo7691(new C3936(8, null));
            }
        }
        synchronized (abstractC36624) {
            abstractC36624.f14339 = true;
        }
        abstractC36624.m7689();
    }
}
