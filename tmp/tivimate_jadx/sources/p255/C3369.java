package p255;

import java.util.Arrays;
import p219.AbstractC3024;

/* renamed from: יـ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3369 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13171;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13172;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13175;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13174 = AbstractC3365.f13160;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f13173 = AbstractC3362.f13152;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f13170 = AbstractC3024.f11536;

    public C3369(int i) {
        if (i >= 0) {
            m7226(AbstractC3365.m7216(i));
        } else {
            AbstractC3024.m6552("Capacity must be a positive value.");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c9, code lost:
    
        r26 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d3, code lost:
    
        if (((r2 & ((~r2) << 6)) & r19) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d5, code lost:
    
        r24 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3369.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int[] iArr = this.f13173;
        Object[] objArr = this.f13170;
        long[] jArr = this.f13174;
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
                        int i6 = iArr[i5];
                        Object obj = objArr[i5];
                        i2 += (obj != null ? obj.hashCode() : 0) ^ i6;
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
        if (this.f13172 == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        int[] iArr = this.f13173;
        Object[] objArr = this.f13170;
        long[] jArr = this.f13174;
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
                            Object obj = objArr[i5];
                            sb.append(i6);
                            sb.append("=");
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb.append(obj);
                            i2++;
                            if (i2 < this.f13172) {
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
    public final void m7226(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13171 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f13174 = jArr;
        int i3 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        this.f13175 = AbstractC3365.m7218(this.f13171) - this.f13172;
        this.f13173 = new int[max];
        this.f13170 = new Object[max];
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        r10 = -1;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7227(int r14) {
        /*
            r13 = this;
            r0 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r0 = r0 * r14
            int r1 = r0 << 16
            r0 = r0 ^ r1
            r1 = r0 & 127(0x7f, float:1.78E-43)
            int r2 = r13.f13171
            int r0 = r0 >>> 7
            r0 = r0 & r2
            r3 = 0
        Lf:
            long[] r4 = r13.f13174
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
        L3b:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L56
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r0
            r10 = r10 & r2
            int[] r11 = r13.f13173
            r11 = r11[r10]
            if (r11 != r14) goto L50
            goto L60
        L50:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L3b
        L56:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L92
            r10 = -1
        L60:
            r14 = 0
            if (r10 < 0) goto L91
            int r0 = r13.f13172
            int r0 = r0 + (-1)
            r13.f13172 = r0
            long[] r0 = r13.f13174
            int r1 = r13.f13171
            int r2 = r10 >> 3
            r3 = r10 & 7
            int r3 = r3 << 3
            r4 = r0[r2]
            r6 = 255(0xff, double:1.26E-321)
            long r6 = r6 << r3
            long r6 = ~r6
            long r4 = r4 & r6
            r6 = 254(0xfe, double:1.255E-321)
            long r6 = r6 << r3
            long r4 = r4 | r6
            r0[r2] = r4
            int r2 = r10 + (-7)
            r2 = r2 & r1
            r1 = r1 & 7
            int r2 = r2 + r1
            int r1 = r2 >> 3
            r0[r1] = r4
            java.lang.Object[] r0 = r13.f13170
            r1 = r0[r10]
            r0[r10] = r14
            return r1
        L91:
            return r14
        L92:
            int r3 = r3 + 8
            int r0 = r0 + r3
            r0 = r0 & r2
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3369.m7227(int):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006b, code lost:
    
        r20 = r11;
        r3 = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0077, code lost:
    
        if (((((~r7) << 6) & r7) & r20) == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0079, code lost:
    
        r2 = m7230(r4);
        r11 = 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0081, code lost:
    
        if (r36.f13175 != 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
    
        if (((r36.f13174[r2 >> 3] >> ((r2 & 7) << 3)) & 255) != 254) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a3, code lost:
    
        r2 = r36.f13171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a5, code lost:
    
        if (r2 <= 8) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a7, code lost:
    
        r16 = 128;
        r22 = r9;
        r5 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c2, code lost:
    
        if (java.lang.Long.compare((r36.f13172 * 32) ^ Long.MIN_VALUE, (r2 * 25) ^ Long.MIN_VALUE) > 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c4, code lost:
    
        r2 = r36.f13174;
        r6 = r36.f13171;
        r7 = r36.f13173;
        r8 = r36.f13170;
        r9 = (r6 + 7) >> 3;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d1, code lost:
    
        if (r10 >= r9) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d3, code lost:
    
        r28 = r11;
        r11 = r2[r10] & r20;
        r2[r10] = (-72340172838076674L) & ((~r11) + (r11 >>> 7));
        r10 = r10 + 1;
        r14 = r14;
        r13 = r13;
        r11 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f1, code lost:
    
        r28 = r11;
        r27 = r13;
        r26 = r14;
        r9 = r2.length;
        r10 = r9 - 1;
        r9 = r9 - 2;
        r13 = 72057594037927935L;
        r2[r9] = (r2[r9] & 72057594037927935L) | (-72057594037927936L);
        r2[r10] = r2[0];
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x010f, code lost:
    
        if (r9 == r6) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0111, code lost:
    
        r10 = r9 >> 3;
        r20 = (r9 & 7) << 3;
        r11 = (r2[r10] >> r20) & r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x011f, code lost:
    
        if (r11 != 128) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0126, code lost:
    
        if (r11 == 254) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
    
        r11 = r7[r9] * r27;
        r12 = (r11 ^ (r11 << 16)) >>> 7;
        r21 = m7230(r12);
        r12 = r12 & r6;
        r31 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0144, code lost:
    
        if ((((r21 - r12) & r6) / 8) != (((r9 - r12) & r6) / 8)) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x016a, code lost:
    
        r3 = r5;
        r30 = r6;
        r5 = r21 >> 3;
        r32 = r2[r5];
        r6 = (r21 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x017b, code lost:
    
        if (((r32 >> r6) & r28) != 128) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x017d, code lost:
    
        r34 = r13;
        r2[r5] = ((r11 & 127) << r6) | (r32 & (~(r28 << r6)));
        r2[r10] = (r2[r10] & (~(r28 << r20))) | (128 << r20);
        r7[r21] = r7[r9];
        r7[r9] = 0;
        r8[r21] = r8[r9];
        r8[r9] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01c4, code lost:
    
        r2[r2.length - 1] = (r2[0] & r34) | Long.MIN_VALUE;
        r9 = r9 + 1;
        r5 = r3;
        r6 = r30;
        r3 = r31;
        r13 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01a4, code lost:
    
        r34 = r13;
        r2[r5] = ((r11 & 127) << r6) | (r32 & (~(r28 << r6)));
        r5 = r7[r21];
        r7[r21] = r7[r9];
        r7[r9] = r5;
        r5 = r8[r21];
        r8[r21] = r8[r9];
        r8[r9] = r5;
        r9 = r9 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0146, code lost:
    
        r2[r10] = (r2[r10] & (~(r28 << r20))) | ((r11 & 127) << r20);
        r2[r2.length - 1] = (r2[0] & r13) | Long.MIN_VALUE;
        r9 = r9 + 1;
        r5 = r5;
        r6 = r6;
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0121, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01da, code lost:
    
        r3 = r5;
        r36.f13175 = p255.AbstractC3365.m7218(r36.f13171) - r36.f13172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x026d, code lost:
    
        r1 = m7230(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0273, code lost:
    
        r36.f13172++;
        r2 = r36.f13175;
        r3 = r36.f13174;
        r4 = r1 >> 3;
        r5 = r3[r4];
        r7 = (r1 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x028b, code lost:
    
        if (((r5 >> r7) & r28) != r16) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x028d, code lost:
    
        r15 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x028f, code lost:
    
        r36.f13175 = r2 - r15;
        r2 = r36.f13171;
        r5 = (r5 & (~(r28 << r7))) | (r22 << r7);
        r3[r4] = r5;
        r3[(((r1 - 7) & r2) + (r2 & 7)) >> 3] = r5;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01ea, code lost:
    
        r3 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01eb, code lost:
    
        r28 = 255;
        r26 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01f8, code lost:
    
        r2 = p255.AbstractC3365.m7217(r36.f13171);
        r5 = r36.f13174;
        r6 = r36.f13173;
        r7 = r36.f13170;
        r8 = r36.f13171;
        m7226(r2);
        r2 = r36.f13174;
        r9 = r36.f13173;
        r10 = r36.f13170;
        r11 = r36.f13171;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0212, code lost:
    
        if (r12 >= r8) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0222, code lost:
    
        if (((r5[r12 >> 3] >> ((r12 & 7) << 3)) & 255) >= r16) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0224, code lost:
    
        r13 = r6[r12];
        r14 = r13 * r13;
        r14 = r14 ^ (r14 << 16);
        r18 = r3;
        r3 = m7230(r14 >>> 7);
        r19 = r2;
        r1 = r14 & 127;
        r14 = r3 >> 3;
        r20 = (r3 & 7) << 3;
        r1 = (r19[r14] & (~(255 << r20))) | (r1 << r20);
        r19[r14] = r1;
        r19[(((r3 - 7) & r11) + (r11 & 7)) >> 3] = r1;
        r9[r3] = r13;
        r10[r3] = r7[r12];
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0264, code lost:
    
        r12 = r12 + 1;
        r3 = r18;
        r2 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0260, code lost:
    
        r19 = r2;
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01f2, code lost:
    
        r22 = r9;
        r3 = 7;
        r16 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0097, code lost:
    
        r22 = r9;
        r28 = 255;
        r26 = 1;
        r16 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0272, code lost:
    
        r1 = r2;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7228(int r37, java.lang.Object r38) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3369.m7228(int, java.lang.Object):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        r10 = -1;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7229(int r14) {
        /*
            r13 = this;
            r0 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r0 = r0 * r14
            int r1 = r0 << 16
            r0 = r0 ^ r1
            r1 = r0 & 127(0x7f, float:1.78E-43)
            int r2 = r13.f13171
            int r0 = r0 >>> 7
            r0 = r0 & r2
            r3 = 0
        Lf:
            long[] r4 = r13.f13174
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
        L3b:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L56
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r0
            r10 = r10 & r2
            int[] r11 = r13.f13173
            r11 = r11[r10]
            if (r11 != r14) goto L50
            goto L60
        L50:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L3b
        L56:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L69
            r10 = -1
        L60:
            if (r10 < 0) goto L67
            java.lang.Object[] r14 = r13.f13170
            r14 = r14[r10]
            return r14
        L67:
            r14 = 0
            return r14
        L69:
            int r3 = r3 + 8
            int r0 = r0 + r3
            r0 = r0 & r2
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3369.m7229(int):java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7230(int i) {
        int i2 = this.f13171;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13174;
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
