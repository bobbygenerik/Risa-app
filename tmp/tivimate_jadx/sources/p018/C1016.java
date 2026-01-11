package p018;

import java.util.ArrayList;
import p072.AbstractC1632;
import p072.C1633;
import p072.C1635;

/* renamed from: ʼʼ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1016 extends AbstractC1014 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final int[] f4026 = new int[2];

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m3327(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    public final String toString() {
        return "HorizontalRun " + this.f4015.f6547;
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˈ */
    public final void mo3303() {
        C1635 c1635;
        C1635 c16352;
        int i;
        C1635 c16353;
        C1635 c16354;
        int i2;
        C1635 c16355 = this.f4015;
        boolean z = c16355.f6571;
        C1017 c1017 = this.f4012;
        if (z) {
            c1017.mo3329(c16355.m4467());
        }
        boolean z2 = c1017.f4049;
        ArrayList arrayList = c1017.f4052;
        ArrayList arrayList2 = c1017.f4057;
        C1023 c1023 = this.f4008;
        C1023 c10232 = this.f4014;
        if (!z2) {
            C1635 c16356 = this.f4015;
            int i3 = c16356.f6546[0];
            this.f4011 = i3;
            if (i3 != 3) {
                if (i3 == 4 && (c16354 = c16356.f6545) != null && ((i2 = c16354.f6546[0]) == 1 || i2 == 4)) {
                    int m4467 = (c16354.m4467() - this.f4015.f6561.m4420()) - this.f4015.f6559.m4420();
                    AbstractC1014.m3316(c10232, c16354.f6525.f4014, this.f4015.f6561.m4420());
                    AbstractC1014.m3316(c1023, c16354.f6525.f4008, -this.f4015.f6559.m4420());
                    c1017.mo3329(m4467);
                    return;
                }
                if (i3 == 1) {
                    c1017.mo3329(c16356.m4467());
                }
            }
        } else if (this.f4011 == 4 && (c16352 = (c1635 = this.f4015).f6545) != null && ((i = c16352.f6546[0]) == 1 || i == 4)) {
            AbstractC1014.m3316(c10232, c16352.f6525.f4014, c1635.f6561.m4420());
            AbstractC1014.m3316(c1023, c16352.f6525.f4008, -this.f4015.f6559.m4420());
            return;
        }
        if (c1017.f4049) {
            C1635 c16357 = this.f4015;
            if (c16357.f6571) {
                C1633[] c1633Arr = c16357.f6537;
                C1633 c1633 = c1633Arr[0];
                C1633 c16332 = c1633.f6507;
                if (c16332 != null && c1633Arr[1].f6507 != null) {
                    if (c16357.m4442()) {
                        c10232.f4058 = this.f4015.f6537[0].m4420();
                        c1023.f4058 = -this.f4015.f6537[1].m4420();
                        return;
                    }
                    C1023 m3315 = AbstractC1014.m3315(this.f4015.f6537[0]);
                    if (m3315 != null) {
                        AbstractC1014.m3316(c10232, m3315, this.f4015.f6537[0].m4420());
                    }
                    C1023 m33152 = AbstractC1014.m3315(this.f4015.f6537[1]);
                    if (m33152 != null) {
                        AbstractC1014.m3316(c1023, m33152, -this.f4015.f6537[1].m4420());
                    }
                    c10232.f4055 = true;
                    c1023.f4055 = true;
                    return;
                }
                if (c16332 != null) {
                    C1023 m33153 = AbstractC1014.m3315(c1633);
                    if (m33153 != null) {
                        AbstractC1014.m3316(c10232, m33153, this.f4015.f6537[0].m4420());
                        AbstractC1014.m3316(c1023, c10232, c1017.f4053);
                        return;
                    }
                    return;
                }
                C1633 c16333 = c1633Arr[1];
                if (c16333.f6507 != null) {
                    C1023 m33154 = AbstractC1014.m3315(c16333);
                    if (m33154 != null) {
                        AbstractC1014.m3316(c1023, m33154, -this.f4015.f6537[1].m4420());
                        AbstractC1014.m3316(c10232, c1023, -c1017.f4053);
                        return;
                    }
                    return;
                }
                if ((c16357 instanceof AbstractC1632) || c16357.f6545 == null || c16357.mo4437(7).f6507 != null) {
                    return;
                }
                C1635 c16358 = this.f4015;
                AbstractC1014.m3316(c10232, c16358.f6545.f6525.f4014, c16358.m4471());
                AbstractC1014.m3316(c1023, c10232, c1017.f4053);
                return;
            }
        }
        if (this.f4011 == 3) {
            C1635 c16359 = this.f4015;
            int i4 = c16359.f6572;
            if (i4 == 2) {
                C1635 c163510 = c16359.f6545;
                if (c163510 != null) {
                    C1017 c10172 = c163510.f6542.f4012;
                    arrayList2.add(c10172);
                    c10172.f4052.add(c1017);
                    c1017.f4055 = true;
                    arrayList.add(c10232);
                    arrayList.add(c1023);
                }
            } else if (i4 == 3) {
                if (c16359.f6543 == 3) {
                    c10232.f4056 = this;
                    c1023.f4056 = this;
                    C1013 c1013 = c16359.f6542;
                    c1013.f4014.f4056 = this;
                    c1013.f4008.f4056 = this;
                    c1017.f4056 = this;
                    if (c16359.m4436()) {
                        arrayList2.add(this.f4015.f6542.f4012);
                        this.f4015.f6542.f4012.f4052.add(c1017);
                        C1013 c10132 = this.f4015.f6542;
                        c10132.f4012.f4056 = this;
                        arrayList2.add(c10132.f4014);
                        arrayList2.add(this.f4015.f6542.f4008);
                        this.f4015.f6542.f4014.f4052.add(c1017);
                        this.f4015.f6542.f4008.f4052.add(c1017);
                    } else if (this.f4015.m4442()) {
                        this.f4015.f6542.f4012.f4057.add(c1017);
                        arrayList.add(this.f4015.f6542.f4012);
                    } else {
                        this.f4015.f6542.f4012.f4057.add(c1017);
                    }
                } else {
                    C1017 c10173 = c16359.f6542.f4012;
                    arrayList2.add(c10173);
                    c10173.f4052.add(c1017);
                    this.f4015.f6542.f4014.f4052.add(c1017);
                    this.f4015.f6542.f4008.f4052.add(c1017);
                    c1017.f4055 = true;
                    arrayList.add(c10232);
                    arrayList.add(c1023);
                    c10232.f4057.add(c1017);
                    c1023.f4057.add(c1017);
                }
            }
        }
        C1635 c163511 = this.f4015;
        C1633[] c1633Arr2 = c163511.f6537;
        C1633 c16334 = c1633Arr2[0];
        C1633 c16335 = c16334.f6507;
        if (c16335 != null && c1633Arr2[1].f6507 != null) {
            if (c163511.m4442()) {
                c10232.f4058 = this.f4015.f6537[0].m4420();
                c1023.f4058 = -this.f4015.f6537[1].m4420();
                return;
            }
            C1023 m33155 = AbstractC1014.m3315(this.f4015.f6537[0]);
            C1023 m33156 = AbstractC1014.m3315(this.f4015.f6537[1]);
            if (m33155 != null) {
                m33155.m3345(this);
            }
            if (m33156 != null) {
                m33156.m3345(this);
            }
            this.f4010 = 4;
            return;
        }
        if (c16335 != null) {
            C1023 m33157 = AbstractC1014.m3315(c16334);
            if (m33157 != null) {
                AbstractC1014.m3316(c10232, m33157, this.f4015.f6537[0].m4420());
                m3317(c1023, c10232, 1, c1017);
                return;
            }
            return;
        }
        C1633 c16336 = c1633Arr2[1];
        if (c16336.f6507 != null) {
            C1023 m33158 = AbstractC1014.m3315(c16336);
            if (m33158 != null) {
                AbstractC1014.m3316(c1023, m33158, -this.f4015.f6537[1].m4420());
                m3317(c10232, c1023, -1, c1017);
                return;
            }
            return;
        }
        if ((c163511 instanceof AbstractC1632) || (c16353 = c163511.f6545) == null) {
            return;
        }
        AbstractC1014.m3316(c10232, c16353.f6525.f4014, c163511.m4471());
        m3317(c1023, c10232, 1, c1017);
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˑﹳ */
    public final void mo3305() {
        C1023 c1023 = this.f4014;
        if (c1023.f4049) {
            this.f4015.f6521 = c1023.f4053;
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ٴﹶ */
    public final boolean mo3306() {
        return this.f4011 != 3 || this.f4015.f6572 == 0;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m3328() {
        this.f4013 = false;
        C1023 c1023 = this.f4014;
        c1023.m3344();
        c1023.f4049 = false;
        C1023 c10232 = this.f4008;
        c10232.m3344();
        c10232.f4049 = false;
        this.f4012.f4049 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0243, code lost:
    
        if (r5 != 1) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02aa  */
    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3307(p018.InterfaceC1012 r24) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018.C1016.mo3307(ʼʼ.ˈ):void");
    }

    @Override // p018.AbstractC1014
    /* renamed from: ﾞᴵ */
    public final void mo3308() {
        this.f4009 = null;
        this.f4014.m3344();
        this.f4008.m3344();
        this.f4012.m3344();
        this.f4013 = false;
    }
}
