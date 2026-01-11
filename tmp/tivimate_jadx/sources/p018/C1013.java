package p018;

import java.util.ArrayList;
import p010.AbstractC0844;
import p072.AbstractC1632;
import p072.C1633;
import p072.C1635;

/* renamed from: ʼʼ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1013 extends AbstractC1014 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C1023 f4006;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C1021 f4007;

    public final String toString() {
        return "VerticalRun " + this.f4015.f6547;
    }

    /* JADX WARN: Type inference failed for: r1v120, types: [ʼʼ.ﹳٴ, ʼʼ.ᵎﹶ] */
    @Override // p018.AbstractC1014
    /* renamed from: ˈ */
    public final void mo3303() {
        C1635 c1635;
        C1635 c16352;
        C1635 c16353;
        C1635 c16354;
        C1023 c1023 = this.f4006;
        C1635 c16355 = this.f4015;
        boolean z = c16355.f6571;
        C1017 c1017 = this.f4012;
        if (z) {
            c1017.mo3329(c16355.m4457());
        }
        boolean z2 = c1017.f4049;
        ArrayList arrayList = c1017.f4052;
        ArrayList arrayList2 = c1017.f4057;
        C1023 c10232 = this.f4008;
        C1023 c10233 = this.f4014;
        if (!z2) {
            C1635 c16356 = this.f4015;
            this.f4011 = c16356.f6546[1];
            if (c16356.f6557) {
                this.f4007 = new C1017(this);
            }
            int i = this.f4011;
            if (i != 3) {
                if (i == 4 && (c16354 = this.f4015.f6545) != null && c16354.f6546[1] == 1) {
                    int m4457 = (c16354.m4457() - this.f4015.f6548.m4420()) - this.f4015.f6564.m4420();
                    AbstractC1014.m3316(c10233, c16354.f6542.f4014, this.f4015.f6548.m4420());
                    AbstractC1014.m3316(c10232, c16354.f6542.f4008, -this.f4015.f6564.m4420());
                    c1017.mo3329(m4457);
                    return;
                }
                if (i == 1) {
                    c1017.mo3329(this.f4015.m4457());
                }
            }
        } else if (this.f4011 == 4 && (c16352 = (c1635 = this.f4015).f6545) != null && c16352.f6546[1] == 1) {
            AbstractC1014.m3316(c10233, c16352.f6542.f4014, c1635.f6548.m4420());
            AbstractC1014.m3316(c10232, c16352.f6542.f4008, -this.f4015.f6564.m4420());
            return;
        }
        boolean z3 = c1017.f4049;
        if (z3) {
            C1635 c16357 = this.f4015;
            if (c16357.f6571) {
                C1633[] c1633Arr = c16357.f6537;
                C1633 c1633 = c1633Arr[2];
                C1633 c16332 = c1633.f6507;
                if (c16332 != null && c1633Arr[3].f6507 != null) {
                    if (c16357.m4436()) {
                        c10233.f4058 = this.f4015.f6537[2].m4420();
                        c10232.f4058 = -this.f4015.f6537[3].m4420();
                    } else {
                        C1023 m3315 = AbstractC1014.m3315(this.f4015.f6537[2]);
                        if (m3315 != null) {
                            AbstractC1014.m3316(c10233, m3315, this.f4015.f6537[2].m4420());
                        }
                        C1023 m33152 = AbstractC1014.m3315(this.f4015.f6537[3]);
                        if (m33152 != null) {
                            AbstractC1014.m3316(c10232, m33152, -this.f4015.f6537[3].m4420());
                        }
                        c10233.f4055 = true;
                        c10232.f4055 = true;
                    }
                    C1635 c16358 = this.f4015;
                    if (c16358.f6557) {
                        AbstractC1014.m3316(c1023, c10233, c16358.f6560);
                        return;
                    }
                    return;
                }
                if (c16332 != null) {
                    C1023 m33153 = AbstractC1014.m3315(c1633);
                    if (m33153 != null) {
                        AbstractC1014.m3316(c10233, m33153, this.f4015.f6537[2].m4420());
                        AbstractC1014.m3316(c10232, c10233, c1017.f4053);
                        C1635 c16359 = this.f4015;
                        if (c16359.f6557) {
                            AbstractC1014.m3316(c1023, c10233, c16359.f6560);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C1633 c16333 = c1633Arr[3];
                if (c16333.f6507 != null) {
                    C1023 m33154 = AbstractC1014.m3315(c16333);
                    if (m33154 != null) {
                        AbstractC1014.m3316(c10232, m33154, -this.f4015.f6537[3].m4420());
                        AbstractC1014.m3316(c10233, c10232, -c1017.f4053);
                    }
                    C1635 c163510 = this.f4015;
                    if (c163510.f6557) {
                        AbstractC1014.m3316(c1023, c10233, c163510.f6560);
                        return;
                    }
                    return;
                }
                C1633 c16334 = c1633Arr[4];
                if (c16334.f6507 != null) {
                    C1023 m33155 = AbstractC1014.m3315(c16334);
                    if (m33155 != null) {
                        AbstractC1014.m3316(c1023, m33155, 0);
                        AbstractC1014.m3316(c10233, c1023, -this.f4015.f6560);
                        AbstractC1014.m3316(c10232, c10233, c1017.f4053);
                        return;
                    }
                    return;
                }
                if ((c16357 instanceof AbstractC1632) || c16357.f6545 == null || c16357.mo4437(7).f6507 != null) {
                    return;
                }
                C1635 c163511 = this.f4015;
                AbstractC1014.m3316(c10233, c163511.f6545.f6542.f4014, c163511.m4454());
                AbstractC1014.m3316(c10232, c10233, c1017.f4053);
                C1635 c163512 = this.f4015;
                if (c163512.f6557) {
                    AbstractC1014.m3316(c1023, c10233, c163512.f6560);
                    return;
                }
                return;
            }
        }
        if (z3 || this.f4011 != 3) {
            c1017.m3345(this);
        } else {
            C1635 c163513 = this.f4015;
            int i2 = c163513.f6543;
            if (i2 == 2) {
                C1635 c163514 = c163513.f6545;
                if (c163514 != null) {
                    C1017 c10172 = c163514.f6542.f4012;
                    arrayList2.add(c10172);
                    c10172.f4052.add(c1017);
                    c1017.f4055 = true;
                    arrayList.add(c10233);
                    arrayList.add(c10232);
                }
            } else if (i2 == 3 && !c163513.m4436()) {
                C1635 c163515 = this.f4015;
                if (c163515.f6572 != 3) {
                    C1017 c10173 = c163515.f6525.f4012;
                    arrayList2.add(c10173);
                    c10173.f4052.add(c1017);
                    c1017.f4055 = true;
                    arrayList.add(c10233);
                    arrayList.add(c10232);
                }
            }
        }
        C1635 c163516 = this.f4015;
        C1633[] c1633Arr2 = c163516.f6537;
        C1633 c16335 = c1633Arr2[2];
        C1633 c16336 = c16335.f6507;
        if (c16336 != null && c1633Arr2[3].f6507 != null) {
            if (c163516.m4436()) {
                c10233.f4058 = this.f4015.f6537[2].m4420();
                c10232.f4058 = -this.f4015.f6537[3].m4420();
            } else {
                C1023 m33156 = AbstractC1014.m3315(this.f4015.f6537[2]);
                C1023 m33157 = AbstractC1014.m3315(this.f4015.f6537[3]);
                if (m33156 != null) {
                    m33156.m3345(this);
                }
                if (m33157 != null) {
                    m33157.m3345(this);
                }
                this.f4010 = 4;
            }
            if (this.f4015.f6557) {
                m3317(c1023, c10233, 1, this.f4007);
            }
        } else if (c16336 != null) {
            C1023 m33158 = AbstractC1014.m3315(c16335);
            if (m33158 != null) {
                AbstractC1014.m3316(c10233, m33158, this.f4015.f6537[2].m4420());
                m3317(c10232, c10233, 1, c1017);
                if (this.f4015.f6557) {
                    m3317(c1023, c10233, 1, this.f4007);
                }
                if (this.f4011 == 3) {
                    C1635 c163517 = this.f4015;
                    if (c163517.f6556 > 0.0f) {
                        C1016 c1016 = c163517.f6525;
                        if (c1016.f4011 == 3) {
                            c1016.f4012.f4052.add(c1017);
                            arrayList2.add(this.f4015.f6525.f4012);
                            c1017.f4056 = this;
                        }
                    }
                }
            }
        } else {
            C1633 c16337 = c1633Arr2[3];
            if (c16337.f6507 != null) {
                C1023 m33159 = AbstractC1014.m3315(c16337);
                if (m33159 != null) {
                    AbstractC1014.m3316(c10232, m33159, -this.f4015.f6537[3].m4420());
                    m3317(c10233, c10232, -1, c1017);
                    if (this.f4015.f6557) {
                        m3317(c1023, c10233, 1, this.f4007);
                    }
                }
            } else {
                C1633 c16338 = c1633Arr2[4];
                if (c16338.f6507 != null) {
                    C1023 m331510 = AbstractC1014.m3315(c16338);
                    if (m331510 != null) {
                        AbstractC1014.m3316(c1023, m331510, 0);
                        m3317(c10233, c1023, -1, this.f4007);
                        m3317(c10232, c10233, 1, c1017);
                    }
                } else if (!(c163516 instanceof AbstractC1632) && (c16353 = c163516.f6545) != null) {
                    AbstractC1014.m3316(c10233, c16353.f6542.f4014, c163516.m4454());
                    m3317(c10232, c10233, 1, c1017);
                    if (this.f4015.f6557) {
                        m3317(c1023, c10233, 1, this.f4007);
                    }
                    if (this.f4011 == 3) {
                        C1635 c163518 = this.f4015;
                        if (c163518.f6556 > 0.0f) {
                            C1016 c10162 = c163518.f6525;
                            if (c10162.f4011 == 3) {
                                c10162.f4012.f4052.add(c1017);
                                arrayList2.add(this.f4015.f6525.f4012);
                                c1017.f4056 = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            c1017.f4048 = true;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3313() {
        this.f4013 = false;
        C1023 c1023 = this.f4014;
        c1023.m3344();
        c1023.f4049 = false;
        C1023 c10232 = this.f4008;
        c10232.m3344();
        c10232.f4049 = false;
        C1023 c10233 = this.f4006;
        c10233.m3344();
        c10233.f4049 = false;
        this.f4012.f4049 = false;
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˑﹳ */
    public final void mo3305() {
        C1023 c1023 = this.f4014;
        if (c1023.f4049) {
            this.f4015.f6522 = c1023.f4053;
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ٴﹶ */
    public final boolean mo3306() {
        return this.f4011 != 3 || this.f4015.f6543 == 0;
    }

    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ */
    public final void mo3307(InterfaceC1012 interfaceC1012) {
        float f;
        float f2;
        float f3;
        int i;
        if (AbstractC0844.m3018(this.f4010) == 3) {
            C1635 c1635 = this.f4015;
            m3319(c1635.f6548, c1635.f6564, 1);
            return;
        }
        C1017 c1017 = this.f4012;
        if (c1017.f4048 && !c1017.f4049 && this.f4011 == 3) {
            C1635 c16352 = this.f4015;
            int i2 = c16352.f6543;
            if (i2 == 2) {
                C1635 c16353 = c16352.f6545;
                if (c16353 != null) {
                    if (c16353.f6542.f4012.f4049) {
                        c1017.mo3329((int) ((r5.f4053 * c16352.f6568) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                C1017 c10172 = c16352.f6525.f4012;
                if (c10172.f4049) {
                    int i3 = c16352.f6532;
                    if (i3 == -1) {
                        f = c10172.f4053;
                        f2 = c16352.f6556;
                    } else if (i3 == 0) {
                        f3 = c10172.f4053 * c16352.f6556;
                        i = (int) (f3 + 0.5f);
                        c1017.mo3329(i);
                    } else if (i3 != 1) {
                        i = 0;
                        c1017.mo3329(i);
                    } else {
                        f = c10172.f4053;
                        f2 = c16352.f6556;
                    }
                    f3 = f / f2;
                    i = (int) (f3 + 0.5f);
                    c1017.mo3329(i);
                }
            }
        }
        C1023 c1023 = this.f4014;
        boolean z = c1023.f4048;
        ArrayList arrayList = c1023.f4057;
        if (z) {
            C1023 c10232 = this.f4008;
            boolean z2 = c10232.f4048;
            ArrayList arrayList2 = c10232.f4057;
            if (z2) {
                if (c1023.f4049 && c10232.f4049 && c1017.f4049) {
                    return;
                }
                if (!c1017.f4049 && this.f4011 == 3) {
                    C1635 c16354 = this.f4015;
                    if (c16354.f6572 == 0 && !c16354.m4436()) {
                        C1023 c10233 = (C1023) arrayList.get(0);
                        C1023 c10234 = (C1023) arrayList2.get(0);
                        int i4 = c10233.f4053 + c1023.f4058;
                        int i5 = c10234.f4053 + c10232.f4058;
                        c1023.mo3329(i4);
                        c10232.mo3329(i5);
                        c1017.mo3329(i5 - i4);
                        return;
                    }
                }
                if (!c1017.f4049 && this.f4011 == 3 && this.f4016 == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    C1023 c10235 = (C1023) arrayList.get(0);
                    int i6 = (((C1023) arrayList2.get(0)).f4053 + c10232.f4058) - (c10235.f4053 + c1023.f4058);
                    int i7 = c1017.f4027;
                    if (i6 < i7) {
                        c1017.mo3329(i6);
                    } else {
                        c1017.mo3329(i7);
                    }
                }
                if (c1017.f4049 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    C1023 c10236 = (C1023) arrayList.get(0);
                    C1023 c10237 = (C1023) arrayList2.get(0);
                    int i8 = c10236.f4053;
                    int i9 = c1023.f4058 + i8;
                    int i10 = c10237.f4053;
                    int i11 = c10232.f4058 + i10;
                    float f4 = this.f4015.f6554;
                    if (c10236 == c10237) {
                        f4 = 0.5f;
                    } else {
                        i8 = i9;
                        i10 = i11;
                    }
                    c1023.mo3329((int) ((((i10 - i8) - c1017.f4053) * f4) + i8 + 0.5f));
                    c10232.mo3329(c1023.f4053 + c1017.f4053);
                }
            }
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ﾞᴵ */
    public final void mo3308() {
        this.f4009 = null;
        this.f4014.m3344();
        this.f4008.m3344();
        this.f4006.m3344();
        this.f4012.m3344();
        this.f4013 = false;
    }
}
