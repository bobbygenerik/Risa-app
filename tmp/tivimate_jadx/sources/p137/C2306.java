package p137;

import p353.InterfaceC4305;

/* renamed from: ˉˆ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2306 extends AbstractViewOnTouchListenerC2283 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ C2260 f8997;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ C2290 f8998;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2306(C2290 c2290, C2290 c22902, C2260 c2260) {
        super(c22902);
        this.f8998 = c2290;
        this.f8997 = c2260;
    }

    @Override // p137.AbstractViewOnTouchListenerC2283
    /* renamed from: ʽ */
    public final boolean mo5239() {
        C2290 c2290 = this.f8998;
        if (c2290.getInternalPopup().mo5297()) {
            return true;
        }
        c2290.f8965.mo5287(c2290.getTextDirection(), c2290.getTextAlignment());
        return true;
    }

    @Override // p137.AbstractViewOnTouchListenerC2283
    /* renamed from: ⁱˊ */
    public final InterfaceC4305 mo5241() {
        return this.f8997;
    }
}
