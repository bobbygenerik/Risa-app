package p038;

import p211.C2980;
import p220.C3032;

/* renamed from: ʽʼ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1285 implements InterfaceC1276 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3032 f4966;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1278 f4967;

    public C1285(C1278 c1278, C3032 c3032) {
        this.f4967 = c1278;
        this.f4966 = c3032;
    }

    @Override // p038.InterfaceC1276
    /* renamed from: ⁱˊ */
    public final boolean mo3869(Exception exc) {
        this.f4966.m6578(exc);
        return true;
    }

    @Override // p038.InterfaceC1276
    /* renamed from: ﹳٴ */
    public final boolean mo3870(C2980 c2980) {
        if (c2980.f11385 != 4 || this.f4967.m3871(c2980)) {
            return false;
        }
        String str = c2980.f11381;
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f4966.f11560.m6562(new C1284(c2980.f11383, c2980.f11387, str));
        return true;
    }
}
