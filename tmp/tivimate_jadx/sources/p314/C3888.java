package p314;

import p013.C0907;
import p090.C1796;
import p152.AbstractC2452;
import p164.C2575;
import p329.InterfaceC4104;
import p393.AbstractC4701;
import ـˎ.ˈ;
import ᵎˉ.ⁱˊ;

/* renamed from: ᐧﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3888 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3889 f15124;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f15125;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3888(C3889 c3889, int i) {
        super(0);
        this.f15125 = i;
        this.f15124 = c3889;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f15125) {
            case 0:
                C1796 c1796 = this.f15124.f15129;
                C2575 c2575 = (C2575) c1796.mo716();
                if (AbstractC4701.m9411(c2575) != -1) {
                    return ⁱˊ.ᵔᵢ(c2575.f9777.m5748(), true);
                }
                throw new IllegalStateException(("OkioStorage requires absolute paths, but did not get an absolute path from producePath = " + c1796 + ", instead got " + c2575).toString());
            default:
                ˈ r0 = C3889.f15127;
                C3889 c3889 = this.f15124;
                synchronized (r0) {
                    C3889.f15126.remove(((C2575) c3889.f15128.getValue()).f9777.m5748());
                }
                return C0907.f3832;
        }
    }
}
