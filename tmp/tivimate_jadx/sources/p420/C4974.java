package p420;

import p017.AbstractC0993;
import p017.AbstractC1004;
import p055.C1474;
import p095.InterfaceC1881;
import p433.C5125;

/* renamed from: ﹳᵢ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4974 implements InterfaceC1881 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18531;

    public /* synthetic */ C4974(int i) {
        this.f18531 = i;
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        switch (this.f18531) {
            case 0:
                return Integer.valueOf(((C1474) obj).f5766);
            default:
                C5125 c5125 = (C5125) obj;
                c5125.m10081();
                return AbstractC0993.m3264(AbstractC1004.m3280(c5125.f19289.f18386, new C4974(0)));
        }
    }
}
