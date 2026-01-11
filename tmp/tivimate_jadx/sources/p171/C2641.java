package p171;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˊﾞ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2641 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2641 f10025 = new C2641(0, 0);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f10026;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f10027;

    public C2641(long j, long j2) {
        this.f10027 = j;
        this.f10026 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2641.class == obj.getClass()) {
            C2641 c2641 = (C2641) obj;
            if (this.f10027 == c2641.f10027 && this.f10026 == c2641.f10026) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f10027) * 31) + ((int) this.f10026);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.f10027);
        sb.append(", position=");
        return AbstractC0001.m8(sb, this.f10026, "]");
    }
}
