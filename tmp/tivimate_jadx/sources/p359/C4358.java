package p359;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import p139.C2356;
import p297.AbstractC3692;
import p318.EnumC3916;

/* renamed from: ᵔـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4358 implements InterfaceC4363 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ long f16183;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2356 f16184;

    public /* synthetic */ C4358(long j, C2356 c2356) {
        this.f16183 = j;
        this.f16184 = c2356;
    }

    @Override // p359.InterfaceC4363
    public final Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f16183));
        C2356 c2356 = this.f16184;
        String str = c2356.f9112;
        EnumC3916 enumC3916 = c2356.f9110;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(AbstractC3692.m7729(enumC3916))}) < 1) {
            contentValues.put("backend_name", c2356.f9112);
            contentValues.put("priority", Integer.valueOf(AbstractC3692.m7729(enumC3916)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }
}
