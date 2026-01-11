package p250;

import p154.C2487;
import p173.C2656;
import p197.AbstractC2901;
import p456.InterfaceC5379;

/* renamed from: יˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3306 extends C2656 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2656 f12722;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC5379 f12723;

    public C3306(C2487 c2487, C2656 c2656) {
        this.f12722 = c2656;
        C3305 c3305 = (C3305) c2487.f9481;
        byte[] bArr = c3305.f12719;
        InterfaceC5379 mo8992 = c3305.f12720.mo8992(c3305.f12718);
        mo8992.mo6827(bArr);
        this.f12723 = mo8992;
    }

    @Override // p197.AbstractC2901
    /* renamed from: ˈ */
    public final AbstractC2901 mo6412(byte b) {
        this.f12723.mo6850(b);
        this.f12722.mo6412(b);
        return this;
    }

    @Override // p197.AbstractC2901
    /* renamed from: ˑﹳ */
    public final AbstractC2901 mo6415(int i, byte[] bArr) {
        this.f12723.update(bArr, 0, i);
        this.f12722.mo6415(i, bArr);
        return this;
    }
}
