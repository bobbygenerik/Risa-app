package p010;

import java.util.ArrayList;
import ᵢ.ﹳٴ;

/* renamed from: ʻٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0846 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0847 f3615;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C0845 f3618 = null;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f3617 = 0.0f;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f3614 = new ArrayList();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f3616 = false;

    public C0846(ﹳٴ r2) {
        this.f3615 = new C0847(this, r2);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            ʻٴ.ᵔᵢ r0 = r10.f3618
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            ʻٴ.ᵔᵢ r1 = r10.f3618
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
            float r1 = r10.f3617
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = p010.AbstractC0844.m3020(r0)
            float r1 = r10.f3617
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r4
            goto L36
        L35:
            r1 = r3
        L36:
            ʻٴ.ﹳٴ r5 = r10.f3615
            int r5 = r5.m3037()
        L3c:
            if (r3 >= r5) goto L9c
            ʻٴ.ﹳٴ r6 = r10.f3615
            ʻٴ.ᵔᵢ r6 = r6.m3038(r3)
            if (r6 != 0) goto L47
            goto L99
        L47:
            ʻٴ.ﹳٴ r7 = r10.f3615
            float r7 = r7.m3043(r3)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L99
        L52:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L66
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L76
            java.lang.String r1 = "- "
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
        L64:
            float r7 = r7 * r9
            goto L76
        L66:
            if (r8 <= 0) goto L6f
            java.lang.String r1 = " + "
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
            goto L76
        L6f:
            java.lang.String r1 = " - "
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
            goto L64
        L76:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L81
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r6)
            goto L98
        L81:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L98:
            r1 = r4
        L99:
            int r3 = r3 + 1
            goto L3c
        L9c:
            if (r1 != 0) goto La4
            java.lang.String r1 = "0.0"
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p010.C0846.toString():java.lang.String");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo3027(C0842 c0842, C0846 c0846, boolean z) {
        C0847 c0847 = this.f3615;
        c0847.getClass();
        float m3036 = c0847.m3036(c0846.f3618);
        c0847.m3040(c0846.f3618, z);
        C0847 c08472 = c0846.f3615;
        int m3037 = c08472.m3037();
        for (int i = 0; i < m3037; i++) {
            C0845 m3038 = c08472.m3038(i);
            c0847.m3042(m3038, c08472.m3036(m3038) * m3036, z);
        }
        this.f3617 = (c0846.f3617 * m3036) + this.f3617;
        if (z) {
            c0846.f3618.m3025(this);
        }
        if (this.f3618 == null || this.f3615.m3037() != 0) {
            return;
        }
        this.f3616 = true;
        c0842.f3595 = true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3028(C0845 c0845, C0845 c08452, C0845 c08453, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f3617 = i;
        }
        if (z) {
            this.f3615.m3039(c0845, 1.0f);
            this.f3615.m3039(c08452, -1.0f);
            this.f3615.m3039(c08453, 1.0f);
        } else {
            this.f3615.m3039(c0845, -1.0f);
            this.f3615.m3039(c08452, 1.0f);
            this.f3615.m3039(c08453, -1.0f);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0845 mo3029(boolean[] zArr) {
        return m3035(zArr, null);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean mo3030() {
        return this.f3618 == null && this.f3617 == 0.0f && this.f3615.m3037() == 0;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3031(C0845 c0845) {
        C0845 c08452 = this.f3618;
        if (c08452 != null) {
            this.f3615.m3039(c08452, -1.0f);
            this.f3618.f3602 = -1;
            this.f3618 = null;
        }
        float m3040 = this.f3615.m3040(c0845, true) * (-1.0f);
        this.f3618 = c0845;
        if (m3040 == 1.0f) {
            return;
        }
        this.f3617 /= m3040;
        C0847 c0847 = this.f3615;
        int i = c0847.f3625;
        for (int i2 = 0; i != -1 && i2 < c0847.f3627; i2++) {
            float[] fArr = c0847.f3624;
            fArr[i] = fArr[i] / m3040;
            i = c0847.f3628[i];
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m3032(C0842 c0842, C0845 c0845, boolean z) {
        if (c0845.f3606) {
            float m3036 = this.f3615.m3036(c0845);
            this.f3617 = (c0845.f3610 * m3036) + this.f3617;
            this.f3615.m3040(c0845, z);
            if (z) {
                c0845.m3025(this);
            }
            if (this.f3615.m3037() == 0) {
                this.f3616 = true;
                c0842.f3595 = true;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3033(C0845 c0845, C0845 c08452, C0845 c08453, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f3617 = i;
        }
        if (z) {
            this.f3615.m3039(c0845, 1.0f);
            this.f3615.m3039(c08452, -1.0f);
            this.f3615.m3039(c08453, -1.0f);
        } else {
            this.f3615.m3039(c0845, -1.0f);
            this.f3615.m3039(c08452, 1.0f);
            this.f3615.m3039(c08453, 1.0f);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3034(C0842 c0842, int i) {
        this.f3615.m3039(c0842.m2998(i), 1.0f);
        this.f3615.m3039(c0842.m2998(i), -1.0f);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C0845 m3035(boolean[] zArr, C0845 c0845) {
        int i;
        int m3037 = this.f3615.m3037();
        C0845 c08452 = null;
        float f = 0.0f;
        for (int i2 = 0; i2 < m3037; i2++) {
            float m3043 = this.f3615.m3043(i2);
            if (m3043 < 0.0f) {
                C0845 m3038 = this.f3615.m3038(i2);
                if ((zArr == null || !zArr[m3038.f3609]) && m3038 != c0845 && (((i = m3038.f3613) == 3 || i == 4) && m3043 < f)) {
                    f = m3043;
                    c08452 = m3038;
                }
            }
        }
        return c08452;
    }
}
