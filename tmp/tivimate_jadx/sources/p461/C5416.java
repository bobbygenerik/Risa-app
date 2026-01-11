package p461;

import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: ﾞᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5416 implements InterfaceC5415 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int[] f20683 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f20684;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f20685;

    @Override // p461.InterfaceC5415
    /* renamed from: ﹳٴ */
    public final int mo10848(byte[] bArr, int i, int i2) {
        char c;
        int i3;
        int i4;
        int i5;
        switch (this.f20685) {
            case 0:
                char c2 = 16;
                int i6 = (i + i2) - 16;
                int i7 = i;
                while (i7 <= i6) {
                    int i8 = f20683[bArr[i7] & 31];
                    int i9 = 5;
                    int i10 = 0;
                    while (i10 < 3) {
                        if (((i8 >>> i10) & 1) == 0) {
                            c = c2;
                            i3 = i9;
                        } else {
                            int i11 = i9 >>> 3;
                            int i12 = i9 & 7;
                            c = c2;
                            long j = 0;
                            int i13 = 0;
                            while (i13 < 6) {
                                j |= (bArr[(i7 + i11) + i13] & 255) << (i13 * 8);
                                i13++;
                                i9 = i9;
                            }
                            i3 = i9;
                            long j2 = j >>> i12;
                            if (((j2 >>> 37) & 15) == 5 && ((j2 >>> 9) & 7) == 0) {
                                long j3 = (((((((int) (j2 >>> 36)) & 1) << 20) | ((int) ((j2 >>> 13) & 1048575))) << 4) - ((this.f20684 + i7) - i)) >>> 4;
                                long j4 = ((((j2 & (-77309403137L)) | ((j3 & 1048575) << 13)) | ((j3 & 1048576) << c)) << i12) | (((1 << i12) - 1) & j);
                                for (int i14 = 0; i14 < 6; i14++) {
                                    bArr[i7 + i11 + i14] = (byte) (j4 >>> (i14 * 8));
                                }
                            }
                        }
                        i10++;
                        i9 = i3 + 41;
                        c2 = c;
                    }
                    i7 += 16;
                }
                int i15 = i7 - i;
                this.f20684 += i15;
                return i15;
            case 1:
                int i16 = (i + i2) - 4;
                int i17 = i;
                while (i17 <= i16) {
                    byte b = bArr[i17 + 3];
                    if ((b & 252) == 148) {
                        ᵎ.ﹳᐧ(bArr, i17, ((ᵎ.ﾞʻ(i17, bArr) + (-(((this.f20684 + i17) - i) >>> 2))) & 67108863) | (-1811939328));
                    } else if ((b & 159) == 144) {
                        int i18 = ᵎ.ﾞʻ(i17, bArr);
                        int i19 = ((i18 >>> 29) & 3) | ((i18 >>> 3) & 2097148);
                        if (((i19 + 131072) & 1835008) == 0) {
                            int i20 = i19 + (-(((this.f20684 + i17) - i) >>> 12));
                            ᵎ.ﹳᐧ(bArr, i17, (i18 & (-1879048161)) | ((i20 & 3) << 29) | ((262140 & i20) << 3) | ((-(i20 & 131072)) & 14680064));
                        }
                    }
                    i17 += 4;
                }
                int i21 = i17 - i;
                this.f20684 += i21;
                return i21;
            case 2:
                int i22 = (i + i2) - 4;
                int i23 = i;
                while (i23 <= i22) {
                    if ((bArr[i23 + 3] & 255) == 235) {
                        int i24 = i23 + 2;
                        int i25 = i23 + 1;
                        int i26 = (((((bArr[i24] & 255) << 16) | ((bArr[i25] & 255) << 8)) | (bArr[i23] & 255)) << 2) - ((this.f20684 + i23) - i);
                        bArr[i24] = (byte) (i26 >>> 18);
                        bArr[i25] = (byte) (i26 >>> 10);
                        bArr[i23] = (byte) (i26 >>> 2);
                    }
                    i23 += 4;
                }
                int i27 = i23 - i;
                this.f20684 += i27;
                return i27;
            case 3:
                int i28 = (i + i2) - 4;
                int i29 = i;
                while (i29 <= i28) {
                    int i30 = i29 + 1;
                    int i31 = bArr[i30];
                    if ((i31 & 248) == 240) {
                        int i32 = i29 + 3;
                        int i33 = bArr[i32];
                        if ((i33 & 248) == 248) {
                            int i34 = ((i31 & 7) << 19) | ((bArr[i29] & 255) << 11) | ((i33 & 7) << 8);
                            int i35 = i29 + 2;
                            int i36 = ((i34 | (bArr[i35] & 255)) << 1) - ((this.f20684 + i29) - i);
                            bArr[i30] = (byte) (240 | ((i36 >>> 20) & 7));
                            bArr[i29] = (byte) (i36 >>> 12);
                            bArr[i32] = (byte) (((i36 >>> 9) & 7) | 248);
                            bArr[i35] = (byte) (i36 >>> 1);
                            i29 = i35;
                        }
                    }
                    i29 += 2;
                }
                int i37 = i29 - i;
                this.f20684 += i37;
                return i37;
            case 4:
                int i38 = (i + i2) - 4;
                int i39 = i;
                while (i39 <= i38) {
                    if ((bArr[i39] & 252) == 72 && (bArr[i39 + 3] & 3) == 1) {
                        ᵎ.ᵔﹳ(bArr, i39, ((ᵎ.ٴﹶ(i39, bArr) + (-((this.f20684 + i39) - i))) & 67108860) | 1207959553);
                    }
                    i39 += 4;
                }
                int i40 = i39 - i;
                this.f20684 += i40;
                return i40;
            case 5:
                int i41 = (i + i2) - 8;
                int i42 = i;
                while (i42 <= i41) {
                    int i43 = bArr[i42];
                    int i44 = i43 & 255;
                    if (i44 == 239) {
                        int i45 = i42 + 1;
                        int i46 = bArr[i45];
                        if ((i46 & 13) == 0) {
                            int i47 = i42 + 2;
                            int i48 = i42 + 3;
                            int i49 = ((((i46 & 240) << 13) | ((bArr[i47] & 255) << 9)) | ((bArr[i48] & 255) << 1)) - ((this.f20684 + i42) - i);
                            bArr[i45] = (byte) ((i46 & 15) | ((i49 >>> 8) & 240));
                            bArr[i47] = (byte) (((i49 >>> 16) & 15) | ((i49 >>> 7) & 16) | ((i49 << 4) & 224));
                            bArr[i48] = (byte) (((i49 >>> 13) & 128) | ((i49 >>> 4) & 127));
                            i42 = i47;
                        }
                    } else if ((i43 & 127) == 23) {
                        int i50 = ((bArr[i42 + 1] & 255) << 8) | i44;
                        int i51 = i42 + 2;
                        int i52 = i50 | ((bArr[i51] & 255) << 16) | ((bArr[i42 + 3] & 255) << 24);
                        if ((i52 & 3712) != 0) {
                            i51 = i42 + 4;
                            int i53 = ᵎ.ﾞʻ(i51, bArr);
                            if ((((i52 << 8) ^ i53) & 1015811) == 3) {
                                i4 = (i52 & (-4096)) + (i53 >>> 20);
                                i5 = (i53 << 12) | 279;
                                ᵎ.ﹳᐧ(bArr, i42, i5);
                                ᵎ.ﹳᐧ(bArr, i42 + 4, i4);
                                i42 += 6;
                            }
                            i42 = i51;
                        } else {
                            int i54 = i52 >>> 27;
                            if (((i52 - 12544) & 16256) < (i54 & 29)) {
                                int i55 = ᵎ.ٴﹶ(i42 + 4, bArr) - ((this.f20684 + i42) - i);
                                i4 = (i52 >>> 12) | (i55 << 20);
                                i5 = ((i55 + 2048) & (-4096)) | 23 | (i54 << 7);
                                ᵎ.ﹳᐧ(bArr, i42, i5);
                                ᵎ.ﹳᐧ(bArr, i42 + 4, i4);
                                i42 += 6;
                            }
                            i42 = i51;
                        }
                    }
                    i42 += 2;
                }
                int i56 = i42 - i;
                this.f20684 += i56;
                return i56;
            default:
                int i57 = (i + i2) - 4;
                int i58 = i;
                while (i58 <= i57) {
                    byte b2 = bArr[i58];
                    if ((b2 == 64 && (bArr[i58 + 1] & 192) == 0) || (b2 == Byte.MAX_VALUE && (bArr[i58 + 1] & 192) == 192)) {
                        ᵎ.ᵔﹳ(bArr, i58, ((((ᵎ.ٴﹶ(i58, bArr) + (-(((this.f20684 + i58) - i) >>> 2))) << 9) >> 9) & 1073741823) | 1073741824);
                    }
                    i58 += 4;
                }
                int i59 = i58 - i;
                this.f20684 += i59;
                return i59;
        }
    }
}
