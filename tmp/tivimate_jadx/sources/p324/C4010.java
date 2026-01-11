package p324;

/* renamed from: ᴵי.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4010 extends AbstractC4000 implements InterfaceC4043 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4031 f15391;

    public C4010(C4031 c4031) {
        this.f15391 = c4031;
    }

    @Override // p324.InterfaceC4043
    public final InterfaceC4036 getParent() {
        C4031 c4031 = this.f15378;
        if (c4031 != null) {
            return c4031;
        }
        return null;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ˆʾ */
    public final boolean mo8153() {
        return true;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ٴﹶ */
    public final void mo8154(Throwable th) {
        C4031 c4031 = this.f15378;
        if (c4031 == null) {
            c4031 = null;
        }
        this.f15391.m8256(c4031);
    }

    @Override // p324.InterfaceC4043
    /* renamed from: ⁱˊ */
    public final boolean mo8145(Throwable th) {
        C4031 c4031 = this.f15378;
        if (c4031 == null) {
            c4031 = null;
        }
        return c4031.mo4718(th);
    }
}
