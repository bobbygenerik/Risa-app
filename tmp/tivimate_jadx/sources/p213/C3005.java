package p213;

import java.math.BigInteger;
import p171.C2641;
import p171.C2647;
import p171.InterfaceC2626;
import p305.AbstractC3712;

/* renamed from: ˏʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3005 implements InterfaceC2626 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C3004 f11482;

    public C3005(C3004 c3004) {
        this.f11482 = c3004;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        C3004 c3004 = this.f11482;
        long j2 = c3004.f11477;
        BigInteger valueOf = BigInteger.valueOf((c3004.f11472.f11457 * j) / 1000000);
        long j3 = c3004.f11470;
        C2641 c2641 = new C2641(j, AbstractC3712.m7767((valueOf.multiply(BigInteger.valueOf(j3 - j2)).divide(BigInteger.valueOf(c3004.f11474)).longValue() + j2) - 30000, c3004.f11477, j3 - 1));
        return new C2647(c2641, c2641);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return (this.f11482.f11474 * 1000000) / r0.f11472.f11457;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }
}
