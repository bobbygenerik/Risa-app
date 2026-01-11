package p252;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import p007.InterfaceC0836;
import p070.C1629;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p093.EnumC1853;
import p122.C2119;
import p139.C2356;
import p359.C4358;
import p359.C4360;
import p359.InterfaceC4357;
import p359.InterfaceC4363;
import p419.InterfaceC4934;

/* renamed from: יˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3312 implements InterfaceC1651, InterfaceC0836, InterfaceC4363 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f12740;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ long f12741;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f12742;

    public /* synthetic */ C3312(long j, Object obj, Object obj2) {
        this.f12742 = obj;
        this.f12740 = obj2;
        this.f12741 = j;
    }

    public /* synthetic */ C3312(String str, long j, C2119 c2119) {
        this.f12742 = str;
        this.f12741 = j;
        this.f12740 = c2119;
    }

    @Override // p359.InterfaceC4363
    public Object apply(Object obj) {
        String str = (String) this.f12742;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i = ((EnumC1853) this.f12740).f7455;
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
        try {
            boolean z = rawQuery.getCount() > 0;
            rawQuery.close();
            long j = this.f12741;
            if (z) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    @Override // p007.InterfaceC0836
    /* renamed from: ʽ */
    public Object mo2817() {
        C1629 c1629 = (C1629) this.f12742;
        C2356 c2356 = (C2356) this.f12740;
        InterfaceC4357 interfaceC4357 = (InterfaceC4357) c1629.f6482;
        long mo9045 = ((InterfaceC4934) c1629.f6485).mo9045() + this.f12741;
        C4360 c4360 = (C4360) interfaceC4357;
        c4360.getClass();
        c4360.m8835(new C4358(mo9045, c2356));
        return null;
    }

    @Override // p074.InterfaceC1651
    /* renamed from: ˆʾ */
    public void mo2818(InterfaceC1650 interfaceC1650) {
        ((C3311) interfaceC1650.get()).m7128((String) this.f12742, this.f12741, (C2119) this.f12740);
    }
}
