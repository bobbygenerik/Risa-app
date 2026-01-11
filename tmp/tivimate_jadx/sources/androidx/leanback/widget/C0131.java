package androidx.leanback.widget;

import p052.C1417;
import p179.C2676;

/* renamed from: androidx.leanback.widget.ᐧﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0131 extends AbstractC0105 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C1417 f974;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f975;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f976;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Object f977;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int m635(int i) {
        C0090 mo597;
        int i2;
        int i3 = this.f907;
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        if (!this.f900) {
            int i4 = this.f905.יـ(i3);
            if (((ﾞʻ) mo597(this.f907)).ᴵˊ == i) {
                return i4;
            }
            int i5 = this.f907;
            do {
                i5++;
                if (i5 <= m642()) {
                    mo597 = mo597(i5);
                    i4 += mo597.f846;
                }
            } while (((ﾞʻ) mo597).ᴵˊ != i);
            return i4;
        }
        int i6 = this.f905.יـ(this.f903);
        C0090 mo5972 = mo597(this.f903);
        if (((ﾞʻ) mo5972).ᴵˊ == i) {
            i2 = mo5972.f847;
        } else {
            int i7 = this.f903;
            do {
                i7--;
                if (i7 >= this.f976) {
                    i6 -= mo5972.f846;
                    mo5972 = mo597(i7);
                }
            } while (((ﾞʻ) mo5972).ᴵˊ != i);
            i2 = mo5972.f847;
        }
        return i6 - i2;
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x012a, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fb A[LOOP:2: B:54:0x00fb->B:68:0x011f, LOOP_START, PHI: r5 r8 r9
      0x00fb: PHI (r5v12 int) = (r5v6 int), (r5v17 int) binds: [B:53:0x00f9, B:68:0x011f] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r8v19 int) = (r8v17 int), (r8v20 int) binds: [B:53:0x00f9, B:68:0x011f] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r9v8 int) = (r9v6 int), (r9v10 int) binds: [B:53:0x00f9, B:68:0x011f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012d  */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m636(int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.C0131.m636(int, boolean):boolean");
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int m637(int i, int i2, int i3) {
        int i4;
        C1417 c1417 = this.f974;
        int i5 = this.f903;
        if (i5 >= 0 && (i5 != m642() || this.f903 != i - 1)) {
            throw new IllegalStateException();
        }
        int i6 = this.f903;
        if (i6 >= 0) {
            i4 = i3 - this.f905.יـ(i6);
        } else if (c1417.m4167() <= 0 || i != m642() + 1) {
            i4 = 0;
        } else {
            int m642 = m642();
            while (true) {
                if (m642 < this.f976) {
                    m642 = m642();
                    break;
                }
                if (((ﾞʻ) mo597(m642)).ᴵˊ == i2) {
                    break;
                }
                m642--;
            }
            i4 = this.f900 ? (-mo597(m642).f847) - this.f901 : mo597(m642).f847 + this.f901;
            for (int i7 = m642 + 1; i7 <= m642(); i7++) {
                i4 -= mo597(i7).f846;
            }
        }
        C0090 c0090 = new C0090(i2, i4);
        c1417.m4165(c0090);
        Object obj = this.f977;
        if (obj != null) {
            c0090.f847 = this.f975;
            this.f977 = null;
        } else {
            ˉˆ r4 = this.f905;
            Object[] objArr = this.f906;
            c0090.f847 = r4.ﾞʻ(i, true, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        if (c1417.m4167() == 1) {
            this.f903 = i;
            this.f907 = i;
            this.f976 = i;
        } else {
            int i8 = this.f903;
            if (i8 < 0) {
                this.f903 = i;
                this.f907 = i;
            } else {
                this.f903 = i8 + 1;
            }
        }
        this.f905.ˆʾ(obj2, i, c0090.f847, i2, i3);
        return c0090.f847;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m638(int i) {
        int i2;
        C0090 mo597;
        int i3 = this.f907;
        if (i3 < 0) {
            return Integer.MIN_VALUE;
        }
        if (this.f900) {
            int i4 = this.f905.יـ(i3);
            if (((ﾞʻ) mo597(this.f907)).ᴵˊ == i) {
                return i4;
            }
            int i5 = this.f907;
            do {
                i5++;
                if (i5 <= m642()) {
                    mo597 = mo597(i5);
                    i4 += mo597.f846;
                }
            } while (((ﾞʻ) mo597).ᴵˊ != i);
            return i4;
        }
        int i6 = this.f905.יـ(this.f903);
        C0090 mo5972 = mo597(this.f903);
        if (((ﾞʻ) mo5972).ᴵˊ == i) {
            i2 = mo5972.f847;
        } else {
            int i7 = this.f903;
            do {
                i7--;
                if (i7 >= this.f976) {
                    i6 -= mo5972.f846;
                    mo5972 = mo597(i7);
                }
            } while (((ﾞʻ) mo5972).ᴵˊ != i);
            i2 = mo5972.f847;
        }
        return i6 + i2;
        return Integer.MIN_VALUE;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m639(int i, int i2, int i3) {
        int i4 = this.f907;
        if (i4 >= 0 && (i4 != this.f976 || i4 != i + 1)) {
            throw new IllegalStateException();
        }
        int i5 = this.f976;
        C0090 mo597 = i5 >= 0 ? mo597(i5) : null;
        int i6 = this.f905.יـ(this.f976);
        C0090 c0090 = new C0090(i2, 0);
        C1417 c1417 = this.f974;
        int i7 = (c1417.f5548 - 1) & c1417.f5546;
        c1417.f5548 = i7;
        ((Object[]) c1417.f5547)[i7] = c0090;
        if (i7 == c1417.f5545) {
            c1417.m4162();
        }
        Object obj = this.f977;
        if (obj != null) {
            c0090.f847 = this.f975;
            this.f977 = null;
        } else {
            ˉˆ r1 = this.f905;
            Object[] objArr = this.f906;
            c0090.f847 = r1.ﾞʻ(i, false, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        this.f907 = i;
        this.f976 = i;
        if (this.f903 < 0) {
            this.f903 = i;
        }
        int i8 = !this.f900 ? i3 - c0090.f847 : i3 + c0090.f847;
        if (mo597 != null) {
            mo597.f846 = i6 - i8;
        }
        this.f905.ˆʾ(obj2, i, c0090.f847, i2, i8);
        return c0090.f847;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˆʾ */
    public final C2676[] mo593(int i, int i2) {
        for (int i3 = 0; i3 < this.f902; i3++) {
            C2676 c2676 = this.f904[i3];
            c2676.f10196 = c2676.f10198;
        }
        if (i >= 0) {
            while (i <= i2) {
                C2676 c26762 = this.f904[((ﾞʻ) mo597(i)).ᴵˊ];
                if (c26762.m6024() > 0) {
                    int i4 = c26762.f10198;
                    int i5 = c26762.f10196;
                    if (i4 == i5) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    int[] iArr = c26762.f10199;
                    int i6 = c26762.f10197;
                    if (iArr[(i5 - 1) & i6] == i - 1) {
                        if (i4 == i5) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        int i7 = (i5 - 1) & i6;
                        int i8 = iArr[i7];
                        c26762.f10196 = i7;
                        c26762.m6026(i);
                        i++;
                    }
                }
                c26762.m6026(i);
                c26762.m6026(i);
                i++;
            }
        }
        return this.f904;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˉʿ */
    public final boolean mo595(int i, boolean z) {
        Object[] objArr = this.f906;
        if (this.f905.ᵔﹳ() == 0 || (!z && m594(i))) {
            return false;
        }
        try {
            if (!m643(i, z)) {
                return m636(i, z);
            }
            objArr[0] = null;
            this.f977 = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f977 = null;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m640(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        C1417 c1417 = this.f974;
        if (c1417.m4167() != 0) {
            int i5 = this.f905.ᵔﹳ();
            int i6 = this.f903;
            if (i6 >= 0) {
                i2 = i6 + 1;
                i3 = this.f905.יـ(i6);
            } else {
                int i7 = this.f899;
                i2 = i7 != -1 ? i7 : 0;
                if (i2 > m642() + 1 || i2 < this.f976) {
                    c1417.m4164(c1417.m4167());
                    return false;
                }
                if (i2 <= m642()) {
                    i3 = Integer.MAX_VALUE;
                }
            }
            int m642 = m642();
            int i8 = i2;
            while (i8 < i5 && i8 <= m642) {
                C0090 mo597 = mo597(i8);
                if (i3 != Integer.MAX_VALUE) {
                    i3 += mo597.f846;
                }
                int i9 = i3;
                int i10 = ((ﾞʻ) mo597).ᴵˊ;
                ˉˆ r3 = this.f905;
                Object[] objArr = this.f906;
                int i11 = r3.ﾞʻ(i8, true, objArr, false);
                if (i11 != mo597.f847) {
                    mo597.f847 = i11;
                    c1417.m4163(m642 - i8);
                    i4 = i8;
                } else {
                    i4 = m642;
                }
                this.f903 = i8;
                if (this.f907 < 0) {
                    this.f907 = i8;
                }
                this.f905.ˆʾ(objArr[0], i8, i11, i10, i9);
                if (z || !m592(i)) {
                    i3 = i9 == Integer.MAX_VALUE ? this.f905.יـ(i8) : i9;
                    if (i10 != this.f902 - 1 || !z) {
                        i8++;
                        m642 = i4;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˏי, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0090 mo597(int i) {
        C1417 c1417 = this.f974;
        int i2 = i - this.f976;
        if (i2 < 0 || i2 >= c1417.m4167()) {
            return null;
        }
        if (i2 < 0 || i2 >= c1417.m4167()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return (C0090) ((Object[]) c1417.f5547)[c1417.f5546 & (c1417.f5548 + i2)];
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final int m642() {
        return (this.f974.m4167() + this.f976) - 1;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m643(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        C1417 c1417 = this.f974;
        if (c1417.m4167() != 0) {
            int i5 = this.f907;
            if (i5 < 0) {
                int i6 = this.f899;
                i2 = i6 != -1 ? i6 : 0;
                if (i2 <= m642()) {
                    int i7 = this.f976;
                    if (i2 >= i7 - 1) {
                        if (i2 >= i7) {
                            i3 = Integer.MAX_VALUE;
                            i4 = 0;
                        }
                    }
                }
                c1417.m4164(c1417.m4167());
                return false;
            }
            i3 = this.f905.יـ(i5);
            i4 = mo597(this.f907).f846;
            i2 = this.f907 - 1;
            int max = Math.max(((GridLayoutManager) this.f905.ᴵˊ).f621, this.f976);
            for (int i8 = i2; i8 >= max; i8--) {
                C0090 mo597 = mo597(i8);
                int i9 = ((ﾞʻ) mo597).ᴵˊ;
                ˉˆ r7 = this.f905;
                Object[] objArr = this.f906;
                int i10 = r7.ﾞʻ(i8, false, objArr, false);
                if (i10 != mo597.f847) {
                    c1417.m4164((i8 + 1) - this.f976);
                    this.f976 = this.f907;
                    this.f977 = objArr[0];
                    this.f975 = i10;
                    return false;
                }
                this.f907 = i8;
                if (this.f903 < 0) {
                    this.f903 = i8;
                }
                this.f905.ˆʾ(objArr[0], i8, i10, i9, i3 - i4);
                if (z || !m594(i)) {
                    i3 = this.f905.יـ(i8);
                    i4 = mo597.f846;
                    if (i9 != 0 || !z) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ᵔᵢ */
    public final int mo600(int i, boolean z, int[] iArr) {
        int i2;
        int i3 = this.f905.יـ(i);
        C0090 mo597 = mo597(i);
        int i4 = ((ﾞʻ) mo597).ᴵˊ;
        if (this.f900) {
            int i5 = 1;
            i2 = i3 - this.f905.ʽﹳ(i);
            int i6 = i4;
            for (int i7 = i - 1; i5 < this.f902 && i7 >= this.f907; i7--) {
                i3 -= mo597.f846;
                mo597 = mo597(i7);
                int i8 = ((ﾞʻ) mo597).ᴵˊ;
                if (i8 != i6) {
                    i5++;
                    int i9 = i3 - this.f905.ʽﹳ(i7);
                    if (!z ? i9 >= i2 : i9 <= i2) {
                        i6 = i8;
                    } else {
                        i2 = i9;
                        i = i7;
                        i4 = i8;
                        i6 = i4;
                    }
                }
            }
        } else {
            int i10 = i4;
            int i11 = i10;
            int i12 = 1;
            int i13 = i3;
            for (int i14 = i + 1; i12 < this.f902 && i14 <= this.f903; i14++) {
                C0090 mo5972 = mo597(i14);
                i13 += mo5972.f846;
                int i15 = ((ﾞʻ) mo5972).ᴵˊ;
                if (i15 != i11) {
                    i12++;
                    if (!z ? i13 >= i3 : i13 <= i3) {
                        i11 = i15;
                    } else {
                        i3 = i13;
                        i = i14;
                        i10 = i15;
                        i11 = i10;
                    }
                }
            }
            i2 = i3;
            i4 = i10;
        }
        if (iArr != null) {
            iArr[0] = i4;
            iArr[1] = i;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0136, code lost:
    
        return true;
     */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m644(int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.C0131.m644(int, boolean):boolean");
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ⁱˊ */
    public final boolean mo601(int i, boolean z) {
        Object[] objArr = this.f906;
        if (this.f905.ᵔﹳ() == 0 || (!z && m592(i))) {
            return false;
        }
        try {
            if (!m640(i, z)) {
                return m644(i, z);
            }
            objArr[0] = null;
            this.f977 = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f977 = null;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m645(boolean z) {
        boolean z2 = false;
        if (z) {
            for (int i = this.f903; i >= this.f907; i--) {
                int i2 = ((ﾞʻ) mo597(i)).ᴵˊ;
                if (i2 == 0) {
                    z2 = true;
                } else if (z2 && i2 == this.f902 - 1) {
                    return i;
                }
            }
            return -1;
        }
        for (int i3 = this.f907; i3 <= this.f903; i3++) {
            int i4 = ((ﾞʻ) mo597(i3)).ᴵˊ;
            if (i4 == this.f902 - 1) {
                z2 = true;
            } else if (z2 && i4 == 0) {
                return i3;
            }
        }
        return -1;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ﾞʻ */
    public final void mo603(int i) {
        super.mo603(i);
        C1417 c1417 = this.f974;
        c1417.m4163((m642() - i) + 1);
        if (c1417.m4167() == 0) {
            this.f976 = -1;
        }
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ﾞᴵ */
    public final int mo604(int i, boolean z, int[] iArr) {
        int i2;
        int i3 = this.f905.יـ(i);
        C0090 mo597 = mo597(i);
        int i4 = ((ﾞʻ) mo597).ᴵˊ;
        if (this.f900) {
            i2 = i4;
            int i5 = i2;
            int i6 = 1;
            int i7 = i3;
            for (int i8 = i + 1; i6 < this.f902 && i8 <= this.f903; i8++) {
                C0090 mo5972 = mo597(i8);
                i7 += mo5972.f846;
                int i9 = ((ﾞʻ) mo5972).ᴵˊ;
                if (i9 != i5) {
                    i6++;
                    if (!z ? i7 >= i3 : i7 <= i3) {
                        i5 = i9;
                    } else {
                        i3 = i7;
                        i = i8;
                        i2 = i9;
                        i5 = i2;
                    }
                }
            }
        } else {
            int i10 = 1;
            int i11 = i4;
            C0090 c0090 = mo597;
            int i12 = i3;
            i3 = this.f905.ʽﹳ(i) + i3;
            i2 = i11;
            for (int i13 = i - 1; i10 < this.f902 && i13 >= this.f907; i13--) {
                i12 -= c0090.f846;
                c0090 = mo597(i13);
                int i14 = ((ﾞʻ) c0090).ᴵˊ;
                if (i14 != i11) {
                    i10++;
                    int i15 = this.f905.ʽﹳ(i13) + i12;
                    if (!z ? i15 >= i3 : i15 <= i3) {
                        i11 = i14;
                    } else {
                        i3 = i15;
                        i = i13;
                        i2 = i14;
                        i11 = i2;
                    }
                }
            }
        }
        if (iArr != null) {
            iArr[0] = i2;
            iArr[1] = i;
        }
        return i3;
    }
}
