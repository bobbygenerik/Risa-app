package p245;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;

/* renamed from: יʻ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3259 extends AbstractC3286 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3276 f12538;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Integer f12539;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1631 f12540;

    public C3259(C3276 c3276, C1631 c1631, Integer num) {
        this.f12538 = c3276;
        this.f12540 = c1631;
        this.f12539 = num;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C3259 m7082(C3276 c3276, Integer num) {
        C1631 m4412;
        C3261 c3261 = c3276.f12629;
        if (c3261 == C3261.f12563) {
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            m4412 = C1631.m4412(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        } else {
            if (c3261 != C3261.f12552) {
                throw new GeneralSecurityException("Unknown Variant: " + c3261);
            }
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            m4412 = C1631.m4412(new byte[0]);
        }
        return new C3259(c3276, m4412, num);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m7083() {
        return this.f12538;
    }

    @Override // p245.AbstractC3286
    /* renamed from: ˊʻ */
    public final C1631 mo7081() {
        return this.f12540;
    }
}
