package p373;

import p121.AbstractC2026;
import p126.InterfaceC2136;
import p152.AbstractC2451;
import p316.AbstractC3905;
import p329.InterfaceC4087;

/* renamed from: ᵢˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4531 extends AbstractC3905 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4087 f16957;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC2136 f16958;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f16959;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4531(InterfaceC2136 interfaceC2136, InterfaceC2136 interfaceC21362, InterfaceC4087 interfaceC4087) {
        super(interfaceC2136);
        this.f16957 = interfaceC4087;
        this.f16958 = interfaceC21362;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f16959;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f16959 = 2;
            AbstractC2026.m5044(obj);
            return obj;
        }
        this.f16959 = 1;
        AbstractC2026.m5044(obj);
        InterfaceC4087 interfaceC4087 = this.f16957;
        AbstractC2451.m5576(2, interfaceC4087);
        return interfaceC4087.mo3749(this.f16958, this);
    }
}
