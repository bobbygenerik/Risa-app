package p420;

import p055.C1490;
import p055.C1495;
import p262.C3433;
import p421.C4996;

/* renamed from: ﹳᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4988 implements InterfaceC4956 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C4941 f18632;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4956 f18633;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f18634;

    public C4988(C4941 c4941, InterfaceC4956 interfaceC4956) {
        this.f18632 = c4941;
        this.f18633 = interfaceC4956;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
        this.f18633.mo3459();
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        C4941 c4941 = this.f18632;
        if (c4941.m9744()) {
            return -3;
        }
        if (this.f18634) {
            c4996.f3828 = 4;
            return -4;
        }
        long mo5127 = c4941.mo5127();
        int mo3472 = this.f18633.mo3472(c3433, c4996, i);
        if (mo3472 != -5) {
            long j = c4941.f18407;
            if (j == Long.MIN_VALUE || ((mo3472 != -4 || c4996.f18671 < j) && !(mo3472 == -3 && mo5127 == Long.MIN_VALUE && !c4996.f18669))) {
                return mo3472;
            }
            c4996.mo3629();
            c4996.f3828 = 4;
            this.f18634 = true;
            return -4;
        }
        C1495 c1495 = (C1495) c3433.f13456;
        c1495.getClass();
        int i2 = c1495.f5922;
        int i3 = c1495.f5928;
        if (i3 == 0 && i2 == 0) {
            return -5;
        }
        if (c4941.f18410 != 0) {
            i3 = 0;
        }
        if (c4941.f18407 != Long.MIN_VALUE) {
            i2 = 0;
        }
        C1490 m4300 = c1495.m4300();
        m4300.f5863 = i3;
        m4300.f5875 = i2;
        c3433.f13456 = new C1495(m4300);
        return -5;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        if (this.f18632.m9744()) {
            return -3;
        }
        return this.f18633.mo3473(j);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        return !this.f18632.m9744() && this.f18633.mo3475();
    }
}
