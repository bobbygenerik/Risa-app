package p365;

import java.util.HashMap;

/* renamed from: ᵔﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4459 extends C4460 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final HashMap f16684 = new HashMap();

    @Override // p365.C4460
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo9007(Object obj) {
        Object mo9007 = super.mo9007(obj);
        this.f16684.remove(obj);
        return mo9007;
    }

    @Override // p365.C4460
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4455 mo9008(Object obj) {
        return (C4455) this.f16684.get(obj);
    }
}
