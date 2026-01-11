package p311;

import p013.C0922;
import p220.C3029;
import p220.InterfaceC3026;
import p324.C4030;
import retrofit2.HttpException;

/* renamed from: ᐧᵢ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3816 implements InterfaceC3826, InterfaceC3026 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C4030 f14799;

    public /* synthetic */ C3816(C4030 c4030) {
        this.f14799 = c4030;
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ʽ */
    public void mo7326(InterfaceC3801 interfaceC3801, C3789 c3789) {
        boolean z = c3789.f14703.f11185;
        C4030 c4030 = this.f14799;
        if (z) {
            c4030.mo3549(c3789.f14702);
        } else {
            c4030.mo3549(new C0922(new HttpException(c3789)));
        }
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ⁱˊ */
    public void mo7342(Throwable th) {
        this.f14799.mo3549(new C0922(th));
    }

    @Override // p220.InterfaceC3026
    /* renamed from: ﹳٴ */
    public void mo6558(C3029 c3029) {
        Exception m6563 = c3029.m6563();
        if (m6563 != null) {
            this.f14799.mo3549(new C0922(m6563));
        } else if (c3029.f11551) {
            this.f14799.m8222(null);
        } else {
            this.f14799.mo3549(c3029.m6565());
        }
    }
}
