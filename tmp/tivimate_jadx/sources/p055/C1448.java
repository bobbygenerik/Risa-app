package p055;

import java.util.Arrays;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1448 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1448 f5640 = new C1448(new C1492[0]);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1492 f5641;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1492[] f5642;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5643;

    static {
        C1492 c1492 = new C1492(-1, -1, new int[0], new C1480[0], new long[0], new String[0]);
        int[] iArr = c1492.f5891;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = c1492.f5895;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        f5641 = new C1492(0, c1492.f5893, copyOf, (C1480[]) Arrays.copyOf(c1492.f5890, 0), copyOf2, (String[]) Arrays.copyOf(c1492.f5892, 0));
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
        AbstractC3712.m7802(3);
        AbstractC3712.m7802(4);
    }

    public C1448(C1492[] c1492Arr) {
        this.f5643 = c1492Arr.length;
        this.f5642 = c1492Arr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1448.class != obj.getClass()) {
            return false;
        }
        C1448 c1448 = (C1448) obj;
        return this.f5643 == c1448.f5643 && Arrays.equals(this.f5642, c1448.f5642);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5642) + (((((this.f5643 * 961) + ((int) 0)) * 31) + ((int) (-9223372036854775807L))) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[");
        int i = 0;
        while (true) {
            C1492[] c1492Arr = this.f5642;
            if (i >= c1492Arr.length) {
                sb.append("])");
                return sb.toString();
            }
            sb.append("adGroup(timeUs=0, ads=[");
            c1492Arr[i].getClass();
            for (int i2 = 0; i2 < c1492Arr[i].f5891.length; i2++) {
                sb.append("ad(state=");
                int i3 = c1492Arr[i].f5891[i2];
                if (i3 == 0) {
                    sb.append('_');
                } else if (i3 == 1) {
                    sb.append('R');
                } else if (i3 == 2) {
                    sb.append('S');
                } else if (i3 == 3) {
                    sb.append('P');
                } else if (i3 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(c1492Arr[i].f5895[i2]);
                sb.append(')');
                if (i2 < c1492Arr[i].f5891.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < c1492Arr.length - 1) {
                sb.append(", ");
            }
            i++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1492 m4240(int i) {
        return i < 0 ? f5641 : this.f5642[i];
    }
}
