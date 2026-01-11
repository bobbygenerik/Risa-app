package p113;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver;
import com.google.android.gms.internal.play_billing.י;
import java.util.concurrent.TimeUnit;
import p262.C3437;
import p322.C3965;
import ᴵˋ.ˊʻ;
import ﹳי.ʽ;

/* renamed from: ˆﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1965 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʽ f7813;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f7814;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f7815 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3437 f7816;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final String f7812 = C3965.m8128("ForceStopRunnable");

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final long f7811 = TimeUnit.DAYS.toMillis(3650);

    public RunnableC1965(Context context, C3437 c3437) {
        this.f7814 = context.getApplicationContext();
        this.f7816 = c3437;
        this.f7813 = c3437.f13476;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m4952(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i);
        long currentTimeMillis = System.currentTimeMillis() + f7811;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f7814;
        String str = f7812;
        C3437 c3437 = this.f7816;
        try {
            if (!m4953()) {
                return;
            }
            while (true) {
                try {
                    י.ʼʼ(context);
                    C3965.m8127().m8133(str, "Performing cleanup operations.");
                    try {
                        m4954();
                        return;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteFullException | SQLiteTableLockedException e) {
                        int i = this.f7815 + 1;
                        this.f7815 = i;
                        if (i >= 3) {
                            String str2 = ˊʻ.ᴵˊ(context) ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                            C3965.m8127().m8130(str, str2, e);
                            IllegalStateException illegalStateException = new IllegalStateException(str2, e);
                            c3437.f13479.getClass();
                            throw illegalStateException;
                        }
                        C3965.m8127().m8132(str, "Retrying after " + (i * 300), e);
                        try {
                            Thread.sleep(this.f7815 * 300);
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (SQLiteException e2) {
                    C3965.m8127().m8129(str, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                    c3437.f13479.getClass();
                    throw illegalStateException2;
                }
            }
        } finally {
            c3437.m7351();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m4953() {
        this.f7816.f13479.getClass();
        boolean isEmpty = TextUtils.isEmpty(null);
        String str = f7812;
        if (isEmpty) {
            C3965.m8127().m8133(str, "The default process name was not specified.");
            return true;
        }
        boolean m4957 = AbstractC1971.m4957(this.f7814);
        C3965.m8127().m8133(str, "Is default app process = " + m4957);
        return m4957;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4954() {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p113.RunnableC1965.m4954():void");
    }
}
