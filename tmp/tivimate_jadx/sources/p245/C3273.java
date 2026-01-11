package p245;

import j$.util.Objects;
import java.security.GeneralSecurityException;
import p035.AbstractC1220;

/* renamed from: יʻ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3273 extends AbstractC3256 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12611;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3261 f12612;

    public C3273(int i, C3261 c3261) {
        this.f12612 = c3261;
        this.f12611 = i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3273 m7095(int i, C3261 c3261) {
        if (i < 8 || i > 12) {
            throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
        }
        return new C3273(i, c3261);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3273)) {
            return false;
        }
        C3273 c3273 = (C3273) obj;
        return c3273.f12612 == this.f12612 && c3273.f12611 == this.f12611;
    }

    public final int hashCode() {
        return Objects.hash(C3273.class, this.f12612, Integer.valueOf(this.f12611));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("X-AES-GCM Parameters (variant: ");
        sb.append(this.f12612);
        sb.append("salt_size_bytes: ");
        return AbstractC1220.m3782(sb, this.f12611, ")");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12612 != C3261.f12558;
    }
}
