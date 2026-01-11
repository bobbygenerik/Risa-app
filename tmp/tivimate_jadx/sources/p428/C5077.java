package p428;

/* renamed from: ﹶʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5077 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f19128;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f19129;

    public C5077(long j, long j2) {
        this.f19129 = j;
        this.f19128 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5077)) {
            return false;
        }
        C5077 c5077 = (C5077) obj;
        return this.f19129 == c5077.f19129 && this.f19128 == c5077.f19128;
    }

    public final int hashCode() {
        return (((int) this.f19129) * 31) + ((int) this.f19128);
    }
}
