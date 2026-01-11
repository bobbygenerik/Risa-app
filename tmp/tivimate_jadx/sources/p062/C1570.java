package p062;

/* renamed from: ʾˈ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1570 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final double f6134;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC1545 f6135;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC1545 f6136;

    public C1570(EnumC1545 enumC1545, EnumC1545 enumC15452, double d) {
        this.f6136 = enumC1545;
        this.f6135 = enumC15452;
        this.f6134 = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1570)) {
            return false;
        }
        C1570 c1570 = (C1570) obj;
        return this.f6136 == c1570.f6136 && this.f6135 == c1570.f6135 && Double.compare(this.f6134, c1570.f6134) == 0;
    }

    public final int hashCode() {
        int hashCode = (this.f6135.hashCode() + (this.f6136.hashCode() * 31)) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.f6134);
        return hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    public final String toString() {
        return "DataCollectionStatus(performance=" + this.f6136 + ", crashlytics=" + this.f6135 + ", sessionSamplingRate=" + this.f6134 + ')';
    }
}
