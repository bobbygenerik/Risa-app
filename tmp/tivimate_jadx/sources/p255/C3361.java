package p255;

import java.util.Arrays;

/* renamed from: יـ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3361 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int[] f13146;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13147;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13148;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f13149;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13150;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13151;

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3361)) {
            return false;
        }
        C3361 c3361 = (C3361) obj;
        if (c3361.f13148 != this.f13148) {
            return false;
        }
        int[] iArr = this.f13149;
        int[] iArr2 = this.f13146;
        long[] jArr = this.f13150;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                int i3 = 0;
                while (i3 < i2) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = iArr[i4];
                        int i6 = iArr2[i4];
                        int m7204 = c3361.m7204(i5);
                        if (m7204 < 0) {
                            break loop0;
                        }
                        z2 = z3;
                        if (i6 != c3361.f13146[m7204]) {
                            break loop0;
                        }
                    } else {
                        z2 = z3;
                    }
                    j >>= 8;
                    i3++;
                    z3 = z2;
                }
                z = z3;
                if (i2 != 8) {
                    return z;
                }
            } else {
                z = z3;
            }
            if (i == length) {
                return z;
            }
            i++;
            z3 = z;
        }
        return false;
    }

    public final int hashCode() {
        int[] iArr = this.f13149;
        int[] iArr2 = this.f13146;
        long[] jArr = this.f13150;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        i2 += iArr2[i5] ^ iArr[i5];
                    }
                    j >>= 8;
                }
                if (i3 != 8) {
                    return i2;
                }
            }
            if (i == length) {
                return i2;
            }
            i++;
        }
    }

    public final String toString() {
        if (this.f13148 == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        int[] iArr = this.f13149;
        int[] iArr2 = this.f13146;
        long[] jArr = this.f13150;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            int i5 = (i << 3) + i4;
                            int i6 = iArr[i5];
                            int i7 = iArr2[i5];
                            sb.append(i6);
                            sb.append("=");
                            sb.append(i7);
                            i2++;
                            if (i2 < this.f13148) {
                                sb.append(", ");
                            }
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7203(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13147 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f13150 = jArr;
        int i3 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        this.f13151 = AbstractC3365.m7218(this.f13147) - this.f13148;
        this.f13149 = new int[max];
        this.f13146 = new int[max];
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m7204(int i) {
        int i2 = (-862048943) * i;
        int i3 = i2 ^ (i2 << 16);
        int i4 = i3 & 127;
        int i5 = this.f13147;
        int i6 = (i3 >>> 7) & i5;
        int i7 = 0;
        while (true) {
            long[] jArr = this.f13150;
            int i8 = i6 >> 3;
            int i9 = (i6 & 7) << 3;
            long j = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j2 = (i4 * 72340172838076673L) ^ j;
            for (long j3 = (~j2) & (j2 - 72340172838076673L) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i6) & i5;
                if (this.f13149[numberOfTrailingZeros] == i) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i7 += 8;
            i6 = (i6 + i7) & i5;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7205(int i) {
        int i2 = this.f13147;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13150;
            int i5 = i3 >> 3;
            int i6 = (i3 & 7) << 3;
            long j = ((jArr[i5 + 1] << (64 - i6)) & ((-i6) >> 63)) | (jArr[i5] >>> i6);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i3 + (Long.numberOfTrailingZeros(j2) >> 3)) & i2;
            }
            i4 += 8;
            i3 = (i3 + i4) & i2;
        }
    }
}
