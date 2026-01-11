package p424;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.text.TextUtils;
import java.lang.reflect.Method;
import p012.C0902;
import p034.InterfaceC1195;
import p034.InterfaceC1196;
import ˈˆ.ﾞᴵ;
import ᵔʻ.ٴʼ;

/* renamed from: ﹳﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5015 implements InterfaceC1195 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final SQLiteDatabase f18763;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final String[] f18761 = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final String[] f18759 = new String[0];

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Object f18760 = ﾞᴵ.ˉٴ(3, new ٴʼ(17));

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Object f18762 = ﾞᴵ.ˉٴ(3, new ٴʼ(18));

    public C5015(SQLiteDatabase sQLiteDatabase) {
        this.f18763 = sQLiteDatabase;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f18763.close();
    }

    @Override // p034.InterfaceC1195
    public final boolean isOpen() {
        return this.f18763.isOpen();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ʼˎ */
    public final void mo3708() {
        this.f18763.endTransaction();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ʽʽ */
    public final Cursor mo3709(InterfaceC1196 interfaceC1196) {
        final C5021 c5021 = new C5021(interfaceC1196);
        return this.f18763.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: ﹳﾞ.ⁱˊ
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return (Cursor) C5021.this.mo7302(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, interfaceC1196.mo3150(), f18759, null);
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ʽﹳ */
    public final void mo3710(String str) {
        this.f18763.execSQL(str);
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˆʾ */
    public final void mo3711() {
        this.f18763.beginTransaction();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˈˏ */
    public final Cursor mo3712(String str) {
        return mo3709(new C0902(1, str));
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˈⁱ */
    public final void mo3713() {
        this.f18763.setTransactionSuccessful();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˉـ */
    public final void mo3714() {
        this.f18763.beginTransactionNonExclusive();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, ʻᵢ.ʽ] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, ʻᵢ.ʽ] */
    @Override // p034.InterfaceC1195
    /* renamed from: ˉٴ */
    public final void mo3715() {
        ?? r2 = f18762;
        if (((Method) r2.getValue()) != null) {
            ?? r3 = f18760;
            if (((Method) r3.getValue()) != null) {
                Method method = (Method) r2.getValue();
                Object invoke = ((Method) r3.getValue()).invoke(this.f18763, null);
                if (invoke == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                method.invoke(invoke, 0, null, 0, null);
                return;
            }
        }
        mo3711();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˋᵔ */
    public final boolean mo3716() {
        return this.f18763.isWriteAheadLoggingEnabled();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ˏᵢ */
    public final int mo3717(ContentValues contentValues, Object[] objArr) {
        if (contentValues.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        int size = contentValues.size();
        int length = objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(f18761[3]);
        sb.append("WorkSpec SET ");
        int i = 0;
        for (String str : contentValues.keySet()) {
            sb.append(i > 0 ? "," : "");
            sb.append(str);
            objArr2[i] = contentValues.get(str);
            sb.append("=?");
            i++;
        }
        for (int i2 = size; i2 < length; i2++) {
            objArr2[i2] = objArr[i2 - size];
        }
        if (!TextUtils.isEmpty("last_enqueue_time = 0 AND interval_duration <> 0 ")) {
            sb.append(" WHERE last_enqueue_time = 0 AND interval_duration <> 0 ");
        }
        C5014 mo3720 = mo3720(sb.toString());
        int length2 = objArr2.length;
        int i3 = 0;
        while (i3 < length2) {
            Object obj = objArr2[i3];
            i3++;
            if (obj == null) {
                mo3720.mo3706(i3);
            } else if (obj instanceof byte[]) {
                mo3720.mo3704(i3, (byte[]) obj);
            } else if (obj instanceof Float) {
                mo3720.mo3705(i3, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                mo3720.mo3705(i3, ((Number) obj).doubleValue());
            } else if (obj instanceof Long) {
                mo3720.mo3707(i3, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                mo3720.mo3707(i3, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                mo3720.mo3707(i3, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                mo3720.mo3707(i3, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                mo3720.mo3703(i3, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i3 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                mo3720.mo3707(i3, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
        return mo3720.f18758.executeUpdateDelete();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ٴʼ */
    public final boolean mo3718() {
        return this.f18763.inTransaction();
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ٴﹳ */
    public final long mo3719(String str, int i, ContentValues contentValues) {
        return this.f18763.insertWithOnConflict(str, null, contentValues, i);
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ᴵˊ */
    public final C5014 mo3720(String str) {
        return new C5014(this.f18763.compileStatement(str));
    }

    @Override // p034.InterfaceC1195
    /* renamed from: ﹳـ */
    public final void mo3721(Object[] objArr) {
        this.f18763.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }
}
