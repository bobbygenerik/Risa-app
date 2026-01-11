package p255;

import java.util.Arrays;

/* renamed from: יـ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3362 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f13152;

    static {
        long[] jArr = AbstractC3365.f13160;
        int m7216 = AbstractC3365.m7216(0);
        int max = m7216 > 0 ? Math.max(7, AbstractC3365.m7215(m7216)) : 0;
        if (max != 0) {
            int i = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i];
            Arrays.fill(jArr2, 0, i, -9187201950435737472L);
            jArr = jArr2;
        }
        int i2 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        int[] iArr = new int[max];
        f13152 = new int[0];
    }
}
