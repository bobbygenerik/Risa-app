package p292;

/* renamed from: ٴᵎ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3636 implements InterfaceC3643 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3629 f14227;

    public C3636(Throwable th) {
        this.f14227 = new C3629(this, th, 2);
    }

    @Override // p292.InterfaceC3643
    public final void cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ʽ */
    public final C3629 mo7616() {
        return this.f14227;
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ˈ */
    public final C3648 mo7617() {
        throw new IllegalStateException("unexpected call");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ᵎﹶ */
    public final C3629 mo7618() {
        return this.f14227;
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ⁱˊ */
    public final InterfaceC3643 mo7619() {
        throw new IllegalStateException("unexpected retry");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ﹳٴ */
    public final boolean mo7620() {
        return false;
    }
}
