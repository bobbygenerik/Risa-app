package p072;

import java.util.ArrayList;
import p010.C0842;
import p018.C1020;
import p065.C1603;

/* renamed from: ʾᵎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1637 extends AbstractC1632 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public int f6599;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public C1603 f6600;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public int f6601;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public int f6602;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public float f6603;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public boolean f6604;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public int f6605;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public int f6606;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public int f6607;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public int f6608;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public int f6609;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public int[] f6610;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public int f6611;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public ArrayList f6612;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public int f6613;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f6614;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public int f6615;

    /* renamed from: י, reason: contains not printable characters */
    public int f6616;

    /* renamed from: יˉ, reason: contains not printable characters */
    public int f6617;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public int f6618;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public int f6619;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public float f6620;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public float f6621;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public C1020 f6622;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public int f6623;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public int f6624;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public C1635[] f6625;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public int f6626;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public int f6627;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public float f6628;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public C1635[] f6629;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public int f6630;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public float f6631;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public C1635[] f6632;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public float f6633;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public int f6634;

    @Override // p072.AbstractC1632
    /* renamed from: ʼˈ */
    public final void mo4414() {
        for (int i = 0; i < this.f6498; i++) {
            C1635 c1635 = this.f6497[i];
            if (c1635 != null) {
                c1635.f6534 = true;
            }
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m4480(int i, int i2, int i3, int i4, C1635 c1635) {
        C1603 c1603;
        C1635 c16352;
        C1020 c1020 = this.f6622;
        while (true) {
            c1603 = this.f6600;
            if (c1603 != null || (c16352 = this.f6545) == null) {
                break;
            } else {
                this.f6600 = ((C1636) c16352).f6586;
            }
        }
        c1020.f4043 = i;
        c1020.f4042 = i3;
        c1020.f4036 = i2;
        c1020.f4038 = i4;
        c1603.m4380(c1635, c1020);
        c1635.m4446(c1020.f4039);
        c1635.m4464(c1020.f4044);
        c1635.f6557 = c1020.f4041;
        c1635.m4461(c1020.f4040);
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final int m4481(C1635 c1635, int i) {
        C1635 c16352;
        if (c1635 != null) {
            int[] iArr = c1635.f6546;
            if (iArr[1] == 3) {
                int i2 = c1635.f6543;
                if (i2 != 0) {
                    if (i2 == 2) {
                        int i3 = (int) (c1635.f6568 * i);
                        if (i3 != c1635.m4457()) {
                            c1635.f6562 = true;
                            m4480(iArr[0], c1635.m4467(), 1, i3, c1635);
                        }
                        return i3;
                    }
                    c16352 = c1635;
                    if (i2 == 1) {
                        return c16352.m4457();
                    }
                    if (i2 == 3) {
                        return (int) ((c16352.m4467() * c16352.f6556) + 0.5f);
                    }
                }
            } else {
                c16352 = c1635;
            }
            return c16352.m4457();
        }
        return 0;
    }

    @Override // p072.C1635
    /* renamed from: ⁱˊ */
    public final void mo4469(C0842 c0842, boolean z) {
        C1635 c1635;
        float f;
        int i;
        ArrayList arrayList = this.f6612;
        super.mo4469(c0842, z);
        C1635 c16352 = this.f6545;
        boolean z2 = c16352 != null && ((C1636) c16352).f6579;
        int i2 = this.f6608;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    ((C1641) arrayList.get(i3)).m4490(i3, z2, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        ((C1641) arrayList.get(i4)).m4490(i4, z2, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.f6610 != null && this.f6625 != null && this.f6629 != null) {
                for (int i5 = 0; i5 < this.f6624; i5++) {
                    this.f6632[i5].m4447();
                }
                int[] iArr = this.f6610;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f2 = this.f6631;
                C1635 c16353 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f = 1.0f - this.f6631;
                    } else {
                        f = f2;
                        i = i8;
                    }
                    C1635 c16354 = this.f6625[i];
                    if (c16354 != null) {
                        C1633 c1633 = c16354.f6561;
                        if (c16354.f6536 != 8) {
                            if (i8 == 0) {
                                c16354.m4473(c1633, this.f6561, this.f6613);
                                c16354.f6527 = this.f6619;
                                c16354.f6539 = f;
                            }
                            if (i8 == i6 - 1) {
                                c16354.m4473(c16354.f6559, this.f6559, this.f6618);
                            }
                            if (i8 > 0 && c16353 != null) {
                                C1633 c16332 = c16353.f6559;
                                c16354.m4473(c1633, c16332, this.f6609);
                                c16353.m4473(c16332, c1633, 0);
                            }
                            c16353 = c16354;
                        }
                    }
                    i8++;
                    f2 = f;
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    C1635 c16355 = this.f6629[i9];
                    if (c16355 != null) {
                        C1633 c16333 = c16355.f6548;
                        if (c16355.f6536 != 8) {
                            if (i9 == 0) {
                                c16355.m4473(c16333, this.f6548, this.f6616);
                                c16355.f6574 = this.f6623;
                                c16355.f6554 = this.f6620;
                            }
                            if (i9 == i7 - 1) {
                                c16355.m4473(c16355.f6564, this.f6564, this.f6605);
                            }
                            if (i9 > 0 && c16353 != null) {
                                C1633 c16334 = c16353.f6564;
                                c16355.m4473(c16333, c16334, this.f6602);
                                c16353.m4473(c16334, c16333, 0);
                            }
                            c16353 = c16355;
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.f6615 == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        C1635[] c1635Arr = this.f6632;
                        if (i12 < c1635Arr.length && (c1635 = c1635Arr[i12]) != null && c1635.f6536 != 8) {
                            C1635 c16356 = this.f6625[i10];
                            C1635 c16357 = this.f6629[i11];
                            if (c1635 != c16356) {
                                c1635.m4473(c1635.f6561, c16356.f6561, 0);
                                c1635.m4473(c1635.f6559, c16356.f6559, 0);
                            }
                            if (c1635 != c16357) {
                                c1635.m4473(c1635.f6548, c16357.f6548, 0);
                                c1635.m4473(c1635.f6564, c16357.f6564, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((C1641) arrayList.get(0)).m4490(0, z2, true);
        }
        this.f6604 = false;
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final int m4482(C1635 c1635, int i) {
        C1635 c16352;
        if (c1635 != null) {
            int[] iArr = c1635.f6546;
            if (iArr[0] == 3) {
                int i2 = c1635.f6572;
                if (i2 != 0) {
                    if (i2 == 2) {
                        int i3 = (int) (c1635.f6544 * i);
                        if (i3 != c1635.m4467()) {
                            c1635.f6562 = true;
                            m4480(1, i3, iArr[1], c1635.m4457(), c1635);
                        }
                        return i3;
                    }
                    c16352 = c1635;
                    if (i2 == 1) {
                        return c16352.m4467();
                    }
                    if (i2 == 3) {
                        return (int) ((c16352.m4457() * c16352.f6556) + 0.5f);
                    }
                }
            } else {
                c16352 = c1635;
            }
            return c16352.m4467();
        }
        return 0;
    }
}
