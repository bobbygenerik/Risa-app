package p221;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p003.RunnableC0786;
import p007.InterfaceC0836;
import p070.C1629;
import p093.EnumC1853;
import p139.C2356;
import p240.C3214;
import p262.C3417;
import p286.AbstractC3586;
import p359.C4358;
import p359.C4360;
import p359.InterfaceC4357;
import p419.InterfaceC4934;
import ˊⁱ.ˑﹳ;

/* renamed from: ˏᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3039 implements InterfaceC3045, InterfaceC0836 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ long f11564;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11565;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f11566;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f11567;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f11568;

    public /* synthetic */ C3039(C1629 c1629, Iterable iterable, C2356 c2356, long j) {
        this.f11565 = 2;
        this.f11567 = c1629;
        this.f11568 = iterable;
        this.f11566 = c2356;
        this.f11564 = j;
    }

    public /* synthetic */ C3039(ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044, Object obj, long j, TimeUnit timeUnit, int i) {
        this.f11565 = i;
        this.f11567 = scheduledExecutorServiceC3044;
        this.f11568 = obj;
        this.f11564 = j;
        this.f11566 = timeUnit;
    }

    @Override // p007.InterfaceC0836
    /* renamed from: ʽ */
    public Object mo2817() {
        C1629 c1629 = (C1629) this.f11567;
        Iterable iterable = (Iterable) this.f11568;
        C2356 c2356 = (C2356) this.f11566;
        C4360 c4360 = (C4360) ((InterfaceC4357) c1629.f6482);
        c4360.getClass();
        if (iterable.iterator().hasNext()) {
            String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + C4360.m8830(iterable);
            SQLiteDatabase m8833 = c4360.m8833();
            m8833.beginTransaction();
            try {
                m8833.compileStatement(str).execute();
                Cursor rawQuery = m8833.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (rawQuery.moveToNext()) {
                    try {
                        c4360.m8836(rawQuery.getInt(0), EnumC1853.f7450, rawQuery.getString(1));
                    } catch (Throwable th) {
                        rawQuery.close();
                        throw th;
                    }
                }
                rawQuery.close();
                m8833.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                m8833.setTransactionSuccessful();
            } finally {
                m8833.endTransaction();
            }
        }
        c4360.m8835(new C4358(((InterfaceC4934) c1629.f6485).mo9045() + this.f11564, c2356));
        return null;
    }

    @Override // p221.InterfaceC3045
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ScheduledFuture mo6580(final ˑﹳ r7) {
        switch (this.f11565) {
            case 0:
                ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044 = (ScheduledExecutorServiceC3044) this.f11567;
                Runnable runnable = (Runnable) this.f11568;
                return scheduledExecutorServiceC3044.f11589.schedule(new RunnableC3042(scheduledExecutorServiceC3044, runnable, r7, 1), this.f11564, (TimeUnit) this.f11566);
            default:
                final ScheduledExecutorServiceC3044 scheduledExecutorServiceC30442 = (ScheduledExecutorServiceC3044) this.f11567;
                final Callable callable = (Callable) this.f11568;
                final int i = 0;
                return scheduledExecutorServiceC30442.f11589.schedule(new Callable() { // from class: ˏᐧ.ﾞᴵ
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        switch (i) {
                            case 0:
                                return ((ScheduledExecutorServiceC3044) scheduledExecutorServiceC30442).f11588.submit(new RunnableC0786((Callable) callable, 19, (ˑﹳ) r7));
                            default:
                                C3417 c3417 = (C3417) scheduledExecutorServiceC30442;
                                ArrayList arrayList = (ArrayList) callable;
                                String str = (String) r7;
                                WorkDatabase workDatabase = c3417.f13416;
                                arrayList.addAll((List) AbstractC3586.m7538(workDatabase.mo1024().f12312, true, false, new C3214(17, str)));
                                return workDatabase.mo1026().m7050(str);
                        }
                    }
                }, this.f11564, (TimeUnit) this.f11566);
        }
    }
}
