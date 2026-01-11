package p409;

import com.google.android.gms.internal.measurement.HandlerC0337;

/* renamed from: ﹳˊ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4852 implements InterfaceC4854 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C4844 f18192;

    public C4852(C4844 c4844) {
        this.f18192 = c4844;
    }

    @Override // p409.InterfaceC4854
    /* renamed from: ﹳٴ */
    public final void mo5505(boolean z) {
        HandlerC0337 handlerC0337 = this.f18192.f18174;
        handlerC0337.sendMessage(handlerC0337.obtainMessage(1, Boolean.valueOf(z)));
    }
}
