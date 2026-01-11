package p359;

import p139.C2356;
import p139.C2367;

/* renamed from: ᵔـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4361 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2367 f16193;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2356 f16194;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f16195;

    public C4361(long j, C2356 c2356, C2367 c2367) {
        this.f16195 = j;
        this.f16194 = c2356;
        this.f16193 = c2367;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4361) {
            C4361 c4361 = (C4361) obj;
            if (this.f16195 == c4361.f16195 && this.f16194.equals(c4361.f16194) && this.f16193.equals(c4361.f16193)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f16195;
        return ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f16194.hashCode()) * 1000003) ^ this.f16193.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f16195 + ", transportContext=" + this.f16194 + ", event=" + this.f16193 + "}";
    }
}
