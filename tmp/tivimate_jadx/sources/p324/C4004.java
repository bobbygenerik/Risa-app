package p324;

/* renamed from: ᴵי.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4004 implements InterfaceC3992 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3994[] f15382;

    public C4004(C3994[] c3994Arr) {
        this.f15382 = c3994Arr;
    }

    public final String toString() {
        return "DisposeHandlersOnCancel[" + this.f15382 + ']';
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8192() {
        for (C3994 c3994 : this.f15382) {
            InterfaceC4041 interfaceC4041 = c3994.f15363;
            if (interfaceC4041 == null) {
                interfaceC4041 = null;
            }
            interfaceC4041.mo4747();
        }
    }

    @Override // p324.InterfaceC3992
    /* renamed from: ﹳٴ */
    public final void mo8152(Throwable th) {
        m8192();
    }
}
