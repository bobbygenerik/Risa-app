package com.google.crypto.tink.shaded.protobuf;

import com.google.android.gms.internal.measurement.ˏʻ;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0694 extends ˏʻ {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ int f2963;

    public /* synthetic */ C0694(int i) {
        this.f2963 = i;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static int m2468(long j, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            ˏʻ r2 = AbstractC0727.f3014;
            if (i > -12) {
                return -1;
            }
            return i;
        }
        if (i2 == 1) {
            return AbstractC0727.m2578(i, AbstractC0733.m2617(j, bArr));
        }
        if (i2 == 2) {
            return AbstractC0727.m2579(i, AbstractC0733.m2617(j, bArr), AbstractC0733.m2617(j + 1, bArr));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2469(byte[] r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0694.m2469(byte[], int, int):java.lang.String");
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int m2470(byte[] bArr, int i, int i2) {
        int i3;
        long j;
        byte b;
        int i4 = i;
        byte b2 = -96;
        byte b3 = -62;
        switch (this.f2963) {
            case 0:
                while (i4 < i2 && bArr[i4] >= 0) {
                    i4++;
                }
                if (i4 < i2) {
                    while (i4 < i2) {
                        int i5 = i4 + 1;
                        byte b4 = bArr[i4];
                        if (b4 >= 0) {
                            i4 = i5;
                        } else if (b4 < -32) {
                            if (i5 >= i2) {
                                return b4;
                            }
                            if (b4 < -62) {
                                return -1;
                            }
                            i4 += 2;
                            if (bArr[i5] > -65) {
                                return -1;
                            }
                        } else if (b4 < -16) {
                            if (i5 >= i2 - 1) {
                                return AbstractC0727.m2581(bArr, i5, i2);
                            }
                            int i6 = i4 + 2;
                            byte b5 = bArr[i5];
                            if (b5 > -65) {
                                return -1;
                            }
                            if (b4 == -32 && b5 < -96) {
                                return -1;
                            }
                            if (b4 == -19 && b5 >= -96) {
                                return -1;
                            }
                            i4 += 3;
                            if (bArr[i6] > -65) {
                                return -1;
                            }
                        } else {
                            if (i5 >= i2 - 2) {
                                return AbstractC0727.m2581(bArr, i5, i2);
                            }
                            int i7 = i4 + 2;
                            byte b6 = bArr[i5];
                            if (b6 > -65 || (((b6 + 112) + (b4 << 28)) >> 30) != 0) {
                                return -1;
                            }
                            int i8 = i4 + 3;
                            if (bArr[i7] > -65) {
                                return -1;
                            }
                            i4 += 4;
                            if (bArr[i8] > -65) {
                                return -1;
                            }
                        }
                    }
                }
                return 0;
            default:
                if ((i4 | i2 | (bArr.length - i2)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i4), Integer.valueOf(i2)));
                }
                byte b7 = 0;
                long j2 = i4;
                int i9 = (int) (i2 - j2);
                if (i9 < 16) {
                    i3 = 0;
                    b = 0;
                    j = j2;
                } else {
                    int i10 = 8 - (((int) j2) & 7);
                    i3 = 0;
                    j = j2;
                    long j3 = j;
                    while (true) {
                        if (i3 < i10) {
                            long j4 = j3 + 1;
                            if (AbstractC0733.m2617(j3, bArr) < 0) {
                                b = 0;
                            } else {
                                i3++;
                                j3 = j4;
                            }
                        } else {
                            while (true) {
                                int i11 = i3 + 8;
                                if (i11 <= i9) {
                                    b = b7;
                                    if ((AbstractC0733.f3024.m2545(AbstractC0733.f3030 + j3, bArr) & (-9187201950435737472L)) == 0) {
                                        j3 += 8;
                                        i3 = i11;
                                        b7 = b;
                                    }
                                } else {
                                    b = b7;
                                }
                            }
                            while (true) {
                                if (i3 < i9) {
                                    long j5 = j3 + 1;
                                    if (AbstractC0733.m2617(j3, bArr) >= 0) {
                                        i3++;
                                        j3 = j5;
                                    }
                                } else {
                                    i3 = i9;
                                }
                            }
                        }
                    }
                }
                int i12 = i9 - i3;
                long j6 = j + i3;
                while (true) {
                    byte b8 = b;
                    while (true) {
                        if (i12 > 0) {
                            long j7 = j6 + 1;
                            b8 = AbstractC0733.m2617(j6, bArr);
                            if (b8 >= 0) {
                                i12--;
                                j6 = j7;
                            } else {
                                j6 = j7;
                            }
                        }
                    }
                    if (i12 == 0) {
                        return b;
                    }
                    int i13 = i12 - 1;
                    if (b8 < -32) {
                        if (i13 == 0) {
                            return b8;
                        }
                        i12 -= 2;
                        if (b8 < b3) {
                            return -1;
                        }
                        long j8 = j6 + 1;
                        if (AbstractC0733.m2617(j6, bArr) > -65) {
                            return -1;
                        }
                        j6 = j8;
                    } else if (b8 < -16) {
                        if (i13 < 2) {
                            return m2468(j6, bArr, b8, i13);
                        }
                        i12 -= 3;
                        long j9 = j6 + 1;
                        byte m2617 = AbstractC0733.m2617(j6, bArr);
                        if (m2617 > -65) {
                            return -1;
                        }
                        if (b8 == -32 && m2617 < b2) {
                            return -1;
                        }
                        if (b8 == -19 && m2617 >= b2) {
                            return -1;
                        }
                        j6 += 2;
                        if (AbstractC0733.m2617(j9, bArr) > -65) {
                            return -1;
                        }
                    } else {
                        if (i13 < 3) {
                            return m2468(j6, bArr, b8, i13);
                        }
                        i12 -= 4;
                        long j10 = j6 + 1;
                        byte m26172 = AbstractC0733.m2617(j6, bArr);
                        if (m26172 > -65 || (((m26172 + 112) + (b8 << 28)) >> 30) != 0) {
                            return -1;
                        }
                        long j11 = j6 + 2;
                        if (AbstractC0733.m2617(j10, bArr) > -65) {
                            return -1;
                        }
                        j6 += 3;
                        if (AbstractC0733.m2617(j11, bArr) > -65) {
                            return -1;
                        }
                    }
                    b2 = -96;
                    b3 = -62;
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
    
        return r27 + r5;
     */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2471(java.lang.String r25, byte[] r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0694.m2471(java.lang.String, byte[], int, int):int");
    }
}
