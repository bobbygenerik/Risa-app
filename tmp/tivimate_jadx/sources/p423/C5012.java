package p423;

import p052.AbstractC1430;
import p052.C1425;
import p121.AbstractC2026;
import p208.C2938;
import p208.C2968;
import p311.InterfaceC3837;
import p435.C5140;

/* renamed from: ﹳﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5012 implements InterfaceC3837 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C2968 f18753;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC1430 f18754;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f18755;

    static {
        C5140 c5140 = C2968.f11341;
        f18753 = AbstractC2026.m5063("application/json; charset=UTF-8");
    }

    public C5012(AbstractC1430 abstractC1430, boolean z) {
        this.f18754 = abstractC1430;
        this.f18755 = z;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [ˊᐧ.ᵎﹶ, java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p311.InterfaceC3837
    /* renamed from: ˆʾ */
    public final Object mo8000(Object obj) {
        boolean z = this.f18755;
        AbstractC1430 abstractC1430 = this.f18754;
        if (z) {
            return new C2938(abstractC1430, 2, obj);
        }
        ?? obj2 = new Object();
        abstractC1430.mo4119(new C1425(obj2), obj);
        return new C2938(f18753, 0, obj2.mo5799(obj2.f9835));
    }
}
