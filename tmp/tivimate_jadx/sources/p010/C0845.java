package p010;

import java.util.Arrays;

/* renamed from: ʻٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0845 implements Comparable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f3603;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public float f3610;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f3613;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3609 = -1;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f3602 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f3604 = 0;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f3606 = false;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final float[] f3608 = new float[9];

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final float[] f3605 = new float[9];

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C0846[] f3612 = new C0846[16];

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f3607 = 0;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f3611 = 0;

    public C0845(int i) {
        this.f3613 = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f3609 - ((C0845) obj).f3609;
    }

    public final String toString() {
        return "" + this.f3609;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3022() {
        this.f3613 = 5;
        this.f3604 = 0;
        this.f3609 = -1;
        this.f3602 = -1;
        this.f3610 = 0.0f;
        this.f3606 = false;
        int i = this.f3607;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3612[i2] = null;
        }
        this.f3607 = 0;
        this.f3611 = 0;
        this.f3603 = false;
        Arrays.fill(this.f3605, 0.0f);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3023(C0842 c0842, float f) {
        this.f3610 = f;
        this.f3606 = true;
        int i = this.f3607;
        this.f3602 = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3612[i2].m3032(c0842, this, false);
        }
        this.f3607 = 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3024(C0842 c0842, C0846 c0846) {
        int i = this.f3607;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3612[i2].mo3027(c0842, c0846, false);
        }
        this.f3607 = 0;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3025(C0846 c0846) {
        int i = this.f3607;
        int i2 = 0;
        while (i2 < i) {
            if (this.f3612[i2] == c0846) {
                while (i2 < i - 1) {
                    C0846[] c0846Arr = this.f3612;
                    int i3 = i2 + 1;
                    c0846Arr[i2] = c0846Arr[i3];
                    i2 = i3;
                }
                this.f3607--;
                return;
            }
            i2++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3026(C0846 c0846) {
        int i = 0;
        while (true) {
            int i2 = this.f3607;
            if (i >= i2) {
                C0846[] c0846Arr = this.f3612;
                if (i2 >= c0846Arr.length) {
                    this.f3612 = (C0846[]) Arrays.copyOf(c0846Arr, c0846Arr.length * 2);
                }
                C0846[] c0846Arr2 = this.f3612;
                int i3 = this.f3607;
                c0846Arr2[i3] = c0846;
                this.f3607 = i3 + 1;
                return;
            }
            if (this.f3612[i] == c0846) {
                return;
            } else {
                i++;
            }
        }
    }
}
