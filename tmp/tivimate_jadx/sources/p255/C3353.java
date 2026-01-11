package p255;

import java.util.Arrays;
import p219.AbstractC3024;

/* renamed from: יـ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3353 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f13115;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13116;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13117;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object[] f13118;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13119;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13120;

    public /* synthetic */ C3353() {
        this(6);
    }

    public C3353(int i) {
        this.f13119 = AbstractC3365.f13160;
        Object[] objArr = AbstractC3024.f11536;
        this.f13118 = objArr;
        this.f13115 = objArr;
        if (i >= 0) {
            m7178(AbstractC3365.m7216(i));
        } else {
            AbstractC3024.m6552("Capacity must be a positive value.");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d7, code lost:
    
        r26 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e1, code lost:
    
        if (((r2 & ((~r2) << 6)) & r19) == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e3, code lost:
    
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
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3353.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Object[] objArr = this.f13118;
        Object[] objArr2 = this.f13115;
        long[] jArr = this.f13119;
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
                        Object obj = objArr[i5];
                        Object obj2 = objArr2[i5];
                        i2 += (obj2 != null ? obj2.hashCode() : 0) ^ (obj != null ? obj.hashCode() : 0);
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
        if (this.f13117 == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        Object[] objArr = this.f13118;
        Object[] objArr2 = this.f13115;
        long[] jArr = this.f13119;
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
                            Object obj = objArr[i5];
                            Object obj2 = objArr2[i5];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb.append(obj);
                            sb.append("=");
                            if (obj2 == this) {
                                obj2 = "(this)";
                            }
                            sb.append(obj2);
                            i2++;
                            if (i2 < this.f13117) {
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
    public final void m7178(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13116 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            int i3 = max >> 3;
            long j = 255 << ((max & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j)) | j;
            jArr = jArr2;
        }
        this.f13119 = jArr;
        this.f13120 = AbstractC3365.m7218(this.f13116) - this.f13117;
        Object[] objArr = AbstractC3024.f11536;
        this.f13118 = max == 0 ? objArr : new Object[max];
        if (max != 0) {
            objArr = new Object[max];
        }
        this.f13115 = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006b, code lost:
    
        r10 = -1;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7179(java.lang.String r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13.f13116
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.f13119
            int r5 = r1 >> 3
            r6 = r1 & 7
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
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.f13118
            r11 = r11[r10]
            boolean r11 = p152.AbstractC2444.m5562(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto La2
            r10 = -1
        L6c:
            r14 = 0
            if (r10 < 0) goto La1
            int r0 = r13.f13117
            int r0 = r0 + (-1)
            r13.f13117 = r0
            long[] r0 = r13.f13119
            int r1 = r13.f13116
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
            java.lang.Object[] r0 = r13.f13118
            r0[r10] = r14
            java.lang.Object[] r0 = r13.f13115
            r1 = r0[r10]
            r0[r10] = r14
            return r1
        La1:
            return r14
        La2:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3353.m7179(java.lang.String):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        r20 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
    
        if (((((~r9) << 6) & r9) & (-9187201950435737472L)) == 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
    
        r2 = m7182(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008d, code lost:
    
        if (r33.f13120 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a1, code lost:
    
        if (((r33.f13119[r2 >> 3] >> ((r2 & 7) << 3)) & 255) != 254) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        r2 = r33.f13116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
    
        if (r2 <= 8) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
    
        r18 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cb, code lost:
    
        if (java.lang.Long.compare((r33.f13117 * 32) ^ Long.MIN_VALUE, (r2 * 25) ^ Long.MIN_VALUE) > 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cd, code lost:
    
        r2 = r33.f13119;
        r3 = r33.f13116;
        r4 = r33.f13118;
        r6 = r33.f13115;
        r7 = (r3 + 7) >> 3;
        r23 = 255;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00dc, code lost:
    
        if (r8 >= r7) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
    
        r10 = r2[r8] & r13;
        r2[r8] = (-72340172838076674L) & ((~r10) + (r10 >>> 7));
        r8 = r8 + 1;
        r11 = r11;
        r13 = -9187201950435737472L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fa, code lost:
    
        r27 = r11;
        r9 = 7;
        r7 = r2.length;
        r8 = r7 - 1;
        r7 = r7 - 2;
        r2[r7] = (r2[r7] & 72057594037927935L) | (-72057594037927936L);
        r2[r8] = r2[0];
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0114, code lost:
    
        if (r7 == r3) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0116, code lost:
    
        r8 = r7 >> 3;
        r12 = (r7 & 7) << 3;
        r10 = (r2[r8] >> r12) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0123, code lost:
    
        if (r10 != 128) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x012a, code lost:
    
        if (r10 == 254) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012d, code lost:
    
        r10 = r4[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012f, code lost:
    
        if (r10 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0131, code lost:
    
        r10 = r10.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0137, code lost:
    
        r10 = r10 * r20;
        r11 = (r10 ^ (r10 << 16)) >>> 7;
        r13 = m7182(r11);
        r11 = r11 & r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x014d, code lost:
    
        if ((((r13 - r11) & r3) / 8) != (((r7 - r11) & r3) / 8)) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x016d, code lost:
    
        r25 = r9;
        r9 = r13 >> 3;
        r29 = r2[r9];
        r11 = (r13 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x017d, code lost:
    
        if (((r29 >> r11) & 255) != 128) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x017f, code lost:
    
        r14 = r3;
        r26 = r4;
        r2[r9] = (r29 & (~(255 << r11))) | ((r10 & 127) << r11);
        r2[r8] = (r2[r8] & (~(255 << r12))) | (128 << r12);
        r26[r13] = r26[r7];
        r26[r7] = null;
        r6[r13] = r6[r7];
        r6[r7] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ce, code lost:
    
        r2[r2.length - 1] = r2[0];
        r7 = r7 + 1;
        r3 = r14;
        r9 = r25;
        r4 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01aa, code lost:
    
        r14 = r3;
        r26 = r4;
        r2[r9] = (r29 & (~(255 << r11))) | ((r10 & 127) << r11);
        r3 = r26[r13];
        r26[r13] = r26[r7];
        r26[r7] = r3;
        r3 = r6[r13];
        r6[r13] = r6[r7];
        r6[r7] = r3;
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014f, code lost:
    
        r2[r8] = ((~(255 << r12)) & r2[r8]) | ((r10 & 127) << r12);
        r2[r2.length - 1] = r2[0];
        r7 = r7 + 1;
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0136, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0125, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01de, code lost:
    
        r33.f13120 = p255.AbstractC3365.m7218(r33.f13116) - r33.f13117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x026c, code lost:
    
        r2 = m7182(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0270, code lost:
    
        r33.f13117++;
        r1 = r33.f13120;
        r3 = r33.f13119;
        r4 = r2 >> 3;
        r5 = r3[r4];
        r7 = (r2 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0288, code lost:
    
        if (((r5 >> r7) & r23) != r18) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x028a, code lost:
    
        r15 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x028c, code lost:
    
        r33.f13120 = r1 - r15;
        r1 = r33.f13116;
        r5 = (r5 & (~(r23 << r7))) | (r27 << r7);
        r3[r4] = r5;
        r3[(((r2 - 7) & r1) + (r1 & 7)) >> 3] = r5;
        r1 = ~r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01ed, code lost:
    
        r23 = 255;
        r27 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01f7, code lost:
    
        r2 = p255.AbstractC3365.m7217(r33.f13116);
        r3 = r33.f13119;
        r4 = r33.f13118;
        r6 = r33.f13115;
        r7 = r33.f13116;
        m7178(r2);
        r2 = r33.f13119;
        r8 = r33.f13118;
        r9 = r33.f13115;
        r10 = r33.f13116;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0211, code lost:
    
        if (r11 >= r7) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0220, code lost:
    
        if (((r3[r11 >> 3] >> ((r11 & 7) << 3)) & 255) >= r18) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0222, code lost:
    
        r12 = r4[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0224, code lost:
    
        if (r12 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0226, code lost:
    
        r13 = r12.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x022c, code lost:
    
        r13 = r13 * r20;
        r13 = r13 ^ (r13 << 16);
        r14 = m7182(r13 >>> 7);
        r17 = r2;
        r1 = r13 & 127;
        r13 = r14 >> 3;
        r21 = (r14 & 7) << 3;
        r1 = (r17[r13] & (~(255 << r21))) | (r1 << r21);
        r17[r13] = r1;
        r17[(((r14 - 7) & r10) + (r10 & 7)) >> 3] = r1;
        r8[r14] = r12;
        r9[r14] = r6[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0265, code lost:
    
        r11 = r11 + 1;
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x022b, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0263, code lost:
    
        r17 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f4, code lost:
    
        r18 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00a3, code lost:
    
        r23 = 255;
        r27 = r11;
        r18 = 128;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7180(java.lang.Object r34, java.lang.Object r35) {
        /*
            Method dump skipped, instructions count: 703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3353.m7180(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r10 = -1;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7181(java.lang.Object r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13.f13116
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.f13119
            int r5 = r1 >> 3
            r6 = r1 & 7
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
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.f13118
            r11 = r11[r10]
            boolean r11 = p152.AbstractC2444.m5562(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L75
            r10 = -1
        L6c:
            if (r10 < 0) goto L73
            java.lang.Object[] r14 = r13.f13115
            r14 = r14[r10]
            return r14
        L73:
            r14 = 0
            return r14
        L75:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3353.m7181(java.lang.Object):java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7182(int i) {
        int i2 = this.f13116;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13119;
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
