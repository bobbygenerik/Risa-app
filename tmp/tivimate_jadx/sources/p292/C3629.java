package p292;

import p152.AbstractC2444;

/* renamed from: ٴᵎ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3629 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Throwable f14196;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3643 f14197;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3643 f14198;

    public /* synthetic */ C3629(InterfaceC3643 interfaceC3643, Throwable th, int i) {
        this(interfaceC3643, (C3641) null, (i & 4) != 0 ? null : th);
    }

    public C3629(InterfaceC3643 interfaceC3643, C3641 c3641, Throwable th) {
        this.f14198 = interfaceC3643;
        this.f14197 = c3641;
        this.f14196 = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3629)) {
            return false;
        }
        C3629 c3629 = (C3629) obj;
        return AbstractC2444.m5562(this.f14198, c3629.f14198) && AbstractC2444.m5562(this.f14197, c3629.f14197) && AbstractC2444.m5562(this.f14196, c3629.f14196);
    }

    public final int hashCode() {
        int hashCode = this.f14198.hashCode() * 31;
        InterfaceC3643 interfaceC3643 = this.f14197;
        int hashCode2 = (hashCode + (interfaceC3643 == null ? 0 : interfaceC3643.hashCode())) * 31;
        Throwable th = this.f14196;
        return hashCode2 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "ConnectResult(plan=" + this.f14198 + ", nextPlan=" + this.f14197 + ", throwable=" + this.f14196 + ')';
    }
}
