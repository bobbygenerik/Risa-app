package p245;

import androidx.leanback.widget.ˉˆ;
import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;
import p404.AbstractC4793;

/* renamed from: יʻ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3267 extends AbstractC3286 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3273 f12593;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1631 f12594;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Integer f12595;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ˉˆ f12596;

    public C3267(C3273 c3273, ˉˆ r2, C1631 c1631, Integer num) {
        this.f12593 = c3273;
        this.f12596 = r2;
        this.f12594 = c1631;
        this.f12595 = num;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C3267 m7087(C3273 c3273, ˉˆ r6, Integer num) {
        C1631 m9576;
        C1631 c1631 = (C1631) r6.ᴵˊ;
        C3261 c3261 = c3273.f12612;
        C3261 c32612 = C3261.f12558;
        if (c3261 != c32612 && num == null) {
            throw new GeneralSecurityException("For given Variant " + c3261 + " the value of idRequirement must be non-null");
        }
        if (c3261 == c32612 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (c1631.f6496.length != 32) {
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + c1631.f6496.length);
        }
        if (c3261 == c32612) {
            m9576 = AbstractC4793.f18041;
        } else {
            if (c3261 != C3261.f12565) {
                throw new IllegalStateException("Unknown Variant: " + c3261);
            }
            m9576 = AbstractC4793.m9576(num.intValue());
        }
        return new C3267(c3273, r6, m9576, num);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m7088() {
        return this.f12593;
    }

    @Override // p245.AbstractC3286
    /* renamed from: ˊʻ */
    public final C1631 mo7081() {
        return this.f12594;
    }
}
