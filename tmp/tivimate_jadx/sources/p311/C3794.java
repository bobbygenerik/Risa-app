package p311;

import p013.C0907;
import p329.InterfaceC4106;

/* renamed from: ᐧᵢ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3794 implements InterfaceC4106 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14708;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3801 f14709;

    public /* synthetic */ C3794(InterfaceC3801 interfaceC3801, int i) {
        this.f14708 = i;
        this.f14709 = interfaceC3801;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        switch (this.f14708) {
            case 0:
                this.f14709.cancel();
                return C0907.f3832;
            case 1:
                this.f14709.cancel();
                return C0907.f3832;
            default:
                this.f14709.cancel();
                return C0907.f3832;
        }
    }
}
