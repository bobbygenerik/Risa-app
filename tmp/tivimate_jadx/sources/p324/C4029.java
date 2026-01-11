package p324;

import p126.InterfaceC2139;

/* renamed from: ᴵי.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4029 extends AbstractC4017 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C4029 f15409 = new AbstractC4017();

    @Override // p324.AbstractC4017
    public final String toString() {
        return "Dispatchers.Unconfined";
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        C4032 c4032 = (C4032) interfaceC2139.mo3419(C4032.f15417);
        if (c4032 == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        c4032.f15418 = true;
    }
}
