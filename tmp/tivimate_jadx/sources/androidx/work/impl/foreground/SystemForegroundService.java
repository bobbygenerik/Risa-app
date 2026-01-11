package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.lifecycle.AbstractServiceC0164;
import com.google.android.gms.internal.measurement.ᵎ;
import java.util.UUID;
import p035.ExecutorC1212;
import p179.RunnableC2689;
import p262.C3437;
import p322.C3965;
import p352.C4302;
import ʽˋ.ـˆ;

/* loaded from: classes.dex */
public class SystemForegroundService extends AbstractServiceC0164 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final String f1588 = C3965.m8128("SystemFgService");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4302 f1589;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public NotificationManager f1590;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f1591;

    @Override // androidx.lifecycle.AbstractServiceC0164, android.app.Service
    public final void onCreate() {
        super.onCreate();
        m1038();
    }

    @Override // androidx.lifecycle.AbstractServiceC0164, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f1589.m8709();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        boolean z = this.f1591;
        String str = f1588;
        if (z) {
            C3965.m8127().m8134(str, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f1589.m8709();
            m1038();
            this.f1591 = false;
        }
        if (intent == null) {
            return 3;
        }
        C4302 c4302 = this.f1589;
        c4302.getClass();
        String str2 = C4302.f15931;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            C3965.m8127().m8134(str2, "Started foreground service " + intent);
            c4302.f15938.ʼˎ(new RunnableC2689(c4302, 20, intent.getStringExtra("KEY_WORKSPEC_ID")));
            c4302.m8710(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            c4302.m8710(intent);
            return 3;
        }
        if ("ACTION_CANCEL_WORK".equals(action)) {
            C3965.m8127().m8134(str2, "Stopping foreground work for " + intent);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
                return 3;
            }
            C3437 c3437 = c4302.f15933;
            ᵎ.ᵔʾ(c3437.f13479.f15340, "CancelWorkById", (ExecutorC1212) c3437.f13485.ʾˋ, new ـˆ(c3437, 3, UUID.fromString(stringExtra)));
            return 3;
        }
        if (!"ACTION_STOP_FOREGROUND".equals(action)) {
            return 3;
        }
        C3965.m8127().m8134(str2, "Stopping foreground service");
        SystemForegroundService systemForegroundService = c4302.f15940;
        if (systemForegroundService == null) {
            return 3;
        }
        systemForegroundService.f1591 = true;
        C3965.m8127().m8133(str, "Shutting down.");
        if (Build.VERSION.SDK_INT >= 26) {
            systemForegroundService.stopForeground(true);
        }
        systemForegroundService.stopSelf();
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.f1589.m8711(2048);
    }

    public final void onTimeout(int i, int i2) {
        this.f1589.m8711(i2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m1038() {
        this.f1590 = (NotificationManager) getApplicationContext().getSystemService("notification");
        C4302 c4302 = new C4302(getApplicationContext());
        this.f1589 = c4302;
        if (c4302.f15940 != null) {
            C3965.m8127().m8129(C4302.f15931, "A callback already exists.");
        } else {
            c4302.f15940 = this;
        }
    }
}
