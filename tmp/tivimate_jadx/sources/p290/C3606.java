package p290;

import com.parse.ٴʼ;
import p007.InterfaceC0836;
import p055.C1456;
import p055.InterfaceC1487;
import p070.C1629;
import p139.C2356;
import p305.InterfaceC3718;

/* renamed from: ٴᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3606 implements InterfaceC0836, InterfaceC3718 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f14105;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14106;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f14107;

    public /* synthetic */ C3606(int i, C1456 c1456, C1456 c14562) {
        this.f14106 = i;
        this.f14107 = c1456;
        this.f14105 = c14562;
    }

    public /* synthetic */ C3606(C1629 c1629, C2356 c2356, int i) {
        this.f14107 = c1629;
        this.f14105 = c2356;
        this.f14106 = i;
    }

    @Override // p007.InterfaceC0836
    /* renamed from: ʽ */
    public Object mo2817() {
        C1629 c1629 = (C1629) this.f14107;
        ((ٴʼ) c1629.f6483).ʻᵎ((C2356) this.f14105, this.f14106 + 1, false);
        return null;
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public void mo2801(Object obj) {
        C1456 c1456 = (C1456) this.f14107;
        C1456 c14562 = (C1456) this.f14105;
        InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj;
        interfaceC1487.getClass();
        interfaceC1487.mo2833(this.f14106, c1456, c14562);
    }
}
