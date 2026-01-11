package p352;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p021.AbstractC1031;
import p033.C1182;
import p113.RunnableC1979;
import p240.C3231;
import p240.C3232;
import p262.C3432;
import p262.C3437;
import p262.InterfaceC3436;
import p322.C3965;
import p322.C3983;
import p324.InterfaceC4036;
import p396.AbstractC4737;
import p396.C4742;
import p396.InterfaceC4744;
import ˉᵎ.ⁱˊ;
import ᐧᵎ.ᵢי;

/* renamed from: ᵔʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4302 implements InterfaceC4744, InterfaceC3436 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final String f15931 = C3965.m8128("SystemFgDispatcher");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f15932 = new Object();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3437 f15933;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3232 f15934;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C1182 f15935;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final HashMap f15936;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final HashMap f15937;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ᵢי f15938;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final LinkedHashMap f15939;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public SystemForegroundService f15940;

    public C4302(Context context) {
        C3437 m7348 = C3437.m7348(context);
        this.f15933 = m7348;
        this.f15938 = m7348.f13485;
        this.f15934 = null;
        this.f15939 = new LinkedHashMap();
        this.f15937 = new HashMap();
        this.f15936 = new HashMap();
        this.f15935 = new C1182(m7348.f13484);
        m7348.f13483.m7309(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Intent m8708(Context context, C3232 c3232, C3983 c3983) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", c3232.f12346);
        intent.putExtra("KEY_GENERATION", c3232.f12345);
        intent.putExtra("KEY_NOTIFICATION_ID", c3983.f15351);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3983.f15350);
        intent.putExtra("KEY_NOTIFICATION", c3983.f15349);
        return intent;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8709() {
        this.f15940 = null;
        synchronized (this.f15932) {
            try {
                Iterator it = this.f15937.values().iterator();
                while (it.hasNext()) {
                    ((InterfaceC4036) it.next()).mo3899(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f15933.f13483.m7306(this);
    }

    @Override // p262.InterfaceC3436
    /* renamed from: ˈ */
    public final void mo1037(C3232 c3232, boolean z) {
        Map.Entry entry;
        synchronized (this.f15932) {
            try {
                InterfaceC4036 interfaceC4036 = ((C3231) this.f15936.remove(c3232)) != null ? (InterfaceC4036) this.f15937.remove(c3232) : null;
                if (interfaceC4036 != null) {
                    interfaceC4036.mo3899(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C3983 c3983 = (C3983) this.f15939.remove(c3232);
        if (c3232.equals(this.f15934)) {
            if (this.f15939.size() > 0) {
                Iterator it = this.f15939.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.f15934 = (C3232) entry.getKey();
                if (this.f15940 != null) {
                    C3983 c39832 = (C3983) entry.getValue();
                    SystemForegroundService systemForegroundService = this.f15940;
                    int i = c39832.f15351;
                    int i2 = c39832.f15350;
                    Notification notification = c39832.f15349;
                    systemForegroundService.getClass();
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 31) {
                        AbstractC1031.m3360(systemForegroundService, i, notification, i2);
                    } else if (i3 >= 29) {
                        AbstractC1031.m3364(systemForegroundService, i, notification, i2);
                    } else {
                        systemForegroundService.startForeground(i, notification);
                    }
                    this.f15940.f1590.cancel(c39832.f15351);
                }
            } else {
                this.f15934 = null;
            }
        }
        SystemForegroundService systemForegroundService2 = this.f15940;
        if (c3983 == null || systemForegroundService2 == null) {
            return;
        }
        C3965.m8127().m8133(f15931, "Removing Notification (id: " + c3983.f15351 + ", workSpecId: " + c3232 + ", notificationType: " + c3983.f15350);
        systemForegroundService2.f1590.cancel(c3983.f15351);
    }

    @Override // p396.InterfaceC4744
    /* renamed from: ˑﹳ */
    public final void mo7355(C3231 c3231, AbstractC4737 abstractC4737) {
        if (abstractC4737 instanceof C4742) {
            String str = c3231.f12341;
            C3965.m8127().m8133(f15931, "Constraints unmet for WorkSpec " + str);
            C3232 c3232 = ⁱˊ.ʼᐧ(c3231);
            int i = ((C4742) abstractC4737).f17901;
            C3437 c3437 = this.f15933;
            c3437.f13485.ʼˎ(new RunnableC1979(c3437.f13483, new C3432(c3232), true, i));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8710(Intent intent) {
        if (this.f15940 == null) {
            throw new IllegalStateException("handleNotify was called on the destroyed dispatcher");
        }
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        C3232 c3232 = new C3232(intent.getIntExtra("KEY_GENERATION", 0), stringExtra);
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        C3965.m8127().m8133(f15931, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null) {
            throw new IllegalArgumentException("Notification passed in the intent was null.");
        }
        C3983 c3983 = new C3983(intExtra, notification, intExtra2);
        LinkedHashMap linkedHashMap = this.f15939;
        linkedHashMap.put(c3232, c3983);
        C3983 c39832 = (C3983) linkedHashMap.get(this.f15934);
        if (c39832 == null) {
            this.f15934 = c3232;
        } else {
            this.f15940.f1590.notify(intExtra, notification);
            if (Build.VERSION.SDK_INT >= 29) {
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    i |= ((C3983) ((Map.Entry) it.next()).getValue()).f15350;
                }
                c3983 = new C3983(c39832.f15351, c39832.f15349, i);
            } else {
                c3983 = c39832;
            }
        }
        SystemForegroundService systemForegroundService = this.f15940;
        int i2 = c3983.f15351;
        int i3 = c3983.f15350;
        Notification notification2 = c3983.f15349;
        systemForegroundService.getClass();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 31) {
            AbstractC1031.m3360(systemForegroundService, i2, notification2, i3);
        } else if (i4 >= 29) {
            AbstractC1031.m3364(systemForegroundService, i2, notification2, i3);
        } else {
            systemForegroundService.startForeground(i2, notification2);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8711(int i) {
        C3965.m8127().m8134(f15931, "Foreground service timed out, FGS type: " + i);
        for (Map.Entry entry : this.f15939.entrySet()) {
            if (((C3983) entry.getValue()).f15350 == i) {
                C3232 c3232 = (C3232) entry.getKey();
                C3437 c3437 = this.f15933;
                c3437.f13485.ʼˎ(new RunnableC1979(c3437.f13483, new C3432(c3232), true, -128));
            }
        }
        SystemForegroundService systemForegroundService = this.f15940;
        if (systemForegroundService != null) {
            systemForegroundService.f1591 = true;
            C3965.m8127().m8133(SystemForegroundService.f1588, "Shutting down.");
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf();
        }
    }
}
