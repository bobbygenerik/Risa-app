package p255;

import java.util.Arrays;
import p219.AbstractC3024;

/* renamed from: יـ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3363 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f13153;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13154;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13155;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long[] f13156;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long[] f13157;

    public /* synthetic */ C3363() {
        this(6);
    }

    public C3363(int i) {
        this.f13157 = AbstractC3365.f13160;
        this.f13156 = AbstractC3364.f13158;
        if (i >= 0) {
            m7214(AbstractC3365.m7216(i));
        } else {
            AbstractC3024.m6552("Capacity must be a positive value.");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3363)) {
            return false;
        }
        C3363 c3363 = (C3363) obj;
        if (c3363.f13154 != this.f13154) {
            return false;
        }
        long[] jArr = this.f13156;
        long[] jArr2 = this.f13157;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr2[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && !c3363.m7207(jArr[(i << 3) + i3])) {
                            return false;
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
        }
        return true;
    }

    public final int hashCode() {
        long[] jArr = this.f13156;
        long[] jArr2 = this.f13157;
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
                        long j2 = jArr[(i << 3) + i4];
                        i2 += (int) (j2 ^ (j2 >>> 32));
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
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        long[] jArr = this.f13156;
        long[] jArr2 = this.f13157;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i = 0;
            int i2 = 0;
            loop0: while (true) {
                long j = jArr2[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            long j2 = jArr[(i << 3) + i4];
                            if (i2 == -1) {
                                sb.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i2 != 0) {
                                sb.append((CharSequence) ", ");
                            }
                            sb.append(j2);
                            i2++;
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
        sb.append((CharSequence) "]");
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7206(int i) {
        this.f13154--;
        long[] jArr = this.f13157;
        int i2 = this.f13153;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
    
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006b, code lost:
    
        r10 = -1;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7207(long r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = 32
            long r1 = r18 >>> r1
            long r1 = r18 ^ r1
            int r1 = (int) r1
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r0.f13153
            int r1 = r1 >>> 7
            r1 = r1 & r3
            r4 = 0
            r5 = r4
        L19:
            long[] r6 = r0.f13157
            int r7 = r1 >> 3
            r8 = r1 & 7
            int r8 = r8 << 3
            r9 = r6[r7]
            long r9 = r9 >>> r8
            r11 = 1
            int r7 = r7 + r11
            r12 = r6[r7]
            int r6 = 64 - r8
            long r6 = r12 << r6
            long r12 = (long) r8
            long r12 = -r12
            r8 = 63
            long r12 = r12 >> r8
            long r6 = r6 & r12
            long r6 = r6 | r9
            long r8 = (long) r2
            r12 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r8 = r8 * r12
            long r8 = r8 ^ r6
            long r12 = r8 - r12
            long r8 = ~r8
            long r8 = r8 & r12
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r8 = r8 & r12
        L45:
            r14 = 0
            int r10 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r10 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r8)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            long[] r14 = r0.f13156
            r15 = r14[r10]
            int r14 = (r15 > r18 ? 1 : (r15 == r18 ? 0 : -1))
            if (r14 != 0) goto L5c
            goto L6c
        L5c:
            r14 = 1
            long r14 = r8 - r14
            long r8 = r8 & r14
            goto L45
        L62:
            long r8 = ~r6
            r10 = 6
            long r8 = r8 << r10
            long r6 = r6 & r8
            long r6 = r6 & r12
            int r6 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1))
            if (r6 == 0) goto L70
            r10 = -1
        L6c:
            if (r10 < 0) goto L6f
            return r11
        L6f:
            return r4
        L70:
            int r5 = r5 + 8
            int r1 = r1 + r5
            r1 = r1 & r3
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3363.m7207(long):boolean");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m7208(long j) {
        long j2;
        int i;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i2;
        long[] jArr3;
        char c = ' ';
        int i3 = -862048943;
        int i4 = ((int) (j ^ (j >>> 32))) * (-862048943);
        int i5 = i4 ^ (i4 << 16);
        int i6 = i5 >>> 7;
        int i7 = i5 & 127;
        int i8 = this.f13153;
        int i9 = i6 & i8;
        int i10 = 0;
        while (true) {
            long[] jArr4 = this.f13157;
            int i11 = i9 >> 3;
            int i12 = (i9 & 7) << 3;
            int i13 = 1;
            int i14 = i10;
            long j4 = (((-i12) >> 63) & (jArr4[i11 + 1] << (64 - i12))) | (jArr4[i11] >>> i12);
            long j5 = i7;
            char c2 = c;
            int i15 = i7;
            long j6 = j4 ^ (j5 * 72340172838076673L);
            long j7 = -9187201950435737472L;
            long j8 = (~j6) & (j6 - 72340172838076673L) & (-9187201950435737472L);
            while (j8 != 0) {
                int numberOfTrailingZeros = (i9 + (Long.numberOfTrailingZeros(j8) >> 3)) & i8;
                int i16 = i3;
                if (this.f13156[numberOfTrailingZeros] == j) {
                    return numberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i3 = i16;
            }
            int i17 = i3;
            if ((((~j4) << 6) & j4 & (-9187201950435737472L)) != 0) {
                int m7209 = m7209(i6);
                long j9 = 255;
                if (this.f13155 != 0 || ((this.f13157[m7209 >> 3] >> ((m7209 & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    i = 1;
                    j3 = 128;
                } else {
                    int i18 = this.f13153;
                    if (i18 > 8) {
                        j3 = 128;
                        if (Long.compare((this.f13154 * 32) ^ Long.MIN_VALUE, (i18 * 25) ^ Long.MIN_VALUE) <= 0) {
                            long[] jArr5 = this.f13157;
                            int i19 = this.f13153;
                            long[] jArr6 = this.f13156;
                            int i20 = (i19 + 7) >> 3;
                            int i21 = 0;
                            while (i21 < i20) {
                                long j10 = j9;
                                long j11 = jArr5[i21] & j7;
                                jArr5[i21] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
                                i21++;
                                j9 = j10;
                                j7 = -9187201950435737472L;
                            }
                            j2 = j9;
                            int length = jArr5.length;
                            int i22 = length - 1;
                            int i23 = length - 2;
                            long j12 = 72057594037927935L;
                            jArr5[i23] = (jArr5[i23] & 72057594037927935L) | (-72057594037927936L);
                            jArr5[i22] = jArr5[0];
                            int i24 = 0;
                            while (i24 != i19) {
                                int i25 = i24 >> 3;
                                int i26 = (i24 & 7) << 3;
                                long j13 = (jArr5[i25] >> i26) & j2;
                                if (j13 != 128 && j13 == 254) {
                                    long j14 = jArr6[i24];
                                    int i27 = ((int) (j14 ^ (j14 >>> c2))) * i17;
                                    int i28 = (i27 ^ (i27 << 16)) >>> 7;
                                    int m72092 = m7209(i28);
                                    int i29 = i28 & i19;
                                    long j15 = j12;
                                    if (((m72092 - i29) & i19) / 8 == ((i24 - i29) & i19) / 8) {
                                        jArr5[i25] = ((r7 & 127) << i26) | (jArr5[i25] & (~(j2 << i26)));
                                        jArr5[jArr5.length - 1] = (jArr5[0] & j15) | Long.MIN_VALUE;
                                        i24++;
                                        i13 = i13;
                                        c2 = c2;
                                        j12 = j15;
                                    } else {
                                        char c3 = c2;
                                        int i30 = i13;
                                        int i31 = m72092 >> 3;
                                        long j16 = jArr5[i31];
                                        int i32 = (m72092 & 7) << 3;
                                        if (((j16 >> i32) & j2) == 128) {
                                            i2 = i19;
                                            jArr3 = jArr6;
                                            jArr5[i31] = ((~(j2 << i32)) & j16) | ((r7 & 127) << i32);
                                            jArr5[i25] = (jArr5[i25] & (~(j2 << i26))) | (128 << i26);
                                            jArr3[m72092] = jArr3[i24];
                                            jArr3[i24] = 0;
                                        } else {
                                            i2 = i19;
                                            jArr3 = jArr6;
                                            jArr5[i31] = ((r7 & 127) << i32) | ((~(j2 << i32)) & j16);
                                            long j17 = jArr3[m72092];
                                            jArr3[m72092] = jArr3[i24];
                                            jArr3[i24] = j17;
                                            i24--;
                                        }
                                        jArr5[jArr5.length - 1] = (jArr5[0] & j15) | Long.MIN_VALUE;
                                        i24++;
                                        i19 = i2;
                                        i13 = i30;
                                        c2 = c3;
                                        j12 = j15;
                                        jArr6 = jArr3;
                                    }
                                } else {
                                    i24++;
                                }
                            }
                            i = i13;
                            this.f13155 = AbstractC3365.m7218(this.f13153) - this.f13154;
                            m7209 = m7209(i6);
                        }
                    } else {
                        j3 = 128;
                    }
                    j2 = 255;
                    i = 1;
                    int m7217 = AbstractC3365.m7217(this.f13153);
                    long[] jArr7 = this.f13157;
                    long[] jArr8 = this.f13156;
                    int i33 = this.f13153;
                    m7214(m7217);
                    long[] jArr9 = this.f13157;
                    long[] jArr10 = this.f13156;
                    int i34 = this.f13153;
                    int i35 = 0;
                    while (i35 < i33) {
                        if (((jArr7[i35 >> 3] >> ((i35 & 7) << 3)) & 255) < j3) {
                            long j18 = jArr8[i35];
                            int i36 = ((int) ((j18 >>> c2) ^ j18)) * i17;
                            int i37 = i36 ^ (i36 << 16);
                            int m72093 = m7209(i37 >>> 7);
                            jArr = jArr9;
                            jArr2 = jArr7;
                            long j19 = i37 & 127;
                            int i38 = m72093 >> 3;
                            int i39 = (m72093 & 7) << 3;
                            long j20 = (jArr[i38] & (~(255 << i39))) | (j19 << i39);
                            jArr[i38] = j20;
                            jArr[(((m72093 - 7) & i34) + (i34 & 7)) >> 3] = j20;
                            jArr10[m72093] = j18;
                        } else {
                            jArr = jArr9;
                            jArr2 = jArr7;
                        }
                        i35++;
                        jArr7 = jArr2;
                        jArr9 = jArr;
                    }
                    m7209 = m7209(i6);
                }
                this.f13154++;
                int i40 = this.f13155;
                long[] jArr11 = this.f13157;
                int i41 = m7209 >> 3;
                long j21 = jArr11[i41];
                int i42 = (m7209 & 7) << 3;
                this.f13155 = i40 - (((j21 >> i42) & j2) == j3 ? i : 0);
                int i43 = this.f13153;
                long j22 = (j21 & (~(j2 << i42))) | (j5 << i42);
                jArr11[i41] = j22;
                jArr11[(((m7209 - 7) & i43) + (i43 & 7)) >> 3] = j22;
                return m7209;
            }
            i10 = i14 + 8;
            i9 = (i9 + i10) & i8;
            i7 = i15;
            i3 = i17;
            c = c2;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m7209(int i) {
        int i2 = this.f13153;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f13157;
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

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0065, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        r10 = -1;
     */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7210(long r15) {
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
            int r2 = r14.f13153
            int r0 = r0 >>> 7
            r0 = r0 & r2
            r3 = 0
        L15:
            long[] r4 = r14.f13157
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
            long[] r11 = r14.f13156
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
            if (r4 == 0) goto L6e
            r10 = -1
        L68:
            if (r10 < 0) goto L6d
            r14.m7206(r10)
        L6d:
            return
        L6e:
            int r3 = r3 + 8
            int r0 = r0 + r3
            r0 = r0 & r2
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3363.m7210(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a9, code lost:
    
        r26 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
    
        if (((r1 & ((~r1) << 6)) & r18) == 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b5, code lost:
    
        r9 = -1;
     */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7211(p255.C3363 r28) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p255.C3363.m7211(יـ.ᵔʾ):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7212(C3363 c3363) {
        long[] jArr = c3363.f13156;
        long[] jArr2 = c3363.f13157;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr2[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        long j2 = jArr[(i << 3) + i3];
                        this.f13156[m7208(j2)] = j2;
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7213(long j) {
        this.f13156[m7208(j)] = j;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7214(int i) {
        long[] jArr;
        int max = i > 0 ? Math.max(7, AbstractC3365.m7215(i)) : 0;
        this.f13153 = max;
        if (max == 0) {
            jArr = AbstractC3365.f13160;
        } else {
            int i2 = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f13157 = jArr;
        int i3 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        this.f13155 = AbstractC3365.m7218(this.f13153) - this.f13154;
        this.f13156 = new long[max];
    }
}
