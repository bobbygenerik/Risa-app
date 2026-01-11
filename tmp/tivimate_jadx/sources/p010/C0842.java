package p010;

import java.util.Arrays;
import p072.C1633;
import p404.C4790;
import ᵢ.ﹳٴ;

/* renamed from: ʻٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0842 {

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static boolean f3582;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C0846 f3584;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0848 f3587;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final ﹳٴ f3588;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f3596 = 1000;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f3595 = false;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3585 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f3590 = 32;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f3598 = 32;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f3594 = false;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean[] f3583 = new boolean[32];

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f3586 = 1;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f3591 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f3597 = 32;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C0845[] f3593 = new C0845[1000];

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f3589 = 0;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C0846[] f3592 = new C0846[32];

    /* JADX WARN: Type inference failed for: r2v2, types: [ʻٴ.ⁱˊ, ʻٴ.ﾞᴵ, java.lang.Object] */
    public C0842() {
        m3004();
        ﹳٴ r0 = new ﹳٴ(3, false);
        r0.ᴵˊ = new C0843();
        r0.ʽʽ = new C0843();
        r0.ˈٴ = new C0845[32];
        this.f3588 = r0;
        ?? c0846 = new C0846(r0);
        c0846.f3632 = new C0845[128];
        c0846.f3630 = new C0845[128];
        c0846.f3631 = 0;
        c0846.f3629 = new C4790(3, (Object) c0846);
        this.f3587 = c0846;
        this.f3584 = new C0846(r0);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m2994(Object obj) {
        C0845 c0845 = ((C1633) obj).f6499;
        if (c0845 != null) {
            return (int) (c0845.f3610 + 0.5f);
        }
        return 0;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m2995() {
        for (int i = 0; i < this.f3591; i++) {
            C0846 c0846 = this.f3592[i];
            c0846.f3618.f3610 = c0846.f3617;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m2996() {
        C0848 c0848 = this.f3587;
        if (c0848.mo3030()) {
            m2995();
            return;
        }
        if (!this.f3594) {
            m3008(c0848);
            return;
        }
        for (int i = 0; i < this.f3591; i++) {
            if (!this.f3592[i].f3616) {
                m3008(c0848);
                return;
            }
        }
        m2995();
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d3, code lost:
    
        if (r4.f3611 <= 1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d6, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e0, code lost:
    
        if (r4.f3611 <= 1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00f5, code lost:
    
        if (r4.f3611 <= 1) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00f8, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0102, code lost:
    
        if (r4.f3611 <= 1) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:145:? A[RETURN, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2997(p010.C0846 r18) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p010.C0842.m2997(ʻٴ.ⁱˊ):void");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C0845 m2998(int i) {
        if (this.f3586 + 1 >= this.f3598) {
            m3001();
        }
        C0845 m3010 = m3010(4);
        float[] fArr = m3010.f3605;
        int i2 = this.f3585 + 1;
        this.f3585 = i2;
        this.f3586++;
        m3010.f3609 = i2;
        m3010.f3604 = i;
        ((C0845[]) this.f3588.ˈٴ)[i2] = m3010;
        C0848 c0848 = this.f3587;
        c0848.f3629.f18036 = m3010;
        Arrays.fill(fArr, 0.0f);
        fArr[m3010.f3604] = 1.0f;
        c0848.m3044(m3010);
        return m3010;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2999(C0845 c0845, int i) {
        int i2 = c0845.f3602;
        if (i2 == -1) {
            c0845.m3023(this, i);
            for (int i3 = 0; i3 < this.f3585 + 1; i3++) {
                C0845 c08452 = ((C0845[]) this.f3588.ˈٴ)[i3];
            }
            return;
        }
        if (i2 == -1) {
            C0846 m3012 = m3012();
            m3012.f3618 = c0845;
            float f = i;
            c0845.f3610 = f;
            m3012.f3617 = f;
            m3012.f3616 = true;
            m2997(m3012);
            return;
        }
        C0846 c0846 = this.f3592[i2];
        if (c0846.f3616) {
            c0846.f3617 = i;
            return;
        }
        if (c0846.f3615.m3037() == 0) {
            c0846.f3616 = true;
            c0846.f3617 = i;
            return;
        }
        C0846 m30122 = m3012();
        if (i < 0) {
            m30122.f3617 = i * (-1);
            m30122.f3615.m3039(c0845, 1.0f);
        } else {
            m30122.f3617 = i;
            m30122.f3615.m3039(c0845, -1.0f);
        }
        m2997(m30122);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C0845 m3000() {
        if (this.f3586 + 1 >= this.f3598) {
            m3001();
        }
        C0845 m3010 = m3010(3);
        int i = this.f3585 + 1;
        this.f3585 = i;
        this.f3586++;
        m3010.f3609 = i;
        ((C0845[]) this.f3588.ˈٴ)[i] = m3010;
        return m3010;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m3001() {
        int i = this.f3590 * 2;
        this.f3590 = i;
        this.f3592 = (C0846[]) Arrays.copyOf(this.f3592, i);
        ﹳٴ r0 = this.f3588;
        r0.ˈٴ = (C0845[]) Arrays.copyOf((C0845[]) r0.ˈٴ, this.f3590);
        int i2 = this.f3590;
        this.f3583 = new boolean[i2];
        this.f3598 = i2;
        this.f3597 = i2;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m3002() {
        ﹳٴ r2;
        int i = 0;
        while (true) {
            r2 = this.f3588;
            C0845[] c0845Arr = (C0845[]) r2.ˈٴ;
            if (i >= c0845Arr.length) {
                break;
            }
            C0845 c0845 = c0845Arr[i];
            if (c0845 != null) {
                c0845.m3022();
            }
            i++;
        }
        C0843 c0843 = (C0843) r2.ʽʽ;
        C0845[] c0845Arr2 = this.f3593;
        int i2 = this.f3589;
        c0843.getClass();
        if (i2 > c0845Arr2.length) {
            i2 = c0845Arr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            C0845 c08452 = c0845Arr2[i3];
            int i4 = c0843.f3600;
            Object[] objArr = c0843.f3599;
            if (i4 < objArr.length) {
                objArr[i4] = c08452;
                c0843.f3600 = i4 + 1;
            }
        }
        this.f3589 = 0;
        Arrays.fill((C0845[]) r2.ˈٴ, (Object) null);
        this.f3585 = 0;
        C0848 c0848 = this.f3587;
        c0848.f3631 = 0;
        c0848.f3617 = 0.0f;
        this.f3586 = 1;
        for (int i5 = 0; i5 < this.f3591; i5++) {
            C0846 c0846 = this.f3592[i5];
        }
        m3004();
        this.f3591 = 0;
        this.f3584 = new C0846(r2);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3003(C0845 c0845, C0845 c08452, int i, int i2) {
        if (i2 == 8 && c08452.f3606 && c0845.f3602 == -1) {
            c0845.m3023(this, c08452.f3610 + i);
            return;
        }
        C0846 m3012 = m3012();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            m3012.f3617 = i;
        }
        if (z) {
            m3012.f3615.m3039(c0845, 1.0f);
            m3012.f3615.m3039(c08452, -1.0f);
        } else {
            m3012.f3615.m3039(c0845, -1.0f);
            m3012.f3615.m3039(c08452, 1.0f);
        }
        if (i2 != 8) {
            m3012.m3034(this, i2);
        }
        m2997(m3012);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m3004() {
        for (int i = 0; i < this.f3591; i++) {
            C0846 c0846 = this.f3592[i];
            if (c0846 != null) {
                ((C0843) this.f3588.ᴵˊ).m3015(c0846);
            }
            this.f3592[i] = null;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C0845 m3005(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.f3586 + 1 >= this.f3598) {
            m3001();
        }
        if (!(obj instanceof C1633)) {
            return null;
        }
        C1633 c1633 = (C1633) obj;
        C0845 c0845 = c1633.f6499;
        if (c0845 == null) {
            c1633.m4421();
            c0845 = c1633.f6499;
        }
        int i = c0845.f3609;
        ﹳٴ r3 = this.f3588;
        if (i != -1 && i <= this.f3585 && ((C0845[]) r3.ˈٴ)[i] != null) {
            return c0845;
        }
        if (i != -1) {
            c0845.m3022();
        }
        int i2 = this.f3585 + 1;
        this.f3585 = i2;
        this.f3586++;
        c0845.f3609 = i2;
        c0845.f3613 = 1;
        ((C0845[]) r3.ˈٴ)[i2] = c0845;
        return c0845;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3006(C0845 c0845, C0845 c08452, int i, int i2) {
        C0846 m3012 = m3012();
        C0845 m3000 = m3000();
        m3000.f3604 = 0;
        m3012.m3028(c0845, c08452, m3000, i);
        if (i2 != 8) {
            m3012.f3615.m3039(m2998(i2), (int) (m3012.f3615.m3036(m3000) * (-1.0f)));
        }
        m2997(m3012);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m3007(C0846 c0846) {
        int i;
        if (c0846.f3616) {
            c0846.f3618.m3023(this, c0846.f3617);
        } else {
            C0846[] c0846Arr = this.f3592;
            int i2 = this.f3591;
            c0846Arr[i2] = c0846;
            C0845 c0845 = c0846.f3618;
            c0845.f3602 = i2;
            this.f3591 = i2 + 1;
            c0845.m3024(this, c0846);
        }
        if (this.f3595) {
            int i3 = 0;
            while (i3 < this.f3591) {
                if (this.f3592[i3] == null) {
                    System.out.println("WTF");
                }
                C0846 c08462 = this.f3592[i3];
                if (c08462 != null && c08462.f3616) {
                    c08462.f3618.m3023(this, c08462.f3617);
                    ((C0843) this.f3588.ᴵˊ).m3015(c08462);
                    this.f3592[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.f3591;
                        if (i4 >= i) {
                            break;
                        }
                        C0846[] c0846Arr2 = this.f3592;
                        int i6 = i4 - 1;
                        C0846 c08463 = c0846Arr2[i4];
                        c0846Arr2[i6] = c08463;
                        C0845 c08452 = c08463.f3618;
                        if (c08452.f3602 == i4) {
                            c08452.f3602 = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f3592[i5] = null;
                    }
                    this.f3591 = i - 1;
                    i3--;
                }
                i3++;
            }
            this.f3595 = false;
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m3008(C0848 c0848) {
        int i = 0;
        while (true) {
            if (i >= this.f3591) {
                break;
            }
            C0846 c0846 = this.f3592[i];
            int i2 = 1;
            if (c0846.f3618.f3613 != 1) {
                float f = 0.0f;
                if (c0846.f3617 < 0.0f) {
                    boolean z = false;
                    int i3 = 0;
                    while (!z) {
                        i3 += i2;
                        float f2 = Float.MAX_VALUE;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < this.f3591) {
                            C0846 c08462 = this.f3592[i6];
                            if (c08462.f3618.f3613 != i2 && !c08462.f3616 && c08462.f3617 < f) {
                                int m3037 = c08462.f3615.m3037();
                                int i8 = 0;
                                while (i8 < m3037) {
                                    C0845 m3038 = c08462.f3615.m3038(i8);
                                    float m3036 = c08462.f3615.m3036(m3038);
                                    if (m3036 > f) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f3 = m3038.f3608[i9] / m3036;
                                            if ((f3 < f2 && i9 == i7) || i9 > i7) {
                                                i7 = i9;
                                                i5 = m3038.f3609;
                                                i4 = i6;
                                                f2 = f3;
                                            }
                                        }
                                    }
                                    i8++;
                                    f = 0.0f;
                                }
                            }
                            i6++;
                            f = 0.0f;
                            i2 = 1;
                        }
                        if (i4 != -1) {
                            C0846 c08463 = this.f3592[i4];
                            c08463.f3618.f3602 = -1;
                            c08463.m3031(((C0845[]) this.f3588.ˈٴ)[i5]);
                            C0845 c0845 = c08463.f3618;
                            c0845.f3602 = i4;
                            c0845.m3024(this, c08463);
                        } else {
                            z = true;
                        }
                        if (i3 > this.f3586 / 2) {
                            z = true;
                        }
                        f = 0.0f;
                        i2 = 1;
                    }
                }
            }
            i++;
        }
        m3011(c0848);
        m2995();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3009(C0845 c0845, C0845 c08452, int i, float f, C0845 c08453, C0845 c08454, int i2, int i3) {
        C0846 m3012 = m3012();
        if (c08452 == c08453) {
            m3012.f3615.m3039(c0845, 1.0f);
            m3012.f3615.m3039(c08454, 1.0f);
            m3012.f3615.m3039(c08452, -2.0f);
        } else if (f == 0.5f) {
            m3012.f3615.m3039(c0845, 1.0f);
            m3012.f3615.m3039(c08452, -1.0f);
            m3012.f3615.m3039(c08453, -1.0f);
            m3012.f3615.m3039(c08454, 1.0f);
            if (i > 0 || i2 > 0) {
                m3012.f3617 = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            m3012.f3615.m3039(c0845, -1.0f);
            m3012.f3615.m3039(c08452, 1.0f);
            m3012.f3617 = i;
        } else if (f >= 1.0f) {
            m3012.f3615.m3039(c08454, -1.0f);
            m3012.f3615.m3039(c08453, 1.0f);
            m3012.f3617 = -i2;
        } else {
            float f2 = 1.0f - f;
            m3012.f3615.m3039(c0845, f2 * 1.0f);
            m3012.f3615.m3039(c08452, f2 * (-1.0f));
            m3012.f3615.m3039(c08453, (-1.0f) * f);
            m3012.f3615.m3039(c08454, 1.0f * f);
            if (i > 0 || i2 > 0) {
                m3012.f3617 = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            m3012.m3034(this, i3);
        }
        m2997(m3012);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0845 m3010(int i) {
        C0843 c0843 = (C0843) this.f3588.ʽʽ;
        int i2 = c0843.f3600;
        C0845 c0845 = null;
        if (i2 > 0) {
            int i3 = i2 - 1;
            ?? r3 = c0843.f3599;
            ?? r4 = r3[i3];
            r3[i3] = 0;
            c0843.f3600 = i3;
            c0845 = r4;
        }
        C0845 c08452 = c0845;
        if (c08452 == null) {
            c08452 = new C0845(i);
            c08452.f3613 = i;
        } else {
            c08452.m3022();
            c08452.f3613 = i;
        }
        int i4 = this.f3589;
        int i5 = this.f3596;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            this.f3596 = i6;
            this.f3593 = (C0845[]) Arrays.copyOf(this.f3593, i6);
        }
        C0845[] c0845Arr = this.f3593;
        int i7 = this.f3589;
        this.f3589 = i7 + 1;
        c0845Arr[i7] = c08452;
        return c08452;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m3011(C0846 c0846) {
        boolean z;
        int i = 0;
        for (int i2 = 0; i2 < this.f3586; i2++) {
            this.f3583[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            int i4 = 1;
            i3++;
            if (i3 >= this.f3586 * 2) {
                return;
            }
            C0845 c0845 = c0846.f3618;
            if (c0845 != null) {
                this.f3583[c0845.f3609] = true;
            }
            C0845 mo3029 = c0846.mo3029(this.f3583);
            if (mo3029 != null) {
                boolean[] zArr = this.f3583;
                int i5 = mo3029.f3609;
                if (zArr[i5]) {
                    return;
                } else {
                    zArr[i5] = true;
                }
            }
            if (mo3029 != null) {
                float f = Float.MAX_VALUE;
                int i6 = i;
                int i7 = -1;
                while (i6 < this.f3591) {
                    C0846 c08462 = this.f3592[i6];
                    if (c08462.f3618.f3613 != i4 && !c08462.f3616) {
                        C0847 c0847 = c08462.f3615;
                        int i8 = c0847.f3625;
                        if (i8 != -1) {
                            for (int i9 = 0; i8 != -1 && i9 < c0847.f3627; i9++) {
                                if (c0847.f3623[i8] == mo3029.f3609) {
                                    z = true;
                                    break;
                                }
                                i8 = c0847.f3628[i8];
                            }
                        }
                        z = false;
                        if (z) {
                            float m3036 = c08462.f3615.m3036(mo3029);
                            if (m3036 < 0.0f) {
                                float f2 = (-c08462.f3617) / m3036;
                                if (f2 < f) {
                                    f = f2;
                                    i7 = i6;
                                }
                            }
                        }
                    }
                    i6++;
                    i4 = 1;
                }
                if (i7 > -1) {
                    C0846 c08463 = this.f3592[i7];
                    c08463.f3618.f3602 = -1;
                    c08463.m3031(mo3029);
                    C0845 c08452 = c08463.f3618;
                    c08452.f3602 = i7;
                    c08452.m3024(this, c08463);
                }
            } else {
                z2 = true;
            }
            i = 0;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C0846 m3012() {
        Object obj;
        ﹳٴ r0 = this.f3588;
        C0843 c0843 = (C0843) r0.ᴵˊ;
        int i = c0843.f3600;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = c0843.f3599;
            obj = objArr[i2];
            objArr[i2] = null;
            c0843.f3600 = i2;
        } else {
            obj = null;
        }
        C0846 c0846 = (C0846) obj;
        if (c0846 == null) {
            return new C0846(r0);
        }
        c0846.f3618 = null;
        c0846.f3615.m3041();
        c0846.f3617 = 0.0f;
        c0846.f3616 = false;
        return c0846;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3013(C0845 c0845, C0845 c08452, int i, int i2) {
        C0846 m3012 = m3012();
        C0845 m3000 = m3000();
        m3000.f3604 = 0;
        m3012.m3033(c0845, c08452, m3000, i);
        if (i2 != 8) {
            m3012.f3615.m3039(m2998(i2), (int) (m3012.f3615.m3036(m3000) * (-1.0f)));
        }
        m2997(m3012);
    }
}
