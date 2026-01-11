package p236;

import android.animation.TimeInterpolator;
import p035.AbstractC1220;

/* renamed from: ˑˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3198 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public TimeInterpolator f12236;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12237;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12238;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f12239;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f12240;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3198)) {
            return false;
        }
        C3198 c3198 = (C3198) obj;
        if (this.f12240 == c3198.f12240 && this.f12239 == c3198.f12239 && this.f12237 == c3198.f12237 && this.f12238 == c3198.f12238) {
            return m7035().getClass().equals(c3198.m7035().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f12240;
        long j2 = this.f12239;
        return ((((m7035().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31)) * 31) + this.f12237) * 31) + this.f12238;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(C3198.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f12240);
        sb.append(" duration: ");
        sb.append(this.f12239);
        sb.append(" interpolator: ");
        sb.append(m7035().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f12237);
        sb.append(" repeatMode: ");
        return AbstractC1220.m3782(sb, this.f12238, "}\n");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TimeInterpolator m7035() {
        TimeInterpolator timeInterpolator = this.f12236;
        return timeInterpolator != null ? timeInterpolator : AbstractC3200.f12245;
    }
}
