package p255;

import java.util.Arrays;
import java.util.NoSuchElementException;
import p152.AbstractC2444;

/* renamed from: יـ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3358 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long[] f13134;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13135;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13136;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object[] f13137;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13138;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13139;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3358)) {
            return false;
        }
        C3358 c3358 = (C3358) obj;
        if (c3358.f13136 != this.f13136) {
            return false;
        }
        Object[] objArr = this.f13137;
        long[] jArr = this.f13134;
        long[] jArr2 = this.f13138;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i = 0;
            loop0: while (true) {
                long j = jArr2[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj2 = objArr[i4];
                            long j2 = jArr[i4];
                            int m7192 = c3358.m7192(obj2);
                            if (m7192 < 0 || j2 != c3358.f13134[m7192]) {
                                break loop0;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int i2;
        Object[] objArr = this.f13137;
        long[] jArr = this.f13134;
        long[] jArr2 = this.f13138;
        int length = jArr2.length - 2;
        if (length < 0) {
            return 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            long j = jArr2[i3];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i5 = 8 - ((~(i3 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((255 & j) < 128) {
                        int i7 = (i3 << 3) + i6;
                        Object obj = objArr[i7];
                        long j2 = jArr[i7];
                        i2 = i3;
                        i4 += ((int) (j2 ^ (j2 >>> 32))) ^ (obj != null ? obj.hashCode() : 0);
                    } else {
                        i2 = i3;
                    }
                    j >>= 8;
                    i6++;
                    i3 = i2;
                }
                int i8 = i3;
                if (i5 != 8) {
                    return i4;
                }
                i = i8;
            } else {
                i = i3;
            }
            if (i == length) {
                return i4;
            }
            i3 = i + 1;
        }
    }

    public final String toString() {
        int i;
        int i2;
        if (this.f13136 == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        Object[] objArr = this.f13137;
        long[] jArr = this.f13134;
        long[] jArr2 = this.f13138;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                long j = jArr2[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((255 & j) < 128) {
                            int i7 = (i3 << 3) + i6;
                            Object obj = objArr[i7];
                            i2 = i3;
                            long j2 = jArr[i7];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb.append(obj);
                            sb.append("=");
                            sb.append(j2);
                            i4++;
                            if (i4 < this.f13136) {
                                sb.append(", ");
                            }
                        } else {
                            i2 = i3;
                        }
                        j >>= 8;
                        i6++;
                        i3 = i2;
                    }
                    int i8 = i3;
                    if (i5 != 8) {
                        break;
                    }
                    i = i8;
                } else {
                    i = i3;
                }
                if (i == length) {
                    break;
                }
                i3 = i + 1;
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m7189(String str) {
        int m7192 = m7192(str);
        if (m7192 >= 0) {
            return this.f13134[m7192];
        }
        throw new NoSuchElementException("There is no key " + ((Object) str) + " in the map");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m7190() {
        return this.f13136;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7191(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13135 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f13138 = jArr;
        int i3 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        this.f13139 = AbstractC3365.m7218(this.f13135) - this.f13136;
        this.f13137 = new Object[max];
        this.f13134 = new long[max];
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m7192(Object obj) {
        int i = 0;
        int hashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i2 = hashCode ^ (hashCode << 16);
        int i3 = i2 & 127;
        int i4 = this.f13135;
        int i5 = i2 >>> 7;
        while (true) {
            int i6 = i5 & i4;
            long[] jArr = this.f13138;
            int i7 = i6 >> 3;
            int i8 = (i6 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (i3 * 72340172838076673L) ^ j;
            for (long j3 = (~j2) & (j2 - 72340172838076673L) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i6) & i4;
                if (AbstractC2444.m5562(this.f13137[numberOfTrailingZeros], obj)) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i += 8;
            i5 = i6 + i;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7193(int i) {
        int i2 = this.f13135;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13138;
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        r20 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
    
        if (((((~r9) << 6) & r9) & (-9187201950435737472L)) == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
    
        r2 = m7193(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008d, code lost:
    
        if (r39.f13139 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a1, code lost:
    
        if (((r39.f13138[r2 >> 3] >> ((r2 & 7) << 3)) & 255) != 254) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        r2 = r39.f13135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
    
        if (r2 <= 8) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
    
        r25 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cb, code lost:
    
        if (java.lang.Long.compare((r39.f13136 * 32) ^ Long.MIN_VALUE, (r2 * 25) ^ Long.MIN_VALUE) > 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cd, code lost:
    
        r2 = r39.f13138;
        r3 = r39.f13135;
        r4 = r39.f13137;
        r6 = r39.f13134;
        r7 = (r3 + 7) >> 3;
        r29 = 255;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00dc, code lost:
    
        if (r8 >= r7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
    
        r10 = r2[r8] & r13;
        r2[r8] = (-72340172838076674L) & ((~r10) + (r10 >>> 7));
        r8 = r8 + 1;
        r11 = r11;
        r13 = -9187201950435737472L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fa, code lost:
    
        r33 = r11;
        r9 = 7;
        r7 = r2.length;
        r8 = r7 - 1;
        r7 = r7 - 2;
        r12 = 72057594037927935L;
        r2[r7] = (r2[r7] & 72057594037927935L) | (-72057594037927936L);
        r2[r8] = r2[0];
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0115, code lost:
    
        if (r7 == r3) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0117, code lost:
    
        r8 = r7 >> 3;
        r14 = (r7 & 7) << 3;
        r10 = (r2[r8] >> r14) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0124, code lost:
    
        if (r10 != 128) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x012b, code lost:
    
        if (r10 == 254) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012e, code lost:
    
        r10 = r4[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0130, code lost:
    
        if (r10 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0132, code lost:
    
        r10 = r10.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0138, code lost:
    
        r10 = r10 * r20;
        r11 = (r10 ^ (r10 << 16)) >>> 7;
        r19 = m7193(r11);
        r11 = r11 & r3;
        r31 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0151, code lost:
    
        if ((((r19 - r11) & r3) / 8) != (((r7 - r11) & r3) / 8)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0153, code lost:
    
        r37 = r12;
        r2[r8] = ((r10 & 127) << r14) | (r2[r8] & (~(255 << r14)));
        r2[r2.length - 1] = (r2[0] & r37) | Long.MIN_VALUE;
        r7 = r7 + 1;
        r9 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0172, code lost:
    
        r12 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0175, code lost:
    
        r37 = r12;
        r9 = r19 >> 3;
        r11 = r2[r9];
        r13 = (r19 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0185, code lost:
    
        if (((r11 >> r13) & 255) != 128) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0187, code lost:
    
        r22 = r3;
        r32 = r4;
        r2[r9] = ((~(255 << r13)) & r11) | ((r10 & 127) << r13);
        r2[r8] = (r2[r8] & (~(255 << r14))) | (128 << r14);
        r32[r19] = r32[r7];
        r32[r7] = null;
        r6[r19] = r6[r7];
        r6[r7] = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01d6, code lost:
    
        r2[r2.length - 1] = (r2[0] & r37) | Long.MIN_VALUE;
        r7 = r7 + 1;
        r3 = r22;
        r9 = r31;
        r4 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01b2, code lost:
    
        r22 = r3;
        r32 = r4;
        r2[r9] = ((~(255 << r13)) & r11) | ((r10 & 127) << r13);
        r3 = r32[r19];
        r32[r19] = r32[r7];
        r32[r7] = r3;
        r3 = r6[r19];
        r6[r19] = r6[r7];
        r6[r7] = r3;
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0137, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0126, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01ea, code lost:
    
        r39.f13139 = p255.AbstractC3365.m7218(r39.f13135) - r39.f13136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0278, code lost:
    
        r2 = m7193(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x027c, code lost:
    
        r39.f13136++;
        r1 = r39.f13139;
        r3 = r39.f13138;
        r4 = r2 >> 3;
        r5 = r3[r4];
        r7 = (r2 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0294, code lost:
    
        if (((r5 >> r7) & r29) != r25) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0296, code lost:
    
        r15 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0298, code lost:
    
        r39.f13139 = r1 - r15;
        r1 = r39.f13135;
        r5 = (r5 & (~(r29 << r7))) | (r33 << r7);
        r3[r4] = r5;
        r3[(((r2 - 7) & r1) + (r1 & 7)) >> 3] = r5;
        r1 = ~r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01f9, code lost:
    
        r29 = 255;
        r33 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0203, code lost:
    
        r2 = p255.AbstractC3365.m7217(r39.f13135);
        r3 = r39.f13138;
        r4 = r39.f13137;
        r6 = r39.f13134;
        r7 = r39.f13135;
        m7191(r2);
        r2 = r39.f13138;
        r8 = r39.f13137;
        r9 = r39.f13134;
        r10 = r39.f13135;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x021d, code lost:
    
        if (r11 >= r7) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x022c, code lost:
    
        if (((r3[r11 >> 3] >> ((r11 & 7) << 3)) & 255) >= r25) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x022e, code lost:
    
        r12 = r4[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0230, code lost:
    
        if (r12 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0232, code lost:
    
        r13 = r12.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0238, code lost:
    
        r13 = r13 * r20;
        r13 = r13 ^ (r13 << 16);
        r14 = m7193(r13 >>> 7);
        r17 = r2;
        r1 = r13 & 127;
        r13 = r14 >> 3;
        r18 = (r14 & 7) << 3;
        r1 = (r17[r13] & (~(255 << r18))) | (r1 << r18);
        r17[r13] = r1;
        r17[(((r14 - 7) & r10) + (r10 & 7)) >> 3] = r1;
        r8[r14] = r12;
        r9[r14] = r6[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0271, code lost:
    
        r11 = r11 + 1;
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0237, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x026f, code lost:
    
        r17 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0200, code lost:
    
        r25 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a3, code lost:
    
        r29 = 255;
        r33 = r11;
        r25 = 128;
     */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7194(java.lang.String r40, long r41) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3358.m7194(java.lang.String, long):void");
    }
}
