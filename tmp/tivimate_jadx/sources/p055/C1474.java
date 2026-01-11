package p055;

import java.util.Arrays;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1474 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f5766;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1495[] f5767;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f5768;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f5769;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5770;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
    }

    public C1474(String str, C1495... c1495Arr) {
        AbstractC3731.m7849(c1495Arr.length > 0);
        this.f5769 = str;
        this.f5767 = c1495Arr;
        this.f5770 = c1495Arr.length;
        int m4250 = AbstractC1464.m4250(c1495Arr[0].f5930);
        this.f5766 = m4250 == -1 ? AbstractC1464.m4250(c1495Arr[0].f5913) : m4250;
        String str2 = c1495Arr[0].f5910;
        str2 = (str2 == null || str2.equals("und")) ? "" : str2;
        int i = c1495Arr[0].f5940 | 16384;
        for (int i2 = 1; i2 < c1495Arr.length; i2++) {
            String str3 = c1495Arr[i2].f5910;
            if (!str2.equals((str3 == null || str3.equals("und")) ? "" : str3)) {
                m4279(i2, "languages", c1495Arr[0].f5910, c1495Arr[i2].f5910);
                return;
            } else {
                if (i != (c1495Arr[i2].f5940 | 16384)) {
                    m4279(i2, "role flags", Integer.toBinaryString(c1495Arr[0].f5940), Integer.toBinaryString(c1495Arr[i2].f5940));
                    return;
                }
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m4279(int i, String str, String str2, String str3) {
        AbstractC3731.m7863("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1474.class == obj.getClass()) {
            C1474 c1474 = (C1474) obj;
            if (this.f5769.equals(c1474.f5769) && Arrays.equals(this.f5767, c1474.f5767)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f5768 == 0) {
            this.f5768 = Arrays.hashCode(this.f5767) + AbstractC1220.m3780(527, 31, this.f5769);
        }
        return this.f5768;
    }

    public final String toString() {
        return this.f5769 + ": " + Arrays.toString(this.f5767);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4280(C1495 c1495) {
        int i = 0;
        while (true) {
            C1495[] c1495Arr = this.f5767;
            if (i >= c1495Arr.length) {
                return -1;
            }
            if (c1495 == c1495Arr[i]) {
                return i;
            }
            i++;
        }
    }
}
