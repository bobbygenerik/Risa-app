package p245;

import androidx.leanback.widget.ˉˆ;
import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;
import p404.AbstractC4793;

/* renamed from: יʻ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3278 extends AbstractC3286 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3262 f12635;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1631 f12636;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Integer f12637;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ˉˆ f12638;

    public C3278(C3262 c3262, ˉˆ r2, C1631 c1631, Integer num) {
        this.f12635 = c3262;
        this.f12638 = r2;
        this.f12636 = c1631;
        this.f12637 = num;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C3278 m7097(C3261 c3261, ˉˆ r5, Integer num) {
        C1631 m9576;
        C1631 c1631 = (C1631) r5.ᴵˊ;
        C3261 c32612 = C3261.f12569;
        if (c3261 != c32612 && num == null) {
            throw new GeneralSecurityException("For given Variant " + c3261 + " the value of idRequirement must be non-null");
        }
        if (c3261 == c32612 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (c1631.f6496.length != 32) {
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + c1631.f6496.length);
        }
        C3262 c3262 = new C3262(c3261);
        if (c3261 == c32612) {
            m9576 = AbstractC4793.f18041;
        } else if (c3261 == C3261.f12564) {
            m9576 = AbstractC4793.m9577(num.intValue());
        } else {
            if (c3261 != C3261.f12570) {
                throw new IllegalStateException("Unknown Variant: " + c3261);
            }
            m9576 = AbstractC4793.m9576(num.intValue());
        }
        return new C3278(c3262, r5, m9576, num);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m7098() {
        return this.f12635;
    }

    @Override // p245.AbstractC3286
    /* renamed from: ˊʻ */
    public final C1631 mo7081() {
        return this.f12636;
    }
}
