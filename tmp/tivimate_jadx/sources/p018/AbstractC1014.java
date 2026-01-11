package p018;

import p010.AbstractC0844;
import p072.C1633;
import p072.C1635;

/* renamed from: ʼʼ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1014 implements InterfaceC1012 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C1022 f4009;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f4011;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1635 f4015;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f4016;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1017 f4012 = new C1017(this);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f4017 = 0;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f4013 = false;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1023 f4014 = new C1023(this);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1023 f4008 = new C1023(this);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f4010 = 1;

    public AbstractC1014(C1635 c1635) {
        this.f4015 = c1635;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C1023 m3314(C1633 c1633, int i) {
        C1633 c16332 = c1633.f6507;
        if (c16332 == null) {
            return null;
        }
        C1635 c1635 = c16332.f6501;
        AbstractC1014 abstractC1014 = i == 0 ? c1635.f6525 : c1635.f6542;
        int m3018 = AbstractC0844.m3018(c16332.f6502);
        if (m3018 == 1 || m3018 == 2) {
            return abstractC1014.f4014;
        }
        if (m3018 == 3 || m3018 == 4) {
            return abstractC1014.f4008;
        }
        return null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C1023 m3315(C1633 c1633) {
        C1633 c16332 = c1633.f6507;
        if (c16332 == null) {
            return null;
        }
        C1635 c1635 = c16332.f6501;
        int m3018 = AbstractC0844.m3018(c16332.f6502);
        if (m3018 == 1) {
            return c1635.f6525.f4014;
        }
        if (m3018 == 2) {
            return c1635.f6542.f4014;
        }
        if (m3018 == 3) {
            return c1635.f6525.f4008;
        }
        if (m3018 == 4) {
            return c1635.f6542.f4008;
        }
        if (m3018 != 5) {
            return null;
        }
        return c1635.f6542.f4006;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m3316(C1023 c1023, C1023 c10232, int i) {
        c1023.f4057.add(c10232);
        c1023.f4058 = i;
        c10232.f4052.add(c1023);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3317(C1023 c1023, C1023 c10232, int i, C1017 c1017) {
        c1023.f4057.add(c10232);
        c1023.f4057.add(this.f4012);
        c1023.f4054 = i;
        c1023.f4047 = c1017;
        c10232.f4052.add(c1023);
        c1017.f4052.add(c1023);
    }

    /* renamed from: ˆʾ */
    public long mo3309() {
        if (this.f4012.f4049) {
            return r0.f4053;
        }
        return 0L;
    }

    /* renamed from: ˈ */
    public abstract void mo3303();

    /* renamed from: ˑﹳ */
    public abstract void mo3305();

    /* renamed from: ٴﹶ */
    public abstract boolean mo3306();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m3318(int i, int i2) {
        if (i2 == 0) {
            C1635 c1635 = this.f4015;
            int i3 = c1635.f6510;
            int max = Math.max(c1635.f6518, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max != i) {
                return max;
            }
        } else {
            C1635 c16352 = this.f4015;
            int i4 = c16352.f6512;
            int max2 = Math.max(c16352.f6520, i);
            if (i4 > 0) {
                max2 = Math.min(i4, i);
            }
            if (max2 != i) {
                return max2;
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r9.f4016 == 3) goto L50;
     */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3319(p072.C1633 r12, p072.C1633 r13, int r14) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018.AbstractC1014.m3319(ʾᵎ.ʽ, ʾᵎ.ʽ, int):void");
    }

    /* renamed from: ﾞᴵ */
    public abstract void mo3308();
}
