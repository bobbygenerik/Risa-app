package p447;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5251 extends AbstractC5308 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final String[] f19794 = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C5353 f19795;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f19796;

    public C5251(C5322 c5322) {
        super(c5322);
        this.f19795 = new C5353(this, ((C5322) ((ᵎﹶ) this).ʾˋ).f20184);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10362() {
        int delete;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        m10252();
        try {
            SQLiteDatabase m10365 = m10365();
            if (m10365 == null || (delete = m10365.delete("messages", null, null)) <= 0) {
                return;
            }
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10216(Integer.valueOf(delete), "Reset local analytics data. records");
        } catch (SQLiteException e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(e, "Error resetting local analytics data. error");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0120 A[Catch: all -> 0x0154, TRY_ENTER, TryCatch #10 {all -> 0x0154, blocks: (B:95:0x0088, B:97:0x008e, B:65:0x00ae, B:67:0x00cf, B:70:0x00d8, B:73:0x00de, B:74:0x00f8, B:42:0x0120, B:44:0x0126, B:45:0x0129, B:33:0x015b, B:21:0x0144), top: B:94:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0103  */
    /* renamed from: ˈـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10363(int r19, byte[] r20) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5251.m10363(int, byte[]):boolean");
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return false;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final boolean m10364() {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        m10252();
        if (!this.f19796 && c5322.f20184.getDatabasePath("google_app_measurement_local.db").exists()) {
            int i = 5;
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20348.m10217("Error deleting app launch break from local database in reasonable time");
                    break;
                }
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        SQLiteDatabase m10365 = m10365();
                        if (m10365 != null) {
                            m10365.beginTransaction();
                            m10365.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                            m10365.setTransactionSuccessful();
                            m10365.endTransaction();
                            m10365.close();
                            return true;
                        }
                        this.f19796 = true;
                    } catch (SQLiteException e) {
                        if (0 != 0) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        C5344 c53442 = c5322.f20193;
                        C5322.m10556(c53442);
                        c53442.f20343.m10216(e, "Error deleting app launch break from local database");
                        this.f19796 = true;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i);
                    i += 20;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e2) {
                    C5344 c53443 = c5322.f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10216(e2, "Error deleting app launch break from local database");
                    this.f19796 = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                }
                i2++;
            }
        }
        return false;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final SQLiteDatabase m10365() {
        if (this.f19796) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f19795.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f19796 = true;
        return null;
    }
}
