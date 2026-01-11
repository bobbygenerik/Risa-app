package androidx.leanback.widget;

import p179.C2676;

/* renamed from: androidx.leanback.widget.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0137 extends AbstractC0105 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ﾞʻ f982 = new ﾞʻ(0, 0);

    public C0137() {
        m599(1);
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˆʾ */
    public final C2676[] mo593(int i, int i2) {
        C2676 c2676 = this.f904[0];
        c2676.f10196 = c2676.f10198;
        c2676.m6026(i);
        this.f904[0].m6026(i2);
        return this.f904;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˉʿ */
    public final boolean mo595(int i, boolean z) {
        int i2;
        if (this.f905.ᵔﹳ() == 0 || (!z && m594(i))) {
            return false;
        }
        int i3 = ((GridLayoutManager) this.f905.ᴵˊ).f621;
        boolean z2 = false;
        for (int m647 = m647(); m647 >= i3; m647--) {
            ˉˆ r2 = this.f905;
            Object[] objArr = this.f906;
            int i4 = r2.ﾞʻ(m647, false, objArr, false);
            if (this.f907 < 0 || this.f903 < 0) {
                i2 = this.f900 ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                this.f907 = m647;
                this.f903 = m647;
            } else {
                i2 = this.f900 ? this.f905.יـ(m647 + 1) + this.f901 + i4 : (this.f905.יـ(m647 + 1) - this.f901) - i4;
                this.f907 = m647;
            }
            this.f905.ˆʾ(objArr[0], m647, i4, 0, i2);
            z2 = true;
            if (z || m594(i)) {
                break;
            }
        }
        return z2;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int m647() {
        int i = this.f907;
        if (i >= 0) {
            return i - 1;
        }
        int i2 = this.f899;
        return i2 != -1 ? Math.min(i2, this.f905.ᵔﹳ() - 1) : this.f905.ᵔﹳ() - 1;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ˑﹳ */
    public final void mo596(int i, int i2, C2676 c2676) {
        int m647;
        int i3;
        if (!this.f900 ? i2 < 0 : i2 > 0) {
            if (this.f903 == this.f905.ᵔﹳ() - 1) {
                return;
            }
            int i4 = this.f903;
            if (i4 >= 0) {
                m647 = i4 + 1;
            } else {
                int i5 = this.f899;
                m647 = i5 != -1 ? Math.min(i5, this.f905.ᵔﹳ() - 1) : 0;
            }
            int i6 = this.f905.ʽﹳ(this.f903) + this.f901;
            int i7 = this.f905.יـ(this.f903);
            if (this.f900) {
                i6 = -i6;
            }
            i3 = i6 + i7;
        } else {
            if (this.f907 == 0) {
                return;
            }
            m647 = m647();
            i3 = this.f905.יـ(this.f907) + (this.f900 ? this.f901 : -this.f901);
        }
        c2676.m6025(m647, Math.abs(i3 - i));
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ٴﹶ */
    public final ﾞʻ mo597(int i) {
        return this.f982;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ᵔᵢ */
    public final int mo600(int i, boolean z, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
        }
        return this.f900 ? this.f905.יـ(i) - this.f905.ʽﹳ(i) : this.f905.יـ(i);
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ⁱˊ */
    public final boolean mo601(int i, boolean z) {
        int min;
        int i2;
        if (this.f905.ᵔﹳ() == 0 || (!z && m592(i))) {
            return false;
        }
        int i3 = this.f903;
        if (i3 >= 0) {
            min = i3 + 1;
        } else {
            int i4 = this.f899;
            min = i4 != -1 ? Math.min(i4, this.f905.ᵔﹳ() - 1) : 0;
        }
        int i5 = min;
        boolean z2 = false;
        while (i5 < this.f905.ᵔﹳ()) {
            ˉˆ r0 = this.f905;
            Object[] objArr = this.f906;
            int i6 = r0.ﾞʻ(i5, true, objArr, false);
            if (this.f907 < 0 || this.f903 < 0) {
                i2 = this.f900 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                this.f907 = i5;
                this.f903 = i5;
            } else {
                if (this.f900) {
                    int i7 = i5 - 1;
                    i2 = (this.f905.יـ(i7) - this.f905.ʽﹳ(i7)) - this.f901;
                } else {
                    int i8 = i5 - 1;
                    i2 = this.f901 + this.f905.ʽﹳ(i8) + this.f905.יـ(i8);
                }
                this.f903 = i5;
            }
            this.f905.ˆʾ(objArr[0], i5, i6, 0, i2);
            if (z || m592(i)) {
                return true;
            }
            i5++;
            z2 = true;
        }
        return z2;
    }

    @Override // androidx.leanback.widget.AbstractC0105
    /* renamed from: ﾞᴵ */
    public final int mo604(int i, boolean z, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
        }
        if (this.f900) {
            return this.f905.יـ(i);
        }
        return this.f905.ʽﹳ(i) + this.f905.יـ(i);
    }
}
