package p359;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p007.InterfaceC0835;
import p007.InterfaceC0836;
import p093.EnumC1853;
import p131.C2196;
import p139.C2356;
import p252.C3312;
import p297.AbstractC3692;
import p318.C3919;
import p343.InterfaceC4267;
import p419.InterfaceC4934;

/* renamed from: ᵔـ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4360 implements InterfaceC4357, InterfaceC0835, InterfaceC4355 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C3919 f16187 = new C3919("proto");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC4934 f16188;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4356 f16189;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4362 f16190;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4934 f16191;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC4267 f16192;

    public C4360(InterfaceC4934 interfaceC4934, InterfaceC4934 interfaceC49342, C4362 c4362, C4356 c4356, InterfaceC4267 interfaceC4267) {
        this.f16189 = c4356;
        this.f16191 = interfaceC4934;
        this.f16188 = interfaceC49342;
        this.f16190 = c4362;
        this.f16192 = interfaceC4267;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static String m8830(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((C4361) it.next()).f16195);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static Object m8831(Cursor cursor, InterfaceC4363 interfaceC4363) {
        try {
            return interfaceC4363.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Long m8832(SQLiteDatabase sQLiteDatabase, C2356 c2356) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(c2356.f9112, String.valueOf(AbstractC3692.m7729(c2356.f9110))));
        byte[] bArr = c2356.f9111;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !query.moveToNext() ? null : Long.valueOf(query.getLong(0));
        } finally {
            query.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16189.close();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final SQLiteDatabase m8833() {
        C4356 c4356 = this.f16189;
        Objects.requireNonNull(c4356);
        InterfaceC4934 interfaceC4934 = this.f16188;
        long mo9045 = interfaceC4934.mo9045();
        while (true) {
            try {
                return c4356.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC4934.mo9045() >= this.f16190.f16197 + mo9045) {
                    throw new RuntimeException("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object m8834(InterfaceC0836 interfaceC0836) {
        SQLiteDatabase m8833 = m8833();
        InterfaceC4934 interfaceC4934 = this.f16188;
        long mo9045 = interfaceC4934.mo9045();
        while (true) {
            try {
                m8833.beginTransaction();
                try {
                    Object mo2817 = interfaceC0836.mo2817();
                    m8833.setTransactionSuccessful();
                    return mo2817;
                } finally {
                    m8833.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC4934.mo9045() >= this.f16190.f16197 + mo9045) {
                    throw new RuntimeException("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Object m8835(InterfaceC4363 interfaceC4363) {
        SQLiteDatabase m8833 = m8833();
        m8833.beginTransaction();
        try {
            Object apply = interfaceC4363.apply(m8833);
            m8833.setTransactionSuccessful();
            return apply;
        } finally {
            m8833.endTransaction();
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8836(long j, EnumC1853 enumC1853, String str) {
        m8835(new C3312(j, str, enumC1853));
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final ArrayList m8837(SQLiteDatabase sQLiteDatabase, C2356 c2356, int i) {
        ArrayList arrayList = new ArrayList();
        Long m8832 = m8832(sQLiteDatabase, c2356);
        if (m8832 == null) {
            return arrayList;
        }
        m8831(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{m8832.toString()}, null, null, null, String.valueOf(i)), new C2196(this, arrayList, c2356, 4));
        return arrayList;
    }
}
