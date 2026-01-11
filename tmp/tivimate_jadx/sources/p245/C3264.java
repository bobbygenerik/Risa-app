package p245;

import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;
import p404.AbstractC4793;

/* renamed from: יʻ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3264 extends AbstractC3286 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3277 f12583;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Integer f12584;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1631 f12585;

    public C3264(C3277 c3277, C1631 c1631, Integer num) {
        this.f12583 = c3277;
        this.f12585 = c1631;
        this.f12584 = num;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C3264 m7084(C3277 c3277, Integer num) {
        C1631 m9576;
        C3261 c3261 = c3277.f12634;
        if (c3261 == C3261.f12559) {
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            m9576 = AbstractC4793.f18041;
        } else {
            if (c3261 != C3261.f12568) {
                throw new GeneralSecurityException("Unknown Variant: " + c3261);
            }
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            m9576 = AbstractC4793.m9576(num.intValue());
        }
        return new C3264(c3277, m9576, num);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m7085() {
        return this.f12583;
    }

    @Override // p245.AbstractC3286
    /* renamed from: ˊʻ */
    public final C1631 mo7081() {
        return this.f12585;
    }
}
