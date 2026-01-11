package p018;

import java.util.ArrayList;
import p072.C1635;
import p072.C1640;

/* renamed from: ʼʼ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1011 extends AbstractC1014 {
    @Override // p018.AbstractC1014
    /* renamed from: ˈ */
    public final void mo3303() {
        C1635 c1635 = this.f4015;
        if (c1635 instanceof C1640) {
            C1023 c1023 = this.f4014;
            c1023.f4055 = true;
            ArrayList arrayList = c1023.f4057;
            C1640 c1640 = (C1640) c1635;
            int i = c1640.f6661;
            boolean z = c1640.f6659;
            int i2 = 0;
            if (i == 0) {
                c1023.f4051 = 4;
                while (i2 < c1640.f6498) {
                    C1635 c16352 = c1640.f6497[i2];
                    if (z || c16352.f6536 != 8) {
                        C1023 c10232 = c16352.f6525.f4014;
                        c10232.f4052.add(c1023);
                        arrayList.add(c10232);
                    }
                    i2++;
                }
                m3312(this.f4015.f6525.f4014);
                m3312(this.f4015.f6525.f4008);
                return;
            }
            if (i == 1) {
                c1023.f4051 = 5;
                while (i2 < c1640.f6498) {
                    C1635 c16353 = c1640.f6497[i2];
                    if (z || c16353.f6536 != 8) {
                        C1023 c10233 = c16353.f6525.f4008;
                        c10233.f4052.add(c1023);
                        arrayList.add(c10233);
                    }
                    i2++;
                }
                m3312(this.f4015.f6525.f4014);
                m3312(this.f4015.f6525.f4008);
                return;
            }
            if (i == 2) {
                c1023.f4051 = 6;
                while (i2 < c1640.f6498) {
                    C1635 c16354 = c1640.f6497[i2];
                    if (z || c16354.f6536 != 8) {
                        C1023 c10234 = c16354.f6542.f4014;
                        c10234.f4052.add(c1023);
                        arrayList.add(c10234);
                    }
                    i2++;
                }
                m3312(this.f4015.f6542.f4014);
                m3312(this.f4015.f6542.f4008);
                return;
            }
            if (i != 3) {
                return;
            }
            c1023.f4051 = 7;
            while (i2 < c1640.f6498) {
                C1635 c16355 = c1640.f6497[i2];
                if (z || c16355.f6536 != 8) {
                    C1023 c10235 = c16355.f6542.f4008;
                    c10235.f4052.add(c1023);
                    arrayList.add(c10235);
                }
                i2++;
            }
            m3312(this.f4015.f6542.f4014);
            m3312(this.f4015.f6542.f4008);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3312(C1023 c1023) {
        C1023 c10232 = this.f4014;
        c10232.f4052.add(c1023);
        c1023.f4057.add(c10232);
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˑﹳ */
    public final void mo3305() {
        C1635 c1635 = this.f4015;
        if (c1635 instanceof C1640) {
            int i = ((C1640) c1635).f6661;
            C1023 c1023 = this.f4014;
            if (i == 0 || i == 1) {
                c1635.f6521 = c1023.f4053;
            } else {
                c1635.f6522 = c1023.f4053;
            }
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ٴﹶ */
    public final boolean mo3306() {
        return false;
    }

    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ */
    public final void mo3307(InterfaceC1012 interfaceC1012) {
        C1640 c1640 = (C1640) this.f4015;
        int i = c1640.f6661;
        C1023 c1023 = this.f4014;
        ArrayList arrayList = c1023.f4057;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            int i5 = ((C1023) obj).f4053;
            if (i3 == -1 || i5 < i3) {
                i3 = i5;
            }
            if (i2 < i5) {
                i2 = i5;
            }
        }
        if (i == 0 || i == 2) {
            c1023.mo3329(i3 + c1640.f6660);
        } else {
            c1023.mo3329(i2 + c1640.f6660);
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ﾞᴵ */
    public final void mo3308() {
        this.f4009 = null;
        this.f4014.m3344();
    }
}
