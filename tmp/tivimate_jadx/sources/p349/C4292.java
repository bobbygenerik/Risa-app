package p349;

import android.graphics.Insets;
import p021.AbstractC1031;
import p035.AbstractC1220;
import p062.C1560;

/* renamed from: ᵎⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4292 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C4292 f15887 = new C4292(0, 0, 0, 0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f15888;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f15889;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f15890;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f15891;

    public C4292(int i, int i2, int i3, int i4) {
        this.f15891 = i;
        this.f15890 = i2;
        this.f15888 = i3;
        this.f15889 = i4;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C4292 m8691(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f15887 : new C4292(i, i2, i3, i4);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C4292 m8692(Insets insets) {
        return m8691(C1560.m4351(insets), C1560.m4354(insets), C1560.m4352(insets), C1560.m4353(insets));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4292 m8693(C4292 c4292, C4292 c42922) {
        return m8691(Math.min(c4292.f15891, c42922.f15891), Math.min(c4292.f15890, c42922.f15890), Math.min(c4292.f15888, c42922.f15888), Math.min(c4292.f15889, c42922.f15889));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4292 m8694(C4292 c4292, C4292 c42922) {
        return m8691(Math.max(c4292.f15891, c42922.f15891), Math.max(c4292.f15890, c42922.f15890), Math.max(c4292.f15888, c42922.f15888), Math.max(c4292.f15889, c42922.f15889));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4292.class != obj.getClass()) {
            return false;
        }
        C4292 c4292 = (C4292) obj;
        return this.f15889 == c4292.f15889 && this.f15891 == c4292.f15891 && this.f15888 == c4292.f15888 && this.f15890 == c4292.f15890;
    }

    public final int hashCode() {
        return (((((this.f15891 * 31) + this.f15890) * 31) + this.f15888) * 31) + this.f15889;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.f15891);
        sb.append(", top=");
        sb.append(this.f15890);
        sb.append(", right=");
        sb.append(this.f15888);
        sb.append(", bottom=");
        return AbstractC1220.m3784(sb, this.f15889, '}');
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Insets m8695() {
        return AbstractC1031.m3362(this.f15891, this.f15890, this.f15888, this.f15889);
    }
}
