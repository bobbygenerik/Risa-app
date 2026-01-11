package p280;

import p164.C2571;
import p435.AbstractC5154;

/* renamed from: ٴʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3559 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2571 f13913;

    static {
        C2571 c2571 = new C2571("xn--".getBytes(AbstractC5154.f19435));
        c2571.f9766 = "xn--";
        f13913 = c2571;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m7502(int i) {
        if (i < 26) {
            return i + 97;
        }
        if (i < 36) {
            return i + 22;
        }
        throw new IllegalStateException(("unexpected digit: " + i).toString());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m7503(int i, int i2, boolean z) {
        int i3 = z ? i / 700 : i / 2;
        int i4 = (i3 / i2) + i3;
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return ((i4 * 36) / (i4 + 38)) + i5;
    }
}
