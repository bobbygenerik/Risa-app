package p311;

import java.util.concurrent.Executor;
import p208.C2945;
import p262.C3433;

/* renamed from: ᐧᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3827 implements InterfaceC3801 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Executor f14827;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC3801 f14828;

    public C3827(Executor executor, InterfaceC3801 interfaceC3801) {
        this.f14827 = executor;
        this.f14828 = interfaceC3801;
    }

    @Override // p311.InterfaceC3801
    public final void cancel() {
        this.f14828.cancel();
    }

    @Override // p311.InterfaceC3801
    public final InterfaceC3801 clone() {
        return new C3827(this.f14827, this.f14828.clone());
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ʽ */
    public final C3789 mo7977() {
        return this.f14828.mo7977();
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ˉˆ */
    public final void mo7978(InterfaceC3826 interfaceC3826) {
        this.f14828.mo7978(new C3433(this, interfaceC3826, 6, false));
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ᵎﹶ */
    public final boolean mo7979() {
        return this.f14828.mo7979();
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ﹳᐧ */
    public final C2945 mo7980() {
        return this.f14828.mo7980();
    }
}
