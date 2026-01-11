package p392;

import android.util.Pair;
import java.util.HashMap;
import p055.AbstractC1445;
import p055.C1466;
import p055.C1467;
import p305.AbstractC3712;
import p420.C4979;

/* renamed from: ⁱי.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4679 extends AbstractC1445 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final /* synthetic */ int f17556 = 0;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object[] f17557;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4979 f17558;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final HashMap f17559;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f17560;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f17561;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int[] f17562;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC1445[] f17563;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f17564;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int[] f17565;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4679(java.util.ArrayList r8, p420.C4979 r9) {
        /*
            r7 = this;
            int r0 = r8.size()
            ʽⁱ.ʼˈ[] r0 = new p055.AbstractC1445[r0]
            int r1 = r8.size()
            r2 = 0
            r3 = r2
            r4 = r3
        Ld:
            if (r4 >= r1) goto L21
            java.lang.Object r5 = r8.get(r4)
            int r4 = r4 + 1
            ⁱי.ˆﾞ r5 = (p392.InterfaceC4656) r5
            int r6 = r3 + 1
            ʽⁱ.ʼˈ r5 = r5.mo9261()
            r0[r3] = r5
            r3 = r6
            goto Ld
        L21:
            int r1 = r8.size()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            int r3 = r8.size()
            r4 = r2
        L2c:
            if (r4 >= r3) goto L40
            java.lang.Object r5 = r8.get(r4)
            int r4 = r4 + 1
            ⁱי.ˆﾞ r5 = (p392.InterfaceC4656) r5
            int r6 = r2 + 1
            java.lang.Object r5 = r5.mo9262()
            r1[r2] = r5
            r2 = r6
            goto L2c
        L40:
            r7.<init>(r0, r1, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4679.<init>(java.util.ArrayList, ﹳᵢ.ᵎᵔ):void");
    }

    public C4679(AbstractC1445[] abstractC1445Arr, Object[] objArr, C4979 c4979) {
        this.f17558 = c4979;
        this.f17564 = c4979.f18580.length;
        int length = abstractC1445Arr.length;
        this.f17563 = abstractC1445Arr;
        this.f17565 = new int[length];
        this.f17562 = new int[length];
        this.f17557 = objArr;
        this.f17559 = new HashMap();
        int length2 = abstractC1445Arr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < length2) {
            AbstractC1445 abstractC1445 = abstractC1445Arr[i];
            this.f17563[i4] = abstractC1445;
            this.f17562[i4] = i2;
            this.f17565[i4] = i3;
            i2 += abstractC1445.mo4222();
            i3 += this.f17563[i4].mo4227();
            this.f17559.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.f17560 = i2;
        this.f17561 = i3;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ʽ */
    public final int mo4218(boolean z) {
        int i;
        int i2 = this.f17564;
        if (i2 != 0) {
            if (z) {
                int[] iArr = this.f17558.f18580;
                i = iArr.length > 0 ? iArr[iArr.length - 1] : -1;
            } else {
                i = i2 - 1;
            }
            do {
                AbstractC1445[] abstractC1445Arr = this.f17563;
                if (!abstractC1445Arr[i].m4217()) {
                    return abstractC1445Arr[i].mo4218(z) + this.f17562[i];
                }
                i = m9291(i, z);
            } while (i != -1);
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ˉʿ */
    public final C1466 mo4221(int i, C1466 c1466, long j) {
        int[] iArr = this.f17562;
        int m7769 = AbstractC3712.m7769(iArr, i + 1, false, false);
        int i2 = iArr[m7769];
        int i3 = this.f17565[m7769];
        this.f17563[m7769].mo4221(i - i2, c1466, j);
        Object obj = this.f17557[m7769];
        if (!C1466.f5726.equals(c1466.f5741)) {
            obj = Pair.create(obj, c1466.f5741);
        }
        c1466.f5741 = obj;
        c1466.f5738 += i3;
        c1466.f5734 += i3;
        return c1466;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ˉˆ */
    public final int mo4222() {
        return this.f17560;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ˑﹳ */
    public final int mo4223(int i, int i2, boolean z) {
        int[] iArr = this.f17562;
        int m7769 = AbstractC3712.m7769(iArr, i + 1, false, false);
        int i3 = iArr[m7769];
        AbstractC1445[] abstractC1445Arr = this.f17563;
        int mo4223 = abstractC1445Arr[m7769].mo4223(i - i3, i2 != 2 ? i2 : 0, z);
        if (mo4223 != -1) {
            return i3 + mo4223;
        }
        int m9290 = m9290(m7769, z);
        while (m9290 != -1 && abstractC1445Arr[m9290].m4217()) {
            m9290 = m9290(m9290, z);
        }
        if (m9290 != -1) {
            return abstractC1445Arr[m9290].mo4229(z) + iArr[m9290];
        }
        if (i2 == 2) {
            return mo4229(z);
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ٴﹶ */
    public final int mo4224(int i, int i2, boolean z) {
        int[] iArr = this.f17562;
        int m7769 = AbstractC3712.m7769(iArr, i + 1, false, false);
        int i3 = iArr[m7769];
        AbstractC1445[] abstractC1445Arr = this.f17563;
        int mo4224 = abstractC1445Arr[m7769].mo4224(i - i3, i2 != 2 ? i2 : 0, z);
        if (mo4224 != -1) {
            return i3 + mo4224;
        }
        int m9291 = m9291(m7769, z);
        while (m9291 != -1 && abstractC1445Arr[m9291].m4217()) {
            m9291 = m9291(m9291, z);
        }
        if (m9291 != -1) {
            return abstractC1445Arr[m9291].mo4218(z) + iArr[m9291];
        }
        if (i2 == 2) {
            return mo4218(z);
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ᵎﹶ */
    public final C1467 mo4225(Object obj, C1467 c1467) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f17559.get(obj2);
        int intValue = num == null ? -1 : num.intValue();
        int i = this.f17562[intValue];
        this.f17563[intValue].mo4225(obj3, c1467);
        c1467.f5744 += i;
        c1467.f5748 = obj;
        return c1467;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ᵔᵢ */
    public final int mo4227() {
        return this.f17561;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m9290(int i, boolean z) {
        if (!z) {
            if (i < this.f17564 - 1) {
                return i + 1;
            }
            return -1;
        }
        C4979 c4979 = this.f17558;
        int i2 = c4979.f18579[i] + 1;
        int[] iArr = c4979.f18580;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ⁱˊ */
    public final int mo4228(Object obj) {
        int mo4228;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            Integer num = (Integer) this.f17559.get(obj2);
            int intValue = num == null ? -1 : num.intValue();
            if (intValue != -1 && (mo4228 = this.f17563[intValue].mo4228(obj3)) != -1) {
                return this.f17565[intValue] + mo4228;
            }
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ﹳٴ */
    public final int mo4229(boolean z) {
        if (this.f17564 != 0) {
            int i = 0;
            if (z) {
                int[] iArr = this.f17558.f18580;
                i = iArr.length > 0 ? iArr[0] : -1;
            }
            do {
                AbstractC1445[] abstractC1445Arr = this.f17563;
                if (!abstractC1445Arr[i].m4217()) {
                    return abstractC1445Arr[i].mo4229(z) + this.f17562[i];
                }
                i = m9290(i, z);
            } while (i != -1);
        }
        return -1;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m9291(int i, boolean z) {
        if (!z) {
            if (i > 0) {
                return i - 1;
            }
            return -1;
        }
        C4979 c4979 = this.f17558;
        int i2 = c4979.f18579[i] - 1;
        if (i2 >= 0) {
            return c4979.f18580[i2];
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ﾞʻ */
    public final Object mo4230(int i) {
        int[] iArr = this.f17565;
        int m7769 = AbstractC3712.m7769(iArr, i + 1, false, false);
        return Pair.create(this.f17557[m7769], this.f17563[m7769].mo4230(i - iArr[m7769]));
    }

    @Override // p055.AbstractC1445
    /* renamed from: ﾞᴵ */
    public final C1467 mo4231(int i, C1467 c1467, boolean z) {
        int[] iArr = this.f17565;
        int m7769 = AbstractC3712.m7769(iArr, i + 1, false, false);
        int i2 = this.f17562[m7769];
        this.f17563[m7769].mo4231(i - iArr[m7769], c1467, z);
        c1467.f5744 += i2;
        if (z) {
            Object obj = this.f17557[m7769];
            Object obj2 = c1467.f5748;
            obj2.getClass();
            c1467.f5748 = Pair.create(obj, obj2);
        }
        return c1467;
    }
}
