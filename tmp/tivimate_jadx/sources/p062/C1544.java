package p062;

import p013.C0907;
import p090.C1789;
import p090.C1791;
import p126.InterfaceC2136;
import p340.InterfaceC4256;
import p373.EnumC4532;

/* renamed from: ʾˈ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1544 implements InterfaceC4256 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6067;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f6068;

    public /* synthetic */ C1544(int i, Object obj) {
        this.f6067 = i;
        this.f6068 = obj;
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        Object m4740;
        switch (this.f6067) {
            case 0:
                C1579 c1579 = (C1579) obj;
                C1573 c1573 = (C1573) this.f6068;
                c1573.f6149 = c1579;
                Object m4361 = C1573.m4361(c1573, c1579.f6174.f6185, EnumC1572.f6141, interfaceC2136);
                return m4361 == EnumC4532.f16960 ? m4361 : C0907.f3832;
            default:
                C1791 c1791 = (C1791) this.f6068;
                return ((c1791.f7238.m3723() instanceof C1789) || (m4740 = C1791.m4740(c1791, true, interfaceC2136)) != EnumC4532.f16960) ? C0907.f3832 : m4740;
        }
    }
}
