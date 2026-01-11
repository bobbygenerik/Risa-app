package p424;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import p034.InterfaceC1196;
import p329.InterfaceC4105;

/* renamed from: ﹳﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C5021 implements InterfaceC4105 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC1196 f18777;

    public /* synthetic */ C5021(InterfaceC1196 interfaceC1196) {
        this.f18777 = interfaceC1196;
    }

    @Override // p329.InterfaceC4105
    /* renamed from: ٴﹶ */
    public final Object mo7302(Object obj, Object obj2, Object obj3, Object obj4) {
        SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
        this.f18777.mo3153(new C5019(sQLiteQuery));
        return new SQLiteCursor((SQLiteCursorDriver) obj2, (String) obj3, sQLiteQuery);
    }
}
