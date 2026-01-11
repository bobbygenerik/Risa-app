package p292;

/* renamed from: ٴᵎ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3634 implements InterfaceC3643 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3648 f14226;

    public C3634(C3648 c3648) {
        this.f14226 = c3648;
    }

    @Override // p292.InterfaceC3643
    public final void cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3629 mo7616() {
        throw new IllegalStateException("already connected");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3648 mo7617() {
        return this.f14226;
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3629 mo7618() {
        throw new IllegalStateException("already connected");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3643 mo7619() {
        throw new IllegalStateException("unexpected retry");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo7620() {
        return true;
    }
}
