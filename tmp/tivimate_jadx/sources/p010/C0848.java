package p010;

import java.util.Arrays;
import p404.C4790;

/* renamed from: ʻٴ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0848 extends C0846 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C4790 f3629;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C0845[] f3630;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f3631;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C0845[] f3632;

    @Override // p010.C0846
    public final String toString() {
        C4790 c4790 = this.f3629;
        String str = " goal -> (" + this.f3617 + ") : ";
        for (int i = 0; i < this.f3631; i++) {
            c4790.f18036 = this.f3632[i];
            str = str + c4790 + " ";
        }
        return str;
    }

    @Override // p010.C0846
    /* renamed from: ʼˎ */
    public final void mo3027(C0842 c0842, C0846 c0846, boolean z) {
        C0845 c0845 = c0846.f3618;
        if (c0845 == null) {
            return;
        }
        float[] fArr = c0845.f3605;
        C0847 c0847 = c0846.f3615;
        int m3037 = c0847.m3037();
        for (int i = 0; i < m3037; i++) {
            C0845 m3038 = c0847.m3038(i);
            float m3043 = c0847.m3043(i);
            C4790 c4790 = this.f3629;
            c4790.f18036 = m3038;
            if (m3038.f3603) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((C0845) c4790.f18036).f3605;
                    float f = (fArr[i2] * m3043) + fArr2[i2];
                    fArr2[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        ((C0845) c4790.f18036).f3605[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    ((C0848) c4790.f18034).m3045((C0845) c4790.f18036);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = fArr[i3];
                    if (f2 != 0.0f) {
                        float f3 = f2 * m3043;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        ((C0845) c4790.f18036).f3605[i3] = f3;
                    } else {
                        ((C0845) c4790.f18036).f3605[i3] = 0.0f;
                    }
                }
                m3044(m3038);
            }
            this.f3617 = (c0846.f3617 * m3043) + this.f3617;
        }
        m3045(c0845);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m3044(C0845 c0845) {
        int i;
        int i2 = this.f3631 + 1;
        C0845[] c0845Arr = this.f3632;
        if (i2 > c0845Arr.length) {
            C0845[] c0845Arr2 = (C0845[]) Arrays.copyOf(c0845Arr, c0845Arr.length * 2);
            this.f3632 = c0845Arr2;
            this.f3630 = (C0845[]) Arrays.copyOf(c0845Arr2, c0845Arr2.length * 2);
        }
        C0845[] c0845Arr3 = this.f3632;
        int i3 = this.f3631;
        c0845Arr3[i3] = c0845;
        int i4 = i3 + 1;
        this.f3631 = i4;
        if (i4 > 1 && c0845Arr3[i3].f3609 > c0845.f3609) {
            int i5 = 0;
            while (true) {
                i = this.f3631;
                if (i5 >= i) {
                    break;
                }
                this.f3630[i5] = this.f3632[i5];
                i5++;
            }
            Arrays.sort(this.f3630, 0, i, new ˑﹳ(0));
            for (int i6 = 0; i6 < this.f3631; i6++) {
                this.f3632[i6] = this.f3630[i6];
            }
        }
        c0845.f3603 = true;
        c0845.m3026(this);
    }

    @Override // p010.C0846
    /* renamed from: ˈ */
    public final C0845 mo3029(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.f3631; i2++) {
            C0845[] c0845Arr = this.f3632;
            C0845 c0845 = c0845Arr[i2];
            if (!zArr[c0845.f3609]) {
                C4790 c4790 = this.f3629;
                c4790.f18036 = c0845;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = ((C0845) c4790.f18036).f3605[i3];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    C0845 c08452 = c0845Arr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = c08452.f3605[i3];
                            float f3 = ((C0845) c4790.f18036).f3605[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f3632[i];
    }

    @Override // p010.C0846
    /* renamed from: ˑﹳ */
    public final boolean mo3030() {
        return this.f3631 == 0;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m3045(C0845 c0845) {
        int i = 0;
        while (i < this.f3631) {
            if (this.f3632[i] == c0845) {
                while (true) {
                    int i2 = this.f3631;
                    if (i >= i2 - 1) {
                        this.f3631 = i2 - 1;
                        c0845.f3603 = false;
                        return;
                    } else {
                        C0845[] c0845Arr = this.f3632;
                        int i3 = i + 1;
                        c0845Arr[i] = c0845Arr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }
}
