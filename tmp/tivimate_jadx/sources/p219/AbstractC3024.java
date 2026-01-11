package p219;

/* renamed from: ˏי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3024 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f11537 = new int[0];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object[] f11536 = new Object[0];

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final void m6552(String str) {
        throw new IllegalArgumentException(str);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int m6553(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else {
                if (j2 <= j) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int m6554(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }
}
