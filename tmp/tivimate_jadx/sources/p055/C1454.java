package p055;

import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1454 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1454 f5657;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0993 f5658;

    static {
        C0982 c0982 = AbstractC0993.f3977;
        f5657 = new C1454(C0956.f3901);
        AbstractC3712.m7802(0);
    }

    public C1454(C0956 c0956) {
        this.f5658 = AbstractC0993.m3264(c0956);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1454.class != obj.getClass()) {
            return false;
        }
        return this.f5658.equals(((C1454) obj).f5658);
    }

    public final int hashCode() {
        return this.f5658.hashCode();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m4244(int i) {
        int i2 = 0;
        while (true) {
            AbstractC0993 abstractC0993 = this.f5658;
            if (i2 >= abstractC0993.size()) {
                return false;
            }
            C1453 c1453 = (C1453) abstractC0993.get(i2);
            boolean[] zArr = c1453.f5654;
            int length = zArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (!zArr[i3]) {
                    i3++;
                } else if (c1453.f5655.f5766 == i) {
                    return true;
                }
            }
            i2++;
        }
    }
}
