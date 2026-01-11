package p361;

/* renamed from: ᵔᐧ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4393 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f16339 = new int[10];

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f16340;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8888(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f16339;
            if (i >= iArr.length) {
                return;
            }
            this.f16340 = (1 << i) | this.f16340;
            iArr[i] = i2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m8889() {
        if ((this.f16340 & 16) != 0) {
            return this.f16339[4];
        }
        return 65535;
    }
}
