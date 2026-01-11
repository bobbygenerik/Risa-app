package p324;

import java.util.concurrent.ScheduledFuture;
import p329.InterfaceC4106;

/* renamed from: ᴵי.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4046 implements InterfaceC3992 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f15435;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15436;

    public /* synthetic */ C4046(int i, Object obj) {
        this.f15436 = i;
        this.f15435 = obj;
    }

    public final String toString() {
        switch (this.f15436) {
            case 0:
                return "CancelFutureOnCancel[" + ((ScheduledFuture) this.f15435) + ']';
            case 1:
                return "CancelHandler.UserSupplied[" + ((InterfaceC4106) this.f15435).getClass().getSimpleName() + '@' + AbstractC3999.m8173(this) + ']';
            default:
                return "DisposeOnCancel[" + ((InterfaceC4041) this.f15435) + ']';
        }
    }

    @Override // p324.InterfaceC3992
    /* renamed from: ﹳٴ */
    public final void mo8152(Throwable th) {
        switch (this.f15436) {
            case 0:
                ((ScheduledFuture) this.f15435).cancel(false);
                return;
            case 1:
                ((InterfaceC4106) this.f15435).mo3844(th);
                return;
            default:
                ((InterfaceC4041) this.f15435).mo4747();
                return;
        }
    }
}
