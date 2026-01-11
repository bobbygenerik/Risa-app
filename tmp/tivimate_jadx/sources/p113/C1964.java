package p113;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.UUID;
import p240.C3231;
import p240.C3232;
import p262.C3417;
import p262.C3419;
import p322.C3965;
import p322.C3983;
import p329.InterfaceC4104;
import p352.C4302;
import ˉᵎ.ⁱˊ;
import ˑˊ.ﹳٴ;

/* renamed from: ˆﹶ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1964 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3983 f7807;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C1975 f7808;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Context f7809;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ UUID f7810;

    public /* synthetic */ C1964(C1975 c1975, UUID uuid, C3983 c3983, Context context) {
        this.f7808 = c1975;
        this.f7810 = uuid;
        this.f7807 = c3983;
        this.f7809 = context;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        C1975 c1975 = this.f7808;
        UUID uuid = this.f7810;
        C3983 c3983 = this.f7807;
        Context context = this.f7809;
        String uuid2 = uuid.toString();
        C3231 m7050 = c1975.f7831.m7050(uuid2);
        if (m7050 == null || m7050.f12340.m8126()) {
            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
        C3417 c3417 = (C3417) c1975.f7832;
        synchronized (c3417.f13417) {
            try {
                C3965.m8127().m8134(C3417.f13411, "Moving WorkSpec (" + uuid2 + ") to the foreground");
                C3419 c3419 = (C3419) c3417.f13418.remove(uuid2);
                if (c3419 != null) {
                    if (c3417.f13421 == null) {
                        PowerManager.WakeLock m4956 = AbstractC1968.m4956(c3417.f13420);
                        c3417.f13421 = m4956;
                        m4956.acquire();
                    }
                    c3417.f13422.put(uuid2, c3419);
                    Intent m8708 = C4302.m8708(c3417.f13420, ⁱˊ.ʼᐧ(c3419.f13434), c3983);
                    Context context2 = c3417.f13420;
                    if (Build.VERSION.SDK_INT >= 26) {
                        ﹳٴ.ˆʾ(context2, m8708);
                    } else {
                        context2.startService(m8708);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C3232 c3232 = ⁱˊ.ʼᐧ(m7050);
        String str = C4302.f15931;
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c3983.f15351);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3983.f15350);
        intent.putExtra("KEY_NOTIFICATION", c3983.f15349);
        intent.putExtra("KEY_WORKSPEC_ID", c3232.f12346);
        intent.putExtra("KEY_GENERATION", c3232.f12345);
        context.startService(intent);
        return null;
    }
}
