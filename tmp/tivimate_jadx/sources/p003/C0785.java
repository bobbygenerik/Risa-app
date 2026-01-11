package p003;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import p055.C1469;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1487;
import p305.InterfaceC3718;

/* renamed from: ʻʿ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0785 implements InterfaceC3718 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3272 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C1469 f3273;

    public /* synthetic */ C0785(C0789 c0789, C1469 c1469) {
        this.f3273 = c1469;
    }

    public /* synthetic */ C0785(C1469 c1469) {
        this.f3273 = c1469;
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public final void mo2801(Object obj) {
        switch (this.f3272) {
            case 0:
                C0777 c0777 = (C0777) ((InterfaceC0788) obj);
                ʽﹳ r0 = c0777.f3218;
                C1469 c1469 = this.f3273;
                if (r0 != null) {
                    C1495 c1495 = (C1495) r0.ʽʽ;
                    if (c1495.f5899 == -1) {
                        C1490 m4300 = c1495.m4300();
                        m4300.f5865 = c1469.f5755;
                        m4300.f5854 = c1469.f5754;
                        c0777.f3218 = new ʽﹳ(new C1495(m4300), r0.ᴵˊ, (String) r0.ˈٴ, 1);
                    }
                }
                int i = c1469.f5755;
                return;
            default:
                ((InterfaceC1487) obj).mo2865(this.f3273);
                return;
        }
    }
}
