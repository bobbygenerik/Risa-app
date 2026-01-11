package p324;

import p126.AbstractC2140;
import p126.AbstractC2141;
import p126.C2134;
import p126.C2137;
import p126.InterfaceC2138;
import p126.InterfaceC2139;
import p126.InterfaceC2142;
import p153.AbstractC2481;
import p153.C2477;

/* renamed from: ᴵי.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4017 extends AbstractC2141 implements InterfaceC2142 {
    public AbstractC4017() {
        super(C2137.f8327);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + AbstractC3999.m8173(this);
    }

    /* renamed from: ʽᵔ */
    public void mo4763(InterfaceC2139 interfaceC2139, Runnable runnable) {
        AbstractC2481.m5618(this, interfaceC2139, runnable);
    }

    @Override // p126.AbstractC2141, p126.InterfaceC2139
    /* renamed from: ˊᵔ */
    public final InterfaceC2142 mo3419(InterfaceC2138 interfaceC2138) {
        if (!(interfaceC2138 instanceof AbstractC2140)) {
            if (C2137.f8327 == interfaceC2138) {
                return this;
            }
            return null;
        }
        if (this.f8328 != ((AbstractC2140) interfaceC2138)) {
            return null;
        }
        throw null;
    }

    /* renamed from: י */
    public AbstractC4017 mo4765(int i) {
        AbstractC2481.m5628(i);
        return new C2477(this, i);
    }

    @Override // p126.AbstractC2141, p126.InterfaceC2139
    /* renamed from: ـˆ */
    public final InterfaceC2139 mo3420(InterfaceC2138 interfaceC2138) {
        if (!(interfaceC2138 instanceof AbstractC2140)) {
            return C2137.f8327 == interfaceC2138 ? C2134.f8324 : this;
        }
        if (this.f8328 != ((AbstractC2140) interfaceC2138)) {
            return this;
        }
        throw null;
    }

    /* renamed from: ـᵎ */
    public abstract void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable);

    /* renamed from: ᐧﹶ */
    public boolean mo7733(InterfaceC2139 interfaceC2139) {
        return !(this instanceof C4029);
    }
}
