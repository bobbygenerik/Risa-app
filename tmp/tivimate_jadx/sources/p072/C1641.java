package p072;

/* renamed from: ʾᵎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1641 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f6662;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f6665;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1633 f6666;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1633 f6669;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f6670;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1633 f6671;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f6673;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f6674;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f6676;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final /* synthetic */ C1637 f6677;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1633 f6679;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1635 f6675 = null;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6664 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f6678 = 0;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f6667 = 0;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f6672 = 0;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f6668 = 0;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f6663 = 0;

    public C1641(C1637 c1637, int i, C1633 c1633, C1633 c16332, C1633 c16333, C1633 c16334, int i2) {
        this.f6677 = c1637;
        this.f6676 = i;
        this.f6666 = c1633;
        this.f6669 = c16332;
        this.f6679 = c16333;
        this.f6671 = c16334;
        this.f6673 = c1637.f6613;
        this.f6662 = c1637.f6616;
        this.f6665 = c1637.f6618;
        this.f6670 = c1637.f6605;
        this.f6674 = i2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m4487() {
        return this.f6676 == 1 ? this.f6667 - this.f6677.f6602 : this.f6667;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m4488() {
        return this.f6676 == 0 ? this.f6678 - this.f6677.f6609 : this.f6678;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4489(int i) {
        C1637 c1637;
        int i2;
        int i3 = this.f6663;
        if (i3 == 0) {
            return;
        }
        int i4 = this.f6668;
        int i5 = i / i3;
        int i6 = 0;
        while (true) {
            c1637 = this.f6677;
            if (i6 >= i4 || (i2 = this.f6672 + i6) >= c1637.f6624) {
                break;
            }
            C1635 c1635 = c1637.f6632[i2];
            if (this.f6676 == 0) {
                if (c1635 != null) {
                    int[] iArr = c1635.f6546;
                    if (iArr[0] == 3 && c1635.f6572 == 0) {
                        c1637.m4480(1, i5, iArr[1], c1635.m4457(), c1635);
                    }
                }
            } else if (c1635 != null) {
                int[] iArr2 = c1635.f6546;
                if (iArr2[1] == 3 && c1635.f6543 == 0) {
                    int i7 = i5;
                    c1637.m4480(iArr2[0], c1635.m4467(), 1, i7, c1635);
                    i5 = i7;
                }
            }
            i6++;
        }
        this.f6678 = 0;
        this.f6667 = 0;
        this.f6675 = null;
        this.f6664 = 0;
        int i8 = this.f6668;
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = this.f6672 + i9;
            if (i10 >= c1637.f6624) {
                return;
            }
            C1635 c16352 = c1637.f6632[i10];
            if (this.f6676 == 0) {
                int m4467 = c16352.m4467();
                int i11 = c1637.f6609;
                if (c16352.f6536 == 8) {
                    i11 = 0;
                }
                this.f6678 = m4467 + i11 + this.f6678;
                int m4481 = c1637.m4481(c16352, this.f6674);
                if (this.f6675 == null || this.f6664 < m4481) {
                    this.f6675 = c16352;
                    this.f6664 = m4481;
                    this.f6667 = m4481;
                }
            } else {
                int m4482 = c1637.m4482(c16352, this.f6674);
                int m44812 = c1637.m4481(c16352, this.f6674);
                int i12 = c1637.f6602;
                if (c16352.f6536 == 8) {
                    i12 = 0;
                }
                this.f6667 = m44812 + i12 + this.f6667;
                if (this.f6675 == null || this.f6664 < m4482) {
                    this.f6675 = c16352;
                    this.f6664 = m4482;
                    this.f6678 = m4482;
                }
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4490(int i, boolean z, boolean z2) {
        C1637 c1637;
        int i2;
        int i3;
        int i4;
        C1635 c1635;
        boolean z3;
        int i5;
        int i6;
        char c;
        float f;
        float f2;
        float f3;
        int i7;
        float f4;
        float f5;
        int i8;
        int i9 = this.f6668;
        int i10 = 0;
        while (true) {
            c1637 = this.f6677;
            if (i10 >= i9 || (i8 = this.f6672 + i10) >= c1637.f6624) {
                break;
            }
            C1635 c16352 = c1637.f6632[i8];
            if (c16352 != null) {
                c16352.m4447();
            }
            i10++;
        }
        if (i9 == 0 || this.f6675 == null) {
            return;
        }
        boolean z4 = z2 && i == 0;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = this.f6672 + (z ? (i9 - 1) - i13 : i13);
            if (i14 >= c1637.f6624) {
                break;
            }
            C1635 c16353 = c1637.f6632[i14];
            if (c16353 != null && c16353.f6536 == 0) {
                if (i11 == -1) {
                    i11 = i13;
                }
                i12 = i13;
            }
        }
        if (this.f6676 == 0) {
            C1635 c16354 = this.f6675;
            c16354.f6574 = c1637.f6623;
            C1633 c1633 = c16354.f6564;
            C1633 c16332 = c16354.f6548;
            int i15 = this.f6662;
            if (i > 0) {
                i15 += c1637.f6602;
            }
            c16332.m4425(this.f6669, i15);
            if (z2) {
                c1633.m4425(this.f6671, this.f6670);
            }
            if (i > 0) {
                this.f6669.f6501.f6564.m4425(c16332, 0);
            }
            if (c1637.f6634 == 3 && !c16354.f6557) {
                for (int i16 = 0; i16 < i9; i16++) {
                    int i17 = this.f6672 + (z ? (i9 - 1) - i16 : i16);
                    if (i17 >= c1637.f6624) {
                        break;
                    }
                    c1635 = c1637.f6632[i17];
                    if (c1635.f6557) {
                        break;
                    }
                }
            }
            c1635 = c16354;
            int i18 = 0;
            C1635 c16355 = null;
            while (i18 < i9) {
                int i19 = z ? (i9 - 1) - i18 : i18;
                int i20 = this.f6672 + i19;
                if (i20 >= c1637.f6624) {
                    return;
                }
                C1635 c16356 = c1637.f6632[i20];
                if (c16356 == null) {
                    i6 = i9;
                    z3 = z4;
                    i5 = i12;
                    c = 3;
                } else {
                    C1633 c16333 = c16356.f6564;
                    C1633 c16334 = c16356.f6548;
                    C1633 c16335 = c16356.f6561;
                    z3 = z4;
                    if (i18 == 0) {
                        i5 = i12;
                        c16356.m4473(c16335, this.f6666, this.f6673);
                    } else {
                        i5 = i12;
                    }
                    if (i19 == 0) {
                        int i21 = c1637.f6619;
                        if (z) {
                            f = 1.0f;
                            f2 = 1.0f - c1637.f6631;
                        } else {
                            f = 1.0f;
                            f2 = c1637.f6631;
                        }
                        if (this.f6672 == 0) {
                            i7 = c1637.f6607;
                            f3 = f2;
                            if (i7 != -1) {
                                if (z) {
                                    f5 = c1637.f6621;
                                    f4 = f - f5;
                                    c16356.f6527 = i7;
                                    c16356.f6539 = f4;
                                } else {
                                    f4 = c1637.f6621;
                                    c16356.f6527 = i7;
                                    c16356.f6539 = f4;
                                }
                            }
                        } else {
                            f3 = f2;
                        }
                        if (!z2 || (i7 = c1637.f6627) == -1) {
                            i7 = i21;
                            f4 = f3;
                        } else if (z) {
                            f5 = c1637.f6633;
                            f4 = f - f5;
                        } else {
                            f4 = c1637.f6633;
                        }
                        c16356.f6527 = i7;
                        c16356.f6539 = f4;
                    }
                    if (i18 == i9 - 1) {
                        i6 = i9;
                        c16356.m4473(c16356.f6559, this.f6679, this.f6665);
                    } else {
                        i6 = i9;
                    }
                    if (c16355 != null) {
                        C1633 c16336 = c16355.f6559;
                        c16335.m4425(c16336, c1637.f6609);
                        if (i18 == i11) {
                            int i22 = this.f6673;
                            if (c16335.m4423()) {
                                c16335.f6504 = i22;
                            }
                        }
                        c16336.m4425(c16335, 0);
                        if (i18 == i5 + 1) {
                            int i23 = this.f6665;
                            if (c16336.m4423()) {
                                c16336.f6504 = i23;
                            }
                        }
                    }
                    if (c16356 != c16354) {
                        int i24 = c1637.f6634;
                        c = 3;
                        if (i24 == 3 && c1635.f6557 && c16356 != c1635 && c16356.f6557) {
                            c16356.f6524.m4425(c1635.f6524, 0);
                        } else if (i24 == 0) {
                            c16334.m4425(c16332, 0);
                        } else if (i24 == 1) {
                            c16333.m4425(c1633, 0);
                        } else if (z3) {
                            c16334.m4425(this.f6669, this.f6662);
                            c16333.m4425(this.f6671, this.f6670);
                        } else {
                            c16334.m4425(c16332, 0);
                            c16333.m4425(c1633, 0);
                        }
                    } else {
                        c = 3;
                    }
                    c16355 = c16356;
                }
                i18++;
                z4 = z3;
                i12 = i5;
                i9 = i6;
            }
            return;
        }
        int i25 = i9;
        boolean z5 = z4;
        int i26 = i12;
        C1635 c16357 = this.f6675;
        c16357.f6527 = c1637.f6619;
        C1633 c16337 = c16357.f6561;
        C1633 c16338 = c16357.f6559;
        int i27 = this.f6673;
        if (i > 0) {
            i27 += c1637.f6609;
        }
        if (z) {
            c16338.m4425(this.f6679, i27);
            if (z2) {
                c16337.m4425(this.f6666, this.f6665);
            }
            if (i > 0) {
                this.f6679.f6501.f6561.m4425(c16338, 0);
            }
        } else {
            c16337.m4425(this.f6666, i27);
            if (z2) {
                c16338.m4425(this.f6679, this.f6665);
            }
            if (i > 0) {
                this.f6666.f6501.f6559.m4425(c16337, 0);
            }
        }
        int i28 = 0;
        C1635 c16358 = null;
        while (true) {
            int i29 = i25;
            if (i28 >= i29 || (i2 = this.f6672 + i28) >= c1637.f6624) {
                return;
            }
            C1635 c16359 = c1637.f6632[i2];
            if (c16359 == null) {
                i25 = i29;
            } else {
                C1633 c16339 = c16359.f6548;
                C1633 c163310 = c16359.f6559;
                C1633 c163311 = c16359.f6561;
                if (i28 == 0) {
                    c16359.m4473(c16339, this.f6669, this.f6662);
                    int i30 = c1637.f6623;
                    float f6 = c1637.f6620;
                    if (this.f6672 == 0) {
                        i4 = c1637.f6630;
                        i25 = i29;
                        i3 = -1;
                        if (i4 != -1) {
                            f6 = c1637.f6628;
                            i30 = i4;
                            c16359.f6574 = i30;
                            c16359.f6554 = f6;
                        }
                    } else {
                        i25 = i29;
                        i3 = -1;
                    }
                    if (z2 && (i4 = c1637.f6599) != i3) {
                        f6 = c1637.f6603;
                        i30 = i4;
                    }
                    c16359.f6574 = i30;
                    c16359.f6554 = f6;
                } else {
                    i25 = i29;
                }
                if (i28 == i25 - 1) {
                    c16359.m4473(c16359.f6564, this.f6671, this.f6670);
                }
                if (c16358 != null) {
                    C1633 c163312 = c16358.f6564;
                    c16339.m4425(c163312, c1637.f6602);
                    if (i28 == i11) {
                        int i31 = this.f6662;
                        if (c16339.m4423()) {
                            c16339.f6504 = i31;
                        }
                    }
                    c163312.m4425(c16339, 0);
                    if (i28 == i26 + 1) {
                        int i32 = this.f6670;
                        if (c163312.m4423()) {
                            c163312.f6504 = i32;
                        }
                    }
                }
                if (c16359 != c16357) {
                    if (z) {
                        int i33 = c1637.f6617;
                        if (i33 == 0) {
                            c163310.m4425(c16338, 0);
                        } else if (i33 == 1) {
                            c163311.m4425(c16337, 0);
                        } else if (i33 == 2) {
                            c163311.m4425(c16337, 0);
                            c163310.m4425(c16338, 0);
                        }
                    } else {
                        int i34 = c1637.f6617;
                        if (i34 == 0) {
                            c163311.m4425(c16337, 0);
                        } else if (i34 == 1) {
                            c163310.m4425(c16338, 0);
                        } else if (i34 == 2) {
                            if (z5) {
                                c163311.m4425(this.f6666, this.f6673);
                                c163310.m4425(this.f6679, this.f6665);
                            } else {
                                c163311.m4425(c16337, 0);
                                c163310.m4425(c16338, 0);
                            }
                        }
                        c16358 = c16359;
                    }
                }
                c16358 = c16359;
            }
            i28++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4491(C1635 c1635) {
        int i = this.f6676;
        C1637 c1637 = this.f6677;
        if (i == 0) {
            int m4482 = c1637.m4482(c1635, this.f6674);
            if (c1635.f6546[0] == 3) {
                this.f6663++;
                m4482 = 0;
            }
            this.f6678 = m4482 + (c1635.f6536 != 8 ? c1637.f6609 : 0) + this.f6678;
            int m4481 = c1637.m4481(c1635, this.f6674);
            if (this.f6675 == null || this.f6664 < m4481) {
                this.f6675 = c1635;
                this.f6664 = m4481;
                this.f6667 = m4481;
            }
        } else {
            int m44822 = c1637.m4482(c1635, this.f6674);
            int m44812 = c1637.m4481(c1635, this.f6674);
            if (c1635.f6546[1] == 3) {
                this.f6663++;
                m44812 = 0;
            }
            this.f6667 = m44812 + (c1635.f6536 != 8 ? c1637.f6602 : 0) + this.f6667;
            if (this.f6675 == null || this.f6664 < m44822) {
                this.f6675 = c1635;
                this.f6664 = m44822;
                this.f6678 = m44822;
            }
        }
        this.f6668++;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4492(int i, C1633 c1633, C1633 c16332, C1633 c16333, C1633 c16334, int i2, int i3, int i4, int i5, int i6) {
        this.f6676 = i;
        this.f6666 = c1633;
        this.f6669 = c16332;
        this.f6679 = c16333;
        this.f6671 = c16334;
        this.f6673 = i2;
        this.f6662 = i3;
        this.f6665 = i4;
        this.f6670 = i5;
        this.f6674 = i6;
    }
}
