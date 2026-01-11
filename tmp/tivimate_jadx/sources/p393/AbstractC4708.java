package p393;

import com.bumptech.glide.ˈ;
import p035.AbstractC1220;
import p164.C2571;
import p164.C2577;
import p164.C2599;
import p307.AbstractC3740;
import p435.AbstractC5154;

/* renamed from: ⁱٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4708 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f17797 = "0123456789abcdef".getBytes(AbstractC5154.f19435);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final long[] f17796 = {-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String m9422(C2599 c2599, long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (c2599.m5841(j2) == 13) {
                String m5831 = c2599.m5831(j2, AbstractC5154.f19435);
                c2599.skip(2L);
                return m5831;
            }
        }
        String m58312 = c2599.m5831(j, AbstractC5154.f19435);
        c2599.skip(1L);
        return m58312;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        if (r18 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0053, code lost:
    
        return -2;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095 A[LOOP:0: B:8:0x0019->B:29:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094 A[SYNTHETIC] */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m9423(p164.C2599 r16, p164.C2583 r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 159
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p393.AbstractC4708.m9423(ˊᐧ.ﾞᴵ, ˊᐧ.ˏי, boolean):int");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean m9424(C2577 c2577, int i, byte[] bArr, int i2, int i3) {
        int i4 = c2577.f9778;
        byte[] bArr2 = c2577.f9783;
        while (i2 < i3) {
            if (i == i4) {
                c2577 = c2577.f9784;
                byte[] bArr3 = c2577.f9783;
                bArr2 = bArr3;
                i = c2577.f9782;
                i4 = c2577.f9778;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final long m9425(C2599 c2599, C2571 c2571, long j, long j2, int i) {
        C2577 c2577;
        byte[] bArr;
        long j3 = j;
        long j4 = j2;
        long j5 = i;
        ˈ.ᵔᵢ(c2571.mo5749(), 0, j5);
        if (i <= 0) {
            throw new IllegalArgumentException("byteCount == 0");
        }
        long j6 = 0;
        if (j3 < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("fromIndex < 0: ", j3).toString());
        }
        if (j3 > j4) {
            StringBuilder m3770 = AbstractC1220.m3770(j3, "fromIndex > toIndex: ", " > ");
            m3770.append(j4);
            throw new IllegalArgumentException(m3770.toString().toString());
        }
        long j7 = c2599.f9835;
        if (j4 > j7) {
            j4 = j7;
        }
        if (j3 == j4 || (c2577 = c2599.f9834) == null) {
            return -1L;
        }
        if (j7 - j3 >= j3) {
            while (true) {
                long j8 = (c2577.f9778 - c2577.f9782) + j6;
                if (j8 > j3) {
                    break;
                }
                c2577 = c2577.f9784;
                j6 = j8;
            }
            byte[] mo5756 = c2571.mo5756();
            byte b = mo5756[0];
            long min = Math.min(j4, (c2599.f9835 - j5) + 1);
            long j9 = j6;
            while (j9 < min) {
                byte[] bArr2 = c2577.f9783;
                int min2 = (int) Math.min(c2577.f9778, (c2577.f9782 + min) - j9);
                for (int i2 = (int) ((c2577.f9782 + j3) - j9); i2 < min2; i2++) {
                    if (bArr2[i2] == b && m9424(c2577, i2 + 1, mo5756, 1, i)) {
                        return (i2 - c2577.f9782) + j9;
                    }
                }
                j9 += c2577.f9778 - c2577.f9782;
                c2577 = c2577.f9784;
                j3 = j9;
            }
            return -1L;
        }
        while (j7 > j3) {
            c2577 = c2577.f9781;
            j7 -= c2577.f9778 - c2577.f9782;
        }
        byte[] mo57562 = c2571.mo5756();
        byte b2 = mo57562[0];
        byte[] bArr3 = mo57562;
        long min3 = Math.min(j4, (c2599.f9835 - j5) + 1);
        while (j7 < min3) {
            byte[] bArr4 = c2577.f9783;
            int min4 = (int) Math.min(c2577.f9778, (c2577.f9782 + min3) - j7);
            int i3 = (int) ((c2577.f9782 + j3) - j7);
            while (i3 < min4) {
                if (bArr4[i3] == b2) {
                    bArr = bArr3;
                    if (m9424(c2577, i3 + 1, bArr, 1, i)) {
                        return (i3 - c2577.f9782) + j7;
                    }
                } else {
                    bArr = bArr3;
                }
                i3++;
                bArr3 = bArr;
            }
            j7 += c2577.f9778 - c2577.f9782;
            c2577 = c2577.f9784;
            j3 = j7;
        }
        return -1L;
    }
}
