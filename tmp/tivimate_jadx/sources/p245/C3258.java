package p245;

import androidx.leanback.widget.ˉˆ;
import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;
import p404.AbstractC4793;

/* renamed from: יʻ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3258 extends AbstractC3286 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3272 f12534;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1631 f12535;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Integer f12536;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ˉˆ f12537;

    public C3258(C3272 c3272, ˉˆ r2, C1631 c1631, Integer num) {
        this.f12534 = c3272;
        this.f12537 = r2;
        this.f12535 = c1631;
        this.f12536 = num;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C3258 m7079(C3261 c3261, ˉˆ r5, Integer num) {
        C1631 m9576;
        C1631 c1631 = (C1631) r5.ᴵˊ;
        C3261 c32612 = C3261.f12544;
        if (c3261 != c32612 && num == null) {
            throw new GeneralSecurityException("For given Variant " + c3261 + " the value of idRequirement must be non-null");
        }
        if (c3261 == c32612 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (c1631.f6496.length != 32) {
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + c1631.f6496.length);
        }
        C3272 c3272 = new C3272(c3261);
        if (c3261 == c32612) {
            m9576 = AbstractC4793.f18041;
        } else if (c3261 == C3261.f12550) {
            m9576 = AbstractC4793.m9577(num.intValue());
        } else {
            if (c3261 != C3261.f12560) {
                throw new IllegalStateException("Unknown Variant: " + c3261);
            }
            m9576 = AbstractC4793.m9576(num.intValue());
        }
        return new C3258(c3272, r5, m9576, num);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m7080() {
        return this.f12534;
    }

    @Override // p245.AbstractC3286
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1631 mo7081() {
        return this.f12535;
    }
}
