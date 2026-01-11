package p424;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.UUID;
import kotlin.NoWhenBranchMatchedException;
import p010.AbstractC0844;
import p012.AbstractC0905;
import p034.InterfaceC1195;
import p152.AbstractC2444;
import p201.C2913;
import ᐧﹳ.ʽ;

/* renamed from: ﹳﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5022 extends SQLiteOpenHelper {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f18778 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC0905 f18779;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f18780;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean f18781;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C2913 f18782;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f18783;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ʽ f18784;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f18785;

    public C5022(Context context, String str, final ʽ r9, final AbstractC0905 abstractC0905, boolean z) {
        super(context, str, null, abstractC0905.f3828, new DatabaseErrorHandler() { // from class: ﹳﾞ.ˈ
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                int i = C5022.f18778;
                ʽ r0 = r9;
                C5015 c5015 = (C5015) r0.ᴵˊ;
                if (c5015 == null || !AbstractC2444.m5562(c5015.f18763, sQLiteDatabase)) {
                    c5015 = new C5015(sQLiteDatabase);
                    r0.ᴵˊ = c5015;
                }
                AbstractC0905.this.mo3176(c5015);
            }
        });
        this.f18780 = context;
        this.f18784 = r9;
        this.f18779 = abstractC0905;
        this.f18781 = z;
        this.f18782 = new C2913(str == null ? UUID.randomUUID().toString() : str, context.getCacheDir(), false);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() {
        C2913 c2913 = this.f18782;
        try {
            c2913.m6441(c2913.f11005);
            super.close();
            this.f18784.ᴵˊ = null;
            this.f18783 = false;
        } finally {
            c2913.m6440();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        boolean z = this.f18785;
        AbstractC0905 abstractC0905 = this.f18779;
        if (!z && abstractC0905.f3828 != sQLiteDatabase.getVersion()) {
            sQLiteDatabase.setMaxSqlCacheSize(1);
        }
        try {
            abstractC0905.mo3175(m9892(sQLiteDatabase));
        } catch (Throwable th) {
            throw new C5017(1, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f18779.mo3173(m9892(sQLiteDatabase));
        } catch (Throwable th) {
            throw new C5017(2, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f18785 = true;
        try {
            this.f18779.mo3182(m9892(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new C5017(4, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (!this.f18785) {
            try {
                this.f18779.mo3184(m9892(sQLiteDatabase));
            } catch (Throwable th) {
                throw new C5017(5, th);
            }
        }
        this.f18783 = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f18785 = true;
        try {
            this.f18779.mo3178(m9892(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new C5017(3, th);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1195 m9890(boolean z) {
        C2913 c2913 = this.f18782;
        try {
            c2913.m6441((this.f18783 || getDatabaseName() == null) ? false : true);
            this.f18785 = false;
            SQLiteDatabase m9891 = m9891(z);
            if (!this.f18785) {
                C5015 m9892 = m9892(m9891);
                c2913.m6440();
                return m9892;
            }
            close();
            InterfaceC1195 m9890 = m9890(z);
            c2913.m6440();
            return m9890;
        } catch (Throwable th) {
            c2913.m6440();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v9, types: [android.database.sqlite.SQLiteDatabase] */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final SQLiteDatabase m9891(boolean z) {
        File parentFile;
        String databaseName = getDatabaseName();
        boolean z2 = this.f18783;
        Context context = this.f18780;
        if (databaseName != null && !z2 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                String str = "Invalid database parent file, not a directory: " + parentFile;
            }
        }
        try {
            return z != 0 ? getWritableDatabase() : getReadableDatabase();
        } catch (Throwable unused) {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                z = z != 0 ? getWritableDatabase() : getReadableDatabase();
                return z;
            } catch (Throwable th) {
                th = th;
                if (th instanceof C5017) {
                    C5017 c5017 = (C5017) th;
                    int m3018 = AbstractC0844.m3018(c5017.f18766);
                    th = c5017.f18767;
                    if (m3018 == 0 || m3018 == 1 || m3018 == 2 || m3018 == 3) {
                        throw th;
                    }
                    if (m3018 != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (!(th instanceof SQLiteException)) {
                        throw th;
                    }
                }
                if (!(th instanceof SQLiteException) || databaseName == null || !this.f18781) {
                    throw th;
                }
                context.deleteDatabase(databaseName);
                try {
                    return z != 0 ? getWritableDatabase() : getReadableDatabase();
                } catch (C5017 e) {
                    throw e.f18767;
                }
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C5015 m9892(SQLiteDatabase sQLiteDatabase) {
        ʽ r0 = this.f18784;
        C5015 c5015 = (C5015) r0.ᴵˊ;
        if (c5015 != null && AbstractC2444.m5562(c5015.f18763, sQLiteDatabase)) {
            return c5015;
        }
        C5015 c50152 = new C5015(sQLiteDatabase);
        r0.ᴵˊ = c50152;
        return c50152;
    }
}
