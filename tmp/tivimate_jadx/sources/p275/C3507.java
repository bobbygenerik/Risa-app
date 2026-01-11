package p275;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.ImageDecoder;
import android.util.Base64;
import android.window.OnBackInvokedDispatcher;
import java.nio.file.attribute.DosFileAttributeView;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import p139.C2356;
import p220.InterfaceC3028;
import p297.AbstractC3692;
import p305.InterfaceC3734;
import p359.InterfaceC4363;
import ˑי.ʽ;

/* renamed from: ـﹶ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3507 implements InterfaceC3028, InterfaceC4363, InterfaceC3734 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m7458(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ Class m7459() {
        return DosFileAttributeView.class;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ DosFileAttributeView m7463(Object obj) {
        return (DosFileAttributeView) obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ ImageDecoder.Source m7469(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    @Override // p305.InterfaceC3734
    public void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }

    @Override // p359.InterfaceC4363
    public Object apply(Object obj) {
        Cursor rawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (rawQuery.moveToNext()) {
                ʽ m5441 = C2356.m5441();
                m5441.ʽʽ(rawQuery.getString(1));
                m5441.ʽʽ = AbstractC3692.m7728(rawQuery.getInt(2));
                String string = rawQuery.getString(3);
                m5441.ᴵˊ = string == null ? null : Base64.decode(string, 0);
                arrayList.add(m5441.ᵔﹳ());
            }
            return arrayList;
        } finally {
            rawQuery.close();
        }
    }

    @Override // p220.InterfaceC3028
    /* renamed from: ٴʼ */
    public void mo4588(Exception exc) {
    }
}
