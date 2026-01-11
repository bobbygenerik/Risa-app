package p010;

import java.util.Arrays;
import p035.AbstractC1220;
import ᵢ.ﹳٴ;

/* renamed from: ʻٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0847 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ﹳٴ f3620;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0846 f3626;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f3627 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f3622 = 8;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int[] f3623 = new int[8];

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int[] f3628 = new int[8];

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float[] f3624 = new float[8];

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f3625 = -1;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f3619 = -1;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f3621 = false;

    public C0847(C0846 c0846, ﹳٴ r5) {
        this.f3626 = c0846;
        this.f3620 = r5;
    }

    public final String toString() {
        int i = this.f3625;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f3627; i2++) {
            StringBuilder m3020 = AbstractC0844.m3020(AbstractC1220.m3791(str, " -> "));
            m3020.append(this.f3624[i]);
            m3020.append(" : ");
            StringBuilder m30202 = AbstractC0844.m3020(m3020.toString());
            m30202.append(((C0845[]) this.f3620.ˈٴ)[this.f3623[i]]);
            str = m30202.toString();
            i = this.f3628[i];
        }
        return str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float m3036(C0845 c0845) {
        int i = this.f3625;
        for (int i2 = 0; i != -1 && i2 < this.f3627; i2++) {
            if (this.f3623[i] == c0845.f3609) {
                return this.f3624[i];
            }
            i = this.f3628[i];
        }
        return 0.0f;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m3037() {
        return this.f3627;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0845 m3038(int i) {
        int i2 = this.f3625;
        for (int i3 = 0; i2 != -1 && i3 < this.f3627; i3++) {
            if (i3 == i) {
                return ((C0845[]) this.f3620.ˈٴ)[this.f3623[i2]];
            }
            i2 = this.f3628[i2];
        }
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3039(C0845 c0845, float f) {
        if (f == 0.0f) {
            m3040(c0845, true);
            return;
        }
        int i = this.f3625;
        C0846 c0846 = this.f3626;
        if (i == -1) {
            this.f3625 = 0;
            this.f3624[0] = f;
            this.f3623[0] = c0845.f3609;
            this.f3628[0] = -1;
            c0845.f3611++;
            c0845.m3026(c0846);
            this.f3627++;
            if (this.f3621) {
                return;
            }
            int i2 = this.f3619 + 1;
            this.f3619 = i2;
            int[] iArr = this.f3623;
            if (i2 >= iArr.length) {
                this.f3621 = true;
                this.f3619 = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f3627; i4++) {
            int i5 = this.f3623[i];
            int i6 = c0845.f3609;
            if (i5 == i6) {
                this.f3624[i] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.f3628[i];
        }
        int i7 = this.f3619;
        int i8 = i7 + 1;
        if (this.f3621) {
            int[] iArr2 = this.f3623;
            if (iArr2[i7] != -1) {
                i7 = iArr2.length;
            }
        } else {
            i7 = i8;
        }
        int[] iArr3 = this.f3623;
        if (i7 >= iArr3.length && this.f3627 < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.f3623;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    i7 = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.f3623;
        if (i7 >= iArr5.length) {
            i7 = iArr5.length;
            int i10 = this.f3622 * 2;
            this.f3622 = i10;
            this.f3621 = false;
            this.f3619 = i7 - 1;
            this.f3624 = Arrays.copyOf(this.f3624, i10);
            this.f3623 = Arrays.copyOf(this.f3623, this.f3622);
            this.f3628 = Arrays.copyOf(this.f3628, this.f3622);
        }
        this.f3623[i7] = c0845.f3609;
        this.f3624[i7] = f;
        if (i3 != -1) {
            int[] iArr6 = this.f3628;
            iArr6[i7] = iArr6[i3];
            iArr6[i3] = i7;
        } else {
            this.f3628[i7] = this.f3625;
            this.f3625 = i7;
        }
        c0845.f3611++;
        c0845.m3026(c0846);
        int i11 = this.f3627 + 1;
        this.f3627 = i11;
        if (!this.f3621) {
            this.f3619++;
        }
        int[] iArr7 = this.f3623;
        if (i11 >= iArr7.length) {
            this.f3621 = true;
        }
        if (this.f3619 >= iArr7.length) {
            this.f3621 = true;
            this.f3619 = iArr7.length - 1;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float m3040(C0845 c0845, boolean z) {
        int i = this.f3625;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f3627) {
            if (this.f3623[i] == c0845.f3609) {
                if (i == this.f3625) {
                    this.f3625 = this.f3628[i];
                } else {
                    int[] iArr = this.f3628;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    c0845.m3025(this.f3626);
                }
                c0845.f3611--;
                this.f3627--;
                this.f3623[i] = -1;
                if (this.f3621) {
                    this.f3619 = i;
                }
                return this.f3624[i];
            }
            i2++;
            i3 = i;
            i = this.f3628[i];
        }
        return 0.0f;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3041() {
        int i = this.f3625;
        for (int i2 = 0; i != -1 && i2 < this.f3627; i2++) {
            C0845 c0845 = ((C0845[]) this.f3620.ˈٴ)[this.f3623[i]];
            if (c0845 != null) {
                c0845.m3025(this.f3626);
            }
            i = this.f3628[i];
        }
        this.f3625 = -1;
        this.f3619 = -1;
        this.f3621 = false;
        this.f3627 = 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3042(C0845 c0845, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.f3625;
            C0846 c0846 = this.f3626;
            if (i == -1) {
                this.f3625 = 0;
                this.f3624[0] = f;
                this.f3623[0] = c0845.f3609;
                this.f3628[0] = -1;
                c0845.f3611++;
                c0845.m3026(c0846);
                this.f3627++;
                if (this.f3621) {
                    return;
                }
                int i2 = this.f3619 + 1;
                this.f3619 = i2;
                int[] iArr = this.f3623;
                if (i2 >= iArr.length) {
                    this.f3621 = true;
                    this.f3619 = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f3627; i4++) {
                int i5 = this.f3623[i];
                int i6 = c0845.f3609;
                if (i5 == i6) {
                    float[] fArr = this.f3624;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.f3625) {
                            this.f3625 = this.f3628[i];
                        } else {
                            int[] iArr2 = this.f3628;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            c0845.m3025(c0846);
                        }
                        if (this.f3621) {
                            this.f3619 = i;
                        }
                        c0845.f3611--;
                        this.f3627--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.f3628[i];
            }
            int i7 = this.f3619;
            int i8 = i7 + 1;
            if (this.f3621) {
                int[] iArr3 = this.f3623;
                if (iArr3[i7] != -1) {
                    i7 = iArr3.length;
                }
            } else {
                i7 = i8;
            }
            int[] iArr4 = this.f3623;
            if (i7 >= iArr4.length && this.f3627 < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f3623;
                    if (i9 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i9] == -1) {
                        i7 = i9;
                        break;
                    }
                    i9++;
                }
            }
            int[] iArr6 = this.f3623;
            if (i7 >= iArr6.length) {
                i7 = iArr6.length;
                int i10 = this.f3622 * 2;
                this.f3622 = i10;
                this.f3621 = false;
                this.f3619 = i7 - 1;
                this.f3624 = Arrays.copyOf(this.f3624, i10);
                this.f3623 = Arrays.copyOf(this.f3623, this.f3622);
                this.f3628 = Arrays.copyOf(this.f3628, this.f3622);
            }
            this.f3623[i7] = c0845.f3609;
            this.f3624[i7] = f;
            if (i3 != -1) {
                int[] iArr7 = this.f3628;
                iArr7[i7] = iArr7[i3];
                iArr7[i3] = i7;
            } else {
                this.f3628[i7] = this.f3625;
                this.f3625 = i7;
            }
            c0845.f3611++;
            c0845.m3026(c0846);
            this.f3627++;
            if (!this.f3621) {
                this.f3619++;
            }
            int i11 = this.f3619;
            int[] iArr8 = this.f3623;
            if (i11 >= iArr8.length) {
                this.f3621 = true;
                this.f3619 = iArr8.length - 1;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final float m3043(int i) {
        int i2 = this.f3625;
        for (int i3 = 0; i2 != -1 && i3 < this.f3627; i3++) {
            if (i3 == i) {
                return this.f3624[i2];
            }
            i2 = this.f3628[i2];
        }
        return 0.0f;
    }
}
