package p255;

import java.util.Arrays;
import p219.AbstractC3024;

/* renamed from: יـ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3357 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f13128;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13129;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13130;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long[] f13131;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13132;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13133;

    public /* synthetic */ C3357() {
        this(6);
    }

    public C3357(int i) {
        this.f13132 = AbstractC3365.f13160;
        this.f13131 = AbstractC3364.f13158;
        this.f13128 = AbstractC3024.f11536;
        if (i >= 0) {
            m7184(AbstractC3365.m7216(i));
        } else {
            AbstractC3024.m6552("Capacity must be a positive value.");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d8, code lost:
    
        if (((r2 & ((~r2) << 6)) & r22) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00da, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3357.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        long[] jArr = this.f13131;
        Object[] objArr = this.f13128;
        long[] jArr2 = this.f13132;
        int length = jArr2.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long j = jArr2[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        long j2 = jArr[i5];
                        Object obj = objArr[i5];
                        i2 += (obj != null ? obj.hashCode() : 0) ^ ((int) (j2 ^ (j2 >>> 32)));
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
        int i;
        int i2;
        if (this.f13130 == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        long[] jArr = this.f13131;
        Object[] objArr = this.f13128;
        long[] jArr2 = this.f13132;
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
                            i2 = i3;
                            long j2 = jArr[i7];
                            Object obj = objArr[i7];
                            sb.append(j2);
                            sb.append("=");
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb.append(obj);
                            i4++;
                            if (i4 < this.f13130) {
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
    public final void m7184(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13129 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f13132 = jArr;
        int i3 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        this.f13133 = AbstractC3365.m7218(this.f13129) - this.f13130;
        this.f13131 = new long[max];
        this.f13128 = new Object[max];
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7185(int i) {
        long[] jArr;
        C3357 c3357 = this;
        long[] jArr2 = c3357.f13132;
        long[] jArr3 = c3357.f13131;
        Object[] objArr = c3357.f13128;
        int i2 = c3357.f13129;
        m7184(i);
        long[] jArr4 = c3357.f13132;
        long[] jArr5 = c3357.f13131;
        Object[] objArr2 = c3357.f13128;
        int i3 = c3357.f13129;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr2[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                long j = jArr3[i4];
                int i5 = ((int) ((j >>> 32) ^ j)) * (-862048943);
                int i6 = i5 ^ (i5 << 16);
                int m7188 = c3357.m7188(i6 >>> 7);
                long j2 = i6 & 127;
                int i7 = m7188 >> 3;
                int i8 = (m7188 & 7) << 3;
                jArr = jArr2;
                long j3 = (jArr4[i7] & (~(255 << i8))) | (j2 << i8);
                jArr4[i7] = j3;
                jArr4[(((m7188 - 7) & i3) + (i3 & 7)) >> 3] = j3;
                jArr5[m7188] = j;
                objArr2[m7188] = objArr[i4];
            } else {
                jArr = jArr2;
            }
            i4++;
            c3357 = this;
            jArr2 = jArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0072, code lost:
    
        r20 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007d, code lost:
    
        if (((((~r7) << 6) & r7) & (-9187201950435737472L)) == 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007f, code lost:
    
        r1 = m7188(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0089, code lost:
    
        if (r39.f13133 != 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009d, code lost:
    
        if (((r39.f13132[r1 >> 3] >> ((r1 & 7) << 3)) & 255) != 254) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a7, code lost:
    
        r1 = r39.f13129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a9, code lost:
    
        if (r1 <= 8) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
    
        r25 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c5, code lost:
    
        if (java.lang.Long.compare((r39.f13130 * 32) ^ Long.MIN_VALUE, (r1 * 25) ^ Long.MIN_VALUE) > 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c7, code lost:
    
        r1 = r39.f13132;
        r2 = r39.f13129;
        r3 = r39.f13131;
        r5 = r39.f13128;
        r6 = (r2 + 7) >> 3;
        r29 = 255;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d6, code lost:
    
        if (r7 >= r6) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d8, code lost:
    
        r33 = r11;
        r11 = r1[r7] & r33;
        r1[r7] = (-72340172838076674L) & ((~r11) + (r11 >>> 7));
        r7 = r7 + 1;
        r14 = r14;
        r13 = r13;
        r11 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f5, code lost:
    
        r22 = r13;
        r8 = r14;
        r6 = r1.length;
        r7 = r6 - 1;
        r6 = r6 - 2;
        r13 = 72057594037927935L;
        r1[r6] = (r1[r6] & 72057594037927935L) | (-72057594037927936L);
        r1[r7] = r1[0];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0110, code lost:
    
        if (r6 == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0112, code lost:
    
        r7 = r6 >> 3;
        r19 = (r6 & 7) << 3;
        r11 = (r1[r7] >> r19) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0120, code lost:
    
        if (r11 != 128) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0127, code lost:
    
        if (r11 == 254) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x012a, code lost:
    
        r11 = r3[r6];
        r11 = ((int) (r11 ^ (r11 >>> r22))) * r20;
        r12 = (r11 ^ (r11 << 16)) >>> 7;
        r31 = m7188(r12);
        r12 = r12 & r2;
        r33 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x014a, code lost:
    
        if ((((r31 - r12) & r2) / 8) != (((r6 - r12) & r2) / 8)) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x016f, code lost:
    
        r34 = r13;
        r8 = r31 >> 3;
        r12 = r1[r8];
        r14 = (r31 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x017f, code lost:
    
        if (((r12 >> r14) & 255) != 128) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0181, code lost:
    
        r32 = r2;
        r36 = r3;
        r1[r8] = ((~(255 << r14)) & r12) | ((r11 & 127) << r14);
        r1[r7] = (r1[r7] & (~(255 << r19))) | (128 << r19);
        r36[r31] = r36[r6];
        r36[r6] = 0;
        r5[r31] = r5[r6];
        r5[r6] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01d0, code lost:
    
        r1[r1.length - 1] = (r1[0] & r34) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r2 = r32;
        r8 = r33;
        r13 = r34;
        r3 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01ac, code lost:
    
        r32 = r2;
        r36 = r3;
        r1[r8] = ((~(255 << r14)) & r12) | ((r11 & 127) << r14);
        r2 = r36[r31];
        r36[r31] = r36[r6];
        r36[r6] = r2;
        r2 = r5[r31];
        r5[r31] = r5[r6];
        r5[r6] = r2;
        r6 = r6 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x014c, code lost:
    
        r34 = r13;
        r1[r7] = ((r11 & 127) << r19) | (r1[r7] & (~(255 << r19)));
        r1[r1.length - 1] = (r1[0] & r34) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r8 = r33;
        r13 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0122, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01e7, code lost:
    
        r33 = r8;
        r39.f13133 = p255.AbstractC3365.m7218(r39.f13129) - r39.f13130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0206, code lost:
    
        r1 = m7188(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x020a, code lost:
    
        r17 = r1;
        r39.f13130++;
        r1 = r39.f13133;
        r2 = r39.f13132;
        r3 = r17 >> 3;
        r4 = r2[r3];
        r6 = (r17 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0224, code lost:
    
        if (((r4 >> r6) & r29) != r25) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0226, code lost:
    
        r7 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x022a, code lost:
    
        r39.f13133 = r1 - r7;
        r1 = r39.f13129;
        r4 = (r4 & (~(r29 << r6))) | (r9 << r6);
        r2[r3] = r4;
        r2[(((r17 - 7) & r1) + (r1 & 7)) >> 3] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0229, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01f5, code lost:
    
        r29 = 255;
        r33 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01fd, code lost:
    
        m7185(p255.AbstractC3365.m7217(r39.f13129));
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01fa, code lost:
    
        r25 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x009f, code lost:
    
        r29 = 255;
        r33 = 1;
        r25 = 128;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7186(long r40, java.lang.Object r42) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3357.m7186(long, java.lang.Object):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0065, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        r10 = -1;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7187(long r15) {
        /*
            r14 = this;
            r0 = 32
            long r0 = r15 >>> r0
            long r0 = r0 ^ r15
            int r0 = (int) r0
            r1 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r0 = r0 * r1
            int r1 = r0 << 16
            r0 = r0 ^ r1
            r1 = r0 & 127(0x7f, float:1.78E-43)
            int r2 = r14.f13129
            int r0 = r0 >>> 7
            r0 = r0 & r2
            r3 = 0
        L15:
            long[] r4 = r14.f13132
            int r5 = r0 >> 3
            r6 = r0 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r1
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L41:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L5e
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r0
            r10 = r10 & r2
            long[] r11 = r14.f13131
            r12 = r11[r10]
            int r11 = (r12 > r15 ? 1 : (r12 == r15 ? 0 : -1))
            if (r11 != 0) goto L58
            goto L68
        L58:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L41
        L5e:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L71
            r10 = -1
        L68:
            if (r10 < 0) goto L6f
            java.lang.Object[] r0 = r14.f13128
            r0 = r0[r10]
            return r0
        L6f:
            r0 = 0
            return r0
        L71:
            int r3 = r3 + 8
            int r0 = r0 + r3
            r0 = r0 & r2
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3357.m7187(long):java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7188(int i) {
        int i2 = this.f13129;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13132;
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
