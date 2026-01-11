package p316;

import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;

/* renamed from: ᴵʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3905 extends AbstractC3908 {
    public AbstractC3905(InterfaceC2136 interfaceC2136) {
        super(interfaceC2136);
        if (interfaceC2136 != null && interfaceC2136.mo3551() != C2134.f8324) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return C2134.f8324;
    }
}
