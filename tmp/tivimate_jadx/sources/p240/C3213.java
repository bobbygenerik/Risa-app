package p240;

import p152.AbstractC2444;
import p322.EnumC3961;

/* renamed from: ˑᵎ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3213 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public EnumC3961 f12267;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f12268;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3213)) {
            return false;
        }
        C3213 c3213 = (C3213) obj;
        return AbstractC2444.m5562(this.f12268, c3213.f12268) && this.f12267 == c3213.f12267;
    }

    public final int hashCode() {
        return this.f12267.hashCode() + (this.f12268.hashCode() * 31);
    }

    public final String toString() {
        return "IdAndState(id=" + this.f12268 + ", state=" + this.f12267 + ')';
    }
}
