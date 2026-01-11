package p003;

import p055.C1456;
import p055.InterfaceC1487;
import p095.InterfaceC1881;
import p305.InterfaceC3718;

/* renamed from: ʻʿ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0782 implements InterfaceC3718, InterfaceC1881 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3266;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f3267;

    public /* synthetic */ C0782(int i, int i2) {
        this.f3266 = i2;
        this.f3267 = i;
    }

    public /* synthetic */ C0782(C0789 c0789, int i, C1456 c1456, C1456 c14562) {
        this.f3266 = 0;
        this.f3267 = i;
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        return Integer.valueOf(this.f3267);
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public void mo2801(Object obj) {
        switch (this.f3266) {
            case 0:
                InterfaceC0788 interfaceC0788 = (InterfaceC0788) obj;
                interfaceC0788.getClass();
                C0777 c0777 = (C0777) interfaceC0788;
                int i = this.f3267;
                if (i == 1) {
                    c0777.f3215 = true;
                }
                c0777.f3241 = i;
                return;
            case 1:
                ((InterfaceC1487) obj).mo2832(this.f3267);
                return;
            default:
                ((InterfaceC1487) obj).mo2823(this.f3267);
                return;
        }
    }
}
