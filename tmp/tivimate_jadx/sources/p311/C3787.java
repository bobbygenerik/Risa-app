package p311;

import p013.C0922;
import p152.AbstractC2443;
import p152.C2461;
import p208.C2945;
import p324.C4030;
import retrofit2.HttpException;

/* renamed from: ᐧᵢ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3787 implements InterfaceC3826 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14699;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4030 f14700;

    public /* synthetic */ C3787(C4030 c4030, int i) {
        this.f14699 = i;
        this.f14700 = c4030;
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ʽ */
    public final void mo7326(InterfaceC3801 interfaceC3801, C3789 c3789) {
        switch (this.f14699) {
            case 0:
                boolean z = c3789.f14703.f11185;
                C4030 c4030 = this.f14700;
                if (!z) {
                    c4030.mo3549(new C0922(new HttpException(c3789)));
                    return;
                }
                Object obj = c3789.f14702;
                if (obj != null) {
                    c4030.mo3549(obj);
                    return;
                }
                C2945 mo7980 = interfaceC3801.mo7980();
                mo7980.getClass();
                C2461 m5561 = AbstractC2443.m5561(C3812.class);
                C3812 c3812 = (C3812) m5561.mo5571().cast(mo7980.f11224.get(m5561));
                c4030.mo3549(new C0922(new NullPointerException("Response from " + c3812.f14782.getName() + '.' + c3812.f14779.getName() + " was null but response body type was declared as non-null")));
                return;
            default:
                this.f14700.mo3549(c3789);
                return;
        }
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ⁱˊ */
    public final void mo7342(Throwable th) {
        switch (this.f14699) {
            case 0:
                this.f14700.mo3549(new C0922(th));
                return;
            default:
                this.f14700.mo3549(new C0922(th));
                return;
        }
    }
}
