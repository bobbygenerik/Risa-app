package p311;

import retrofit2.HttpException;

/* renamed from: ᐧᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3830 implements InterfaceC3826 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14830;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3790 f14831;

    public /* synthetic */ C3830(C3790 c3790, int i) {
        this.f14830 = i;
        this.f14831 = c3790;
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ʽ */
    public final void mo7326(InterfaceC3801 interfaceC3801, C3789 c3789) {
        switch (this.f14830) {
            case 0:
                boolean z = c3789.f14703.f11185;
                C3790 c3790 = this.f14831;
                if (z) {
                    c3790.complete(c3789.f14702);
                    return;
                } else {
                    c3790.completeExceptionally(new HttpException(c3789));
                    return;
                }
            default:
                this.f14831.complete(c3789);
                return;
        }
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ⁱˊ */
    public final void mo7342(Throwable th) {
        switch (this.f14830) {
            case 0:
                this.f14831.completeExceptionally(th);
                return;
            default:
                this.f14831.completeExceptionally(th);
                return;
        }
    }
}
