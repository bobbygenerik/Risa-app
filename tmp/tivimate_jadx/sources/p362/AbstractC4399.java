package p362;

import p034.InterfaceC1195;
import p159.C2547;
import p417.InterfaceC4932;

/* renamed from: ᵔᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4399 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16360;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f16361;

    public AbstractC4399(int i, int i2) {
        this.f16361 = i;
        this.f16360 = i2;
    }

    /* renamed from: ⁱˊ */
    public void mo7316(InterfaceC4932 interfaceC4932) {
        if (!(interfaceC4932 instanceof C2547)) {
            throw new Error("Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function.");
        }
        mo7315(((C2547) interfaceC4932).f9654);
    }

    /* renamed from: ﹳٴ */
    public void mo7315(InterfaceC1195 interfaceC1195) {
        throw new Error("Migration functionality with a SupportSQLiteDatabase (without a provided SQLiteDriver) requires overriding the migrate(SupportSQLiteDatabase) function.");
    }
}
