package p373;

import p121.AbstractC2026;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2451;
import p316.AbstractC3902;
import p329.InterfaceC4087;

/* renamed from: ᵢˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4528 extends AbstractC3902 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16954;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC2136 f16955;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4087 f16956;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4528(InterfaceC2136 interfaceC2136, InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087, InterfaceC2136 interfaceC21362) {
        super(interfaceC2136, interfaceC2139);
        this.f16956 = interfaceC4087;
        this.f16955 = interfaceC21362;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f16954;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f16954 = 2;
            AbstractC2026.m5044(obj);
            return obj;
        }
        this.f16954 = 1;
        AbstractC2026.m5044(obj);
        InterfaceC4087 interfaceC4087 = this.f16956;
        AbstractC2451.m5576(2, interfaceC4087);
        return interfaceC4087.mo3749(this.f16955, this);
    }
}
