package p424;

import android.database.sqlite.SQLiteProgram;
import p034.InterfaceC1193;

/* renamed from: ﹳﾞ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C5019 implements InterfaceC1193 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final SQLiteProgram f18775;

    public C5019(SQLiteProgram sQLiteProgram) {
        this.f18775 = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f18775.close();
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ʻٴ */
    public final void mo3703(int i, String str) {
        this.f18775.bindString(i, str);
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ᵔᵢ */
    public final void mo3704(int i, byte[] bArr) {
        this.f18775.bindBlob(i, bArr);
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ⁱˊ */
    public final void mo3705(int i, double d) {
        this.f18775.bindDouble(i, d);
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ﹳٴ */
    public final void mo3706(int i) {
        this.f18775.bindNull(i);
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ﾞᴵ */
    public final void mo3707(int i, long j) {
        this.f18775.bindLong(i, j);
    }
}
