package p072;

import p010.AbstractC0844;
import p010.C0842;
import p010.C0845;
import p010.C0846;
import p035.AbstractC1220;

/* renamed from: ʾᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1640 extends AbstractC1632 {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public boolean f6658;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f6659;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f6660;

    /* renamed from: י, reason: contains not printable characters */
    public int f6661;

    @Override // p072.C1635
    public final String toString() {
        String m3775 = AbstractC1220.m3775(new StringBuilder("[Barrier] "), this.f6547, " {");
        for (int i = 0; i < this.f6498; i++) {
            C1635 c1635 = this.f6497[i];
            if (i > 0) {
                m3775 = AbstractC1220.m3791(m3775, ", ");
            }
            StringBuilder m3020 = AbstractC0844.m3020(m3775);
            m3020.append(c1635.f6547);
            m3775 = m3020.toString();
        }
        return AbstractC1220.m3791(m3775, "}");
    }

    @Override // p072.C1635
    /* renamed from: ʽ */
    public final boolean mo4438() {
        return true;
    }

    @Override // p072.C1635
    /* renamed from: ʾˋ */
    public final boolean mo4441() {
        return this.f6658;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final boolean m4485() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.f6498;
            if (i4 >= i) {
                break;
            }
            C1635 c1635 = this.f6497[i4];
            if ((this.f6659 || c1635.mo4438()) && ((((i2 = this.f6661) == 0 || i2 == 1) && !c1635.mo4441()) || (((i3 = this.f6661) == 2 || i3 == 3) && !c1635.mo4458()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.f6498; i6++) {
            C1635 c16352 = this.f6497[i6];
            if (this.f6659 || c16352.mo4438()) {
                if (!z2) {
                    int i7 = this.f6661;
                    if (i7 == 0) {
                        i5 = c16352.mo4437(2).m4419();
                    } else if (i7 == 1) {
                        i5 = c16352.mo4437(4).m4419();
                    } else if (i7 == 2) {
                        i5 = c16352.mo4437(3).m4419();
                    } else if (i7 == 3) {
                        i5 = c16352.mo4437(5).m4419();
                    }
                    z2 = true;
                }
                int i8 = this.f6661;
                if (i8 == 0) {
                    i5 = Math.min(i5, c16352.mo4437(2).m4419());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, c16352.mo4437(4).m4419());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, c16352.mo4437(3).m4419());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, c16352.mo4437(5).m4419());
                }
            }
        }
        int i9 = i5 + this.f6660;
        int i10 = this.f6661;
        if (i10 == 0 || i10 == 1) {
            m4456(i9, i9);
        } else {
            m4460(i9, i9);
        }
        this.f6658 = true;
        return true;
    }

    @Override // p072.C1635
    /* renamed from: ᴵˊ */
    public final boolean mo4458() {
        return this.f6658;
    }

    @Override // p072.C1635
    /* renamed from: ⁱˊ */
    public final void mo4469(C0842 c0842, boolean z) {
        boolean z2;
        int i;
        int i2;
        C1633[] c1633Arr = this.f6537;
        C1633 c1633 = this.f6561;
        c1633Arr[0] = c1633;
        int i3 = 2;
        C1633 c16332 = this.f6548;
        c1633Arr[2] = c16332;
        C1633 c16333 = this.f6559;
        c1633Arr[1] = c16333;
        C1633 c16334 = this.f6564;
        c1633Arr[3] = c16334;
        for (C1633 c16335 : c1633Arr) {
            c16335.f6499 = c0842.m3005(c16335);
        }
        int i4 = this.f6661;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        C1633 c16336 = c1633Arr[i4];
        if (!this.f6658) {
            m4485();
        }
        if (this.f6658) {
            this.f6658 = false;
            int i5 = this.f6661;
            if (i5 == 0 || i5 == 1) {
                c0842.m2999(c1633.f6499, this.f6521);
                c0842.m2999(c16333.f6499, this.f6521);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    c0842.m2999(c16332.f6499, this.f6522);
                    c0842.m2999(c16334.f6499, this.f6522);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.f6498; i6++) {
            C1635 c1635 = this.f6497[i6];
            if ((this.f6659 || c1635.mo4438()) && ((((i2 = this.f6661) == 0 || i2 == 1) && c1635.f6546[0] == 3 && c1635.f6561.f6507 != null && c1635.f6559.f6507 != null) || ((i2 == 2 || i2 == 3) && c1635.f6546[1] == 3 && c1635.f6548.f6507 != null && c1635.f6564.f6507 != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = c1633.m4422() || c16333.m4422();
        boolean z4 = c16332.m4422() || c16334.m4422();
        int i7 = !(!z2 && (((i = this.f6661) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        int i8 = 0;
        while (i8 < this.f6498) {
            C1635 c16352 = this.f6497[i8];
            if (this.f6659 || c16352.mo4438()) {
                C0845 m3005 = c0842.m3005(c16352.f6537[this.f6661]);
                C1633[] c1633Arr2 = c16352.f6537;
                int i9 = this.f6661;
                C1633 c16337 = c1633Arr2[i9];
                c16337.f6499 = m3005;
                C1633 c16338 = c16337.f6507;
                int i10 = (c16338 == null || c16338.f6501 != this) ? 0 : c16337.f6503;
                if (i9 == 0 || i9 == i3) {
                    C0845 c0845 = c16336.f6499;
                    int i11 = this.f6660 - i10;
                    C0846 m3012 = c0842.m3012();
                    C0845 m3000 = c0842.m3000();
                    m3000.f3604 = 0;
                    m3012.m3028(c0845, m3005, m3000, i11);
                    c0842.m2997(m3012);
                } else {
                    C0845 c08452 = c16336.f6499;
                    int i12 = this.f6660 + i10;
                    C0846 m30122 = c0842.m3012();
                    C0845 m30002 = c0842.m3000();
                    m30002.f3604 = 0;
                    m30122.m3033(c08452, m3005, m30002, i12);
                    c0842.m2997(m30122);
                }
                c0842.m3003(c16336.f6499, m3005, this.f6660 + i10, i7);
            }
            i8++;
            i3 = 2;
        }
        int i13 = this.f6661;
        if (i13 == 0) {
            c0842.m3003(c16333.f6499, c1633.f6499, 0, 8);
            c0842.m3003(c1633.f6499, this.f6545.f6559.f6499, 0, 4);
            c0842.m3003(c1633.f6499, this.f6545.f6561.f6499, 0, 0);
            return;
        }
        if (i13 == 1) {
            c0842.m3003(c1633.f6499, c16333.f6499, 0, 8);
            c0842.m3003(c1633.f6499, this.f6545.f6561.f6499, 0, 4);
            c0842.m3003(c1633.f6499, this.f6545.f6559.f6499, 0, 0);
        } else if (i13 == 2) {
            c0842.m3003(c16334.f6499, c16332.f6499, 0, 8);
            c0842.m3003(c16332.f6499, this.f6545.f6564.f6499, 0, 4);
            c0842.m3003(c16332.f6499, this.f6545.f6548.f6499, 0, 0);
        } else if (i13 == 3) {
            c0842.m3003(c16332.f6499, c16334.f6499, 0, 8);
            c0842.m3003(c16332.f6499, this.f6545.f6548.f6499, 0, 4);
            c0842.m3003(c16332.f6499, this.f6545.f6564.f6499, 0, 0);
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final int m4486() {
        int i = this.f6661;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }
}
