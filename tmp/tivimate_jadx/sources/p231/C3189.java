package p231;

import p200.C2910;
import p274.C3488;
import p372.AbstractC4524;

/* renamed from: ˑˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3189 extends AbstractC4524 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12198 = 0;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f12199;

    public C3189(C2910 c2910, int i) {
        super(i, c2910.f10989 - 1);
        this.f12199 = c2910;
    }

    public C3189(C3488 c3488, long j, long j2) {
        super(j, j2);
        this.f12199 = c3488;
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ʽ, reason: contains not printable characters */
    public final long mo7009() {
        switch (this.f12198) {
            case 0:
                m9099();
                C2910 c2910 = (C2910) this.f12199;
                return c2910.f10987[(int) this.f16941];
            default:
                m9099();
                return ((C3488) this.f12199).m7414(this.f16941);
        }
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long mo7010() {
        switch (this.f12198) {
            case 0:
                return ((C2910) this.f12199).m6437((int) this.f16941) + mo7009();
            default:
                m9099();
                return ((C3488) this.f12199).m7421(this.f16941);
        }
    }
}
