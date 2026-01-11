package p255;

import java.util.ConcurrentModificationException;
import p152.AbstractC2444;
import p219.AbstractC3024;

/* renamed from: יـ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3355 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f13126 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f13125 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int m7183(C3370 c3370, Object obj, int i) {
        int i2 = c3370.f13176;
        if (i2 == 0) {
            return -1;
        }
        try {
            int m6554 = AbstractC3024.m6554(c3370.f13177, i2, i);
            if (m6554 < 0 || AbstractC2444.m5562(obj, c3370.f13178[m6554])) {
                return m6554;
            }
            int i3 = m6554 + 1;
            while (i3 < i2 && c3370.f13177[i3] == i) {
                if (AbstractC2444.m5562(obj, c3370.f13178[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m6554 - 1; i4 >= 0 && c3370.f13177[i4] == i; i4--) {
                if (AbstractC2444.m5562(obj, c3370.f13178[i4])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
