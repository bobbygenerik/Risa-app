package p038;

import p211.C2980;
import p220.C3032;

/* renamed from: ʽʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1281 implements InterfaceC1276 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3032 f4958;

    public C1281(C3032 c3032) {
        this.f4958 = c3032;
    }

    @Override // p038.InterfaceC1276
    /* renamed from: ⁱˊ */
    public final boolean mo3869(Exception exc) {
        return false;
    }

    @Override // p038.InterfaceC1276
    /* renamed from: ﹳٴ */
    public final boolean mo3870(C2980 c2980) {
        int i = c2980.f11385;
        if (i != 3 && i != 4 && i != 5) {
            return false;
        }
        this.f4958.m6577(c2980.f11386);
        return true;
    }
}
