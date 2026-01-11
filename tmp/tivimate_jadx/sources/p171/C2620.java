package p171;

import java.io.Serializable;

/* renamed from: ˊﾞ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2620 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f9925;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f9926;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f9927;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Serializable f9928;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f9929;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f9930;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f9931;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m5882(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        this.f9930 = i2;
        this.f9928 = AbstractC2649.f10055[3 - i3];
        int i6 = AbstractC2649.f10053[i5];
        this.f9925 = i6;
        if (i2 == 2) {
            this.f9925 = i6 / 2;
        } else if (i2 == 0) {
            this.f9925 = i6 / 4;
        }
        int i7 = (i >>> 9) & 1;
        int i8 = 1152;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    throw new IllegalArgumentException();
                }
                i8 = 384;
            }
        } else if (i2 != 3) {
            i8 = 576;
        }
        this.f9931 = i8;
        if (i3 == 3) {
            int i9 = i2 == 3 ? AbstractC2649.f10047[i4 - 1] : AbstractC2649.f10042[i4 - 1];
            this.f9927 = i9;
            this.f9929 = (((i9 * 12) / this.f9925) + i7) * 4;
        } else {
            if (i2 == 3) {
                int i10 = i3 == 2 ? AbstractC2649.f10056[i4 - 1] : AbstractC2649.f10048[i4 - 1];
                this.f9927 = i10;
                this.f9929 = ((i10 * 144) / this.f9925) + i7;
            } else {
                int i11 = AbstractC2649.f10043[i4 - 1];
                this.f9927 = i11;
                this.f9929 = (((i3 == 1 ? 72 : 144) * i11) / this.f9925) + i7;
            }
        }
        this.f9926 = ((i >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }
}
