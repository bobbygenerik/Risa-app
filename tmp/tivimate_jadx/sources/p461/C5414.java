package p461;

import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: ﾞᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5414 implements InterfaceC5415 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final boolean[] f20679 = {true, true, true, false, true, false, false, false};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f20680 = {0, 1, 2, 2, 3, 3, 3, 3};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f20681;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f20682;

    @Override // p461.InterfaceC5415
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo10848(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = i - 1;
        int i6 = (i2 + i) - 5;
        int i7 = i;
        while (true) {
            if (i7 > i6) {
                break;
            }
            if ((bArr[i7] & 254) == 232) {
                int i8 = i7 - i5;
                int i9 = i8 & (-4);
                int[] iArr = f20680;
                if (i9 != 0) {
                    this.f20681 = 0;
                } else {
                    int i10 = (this.f20681 << (i8 - 1)) & 7;
                    this.f20681 = i10;
                    if (i10 != 0 && (!f20679[i10] || (i3 = bArr[(i7 + 4) - iArr[i10]] & 255) == 0 || i3 == 255)) {
                        this.f20681 = (i10 << 1) | 1;
                        i5 = i7;
                    }
                }
                int i11 = i7 + 4;
                int i12 = bArr[i11] & 255;
                if (i12 == 0 || i12 == 255) {
                    int i13 = i7 + 1;
                    int i14 = ᵎ.ﾞʻ(i13, bArr);
                    while (true) {
                        i4 = i14 - ((this.f20682 + i7) - i);
                        int i15 = this.f20681;
                        if (i15 != 0) {
                            int i16 = iArr[i15] * 8;
                            int i17 = ((byte) (i4 >>> (24 - i16))) & 255;
                            if (i17 != 0 && i17 != 255) {
                                break;
                            }
                            i14 = i4 ^ ((1 << (32 - i16)) - 1);
                        } else {
                            break;
                        }
                    }
                    ᵎ.ﹳᐧ(bArr, i13, (i4 << 7) >> 7);
                    i5 = i7;
                    i7 = i11;
                } else {
                    this.f20681 = (this.f20681 << 1) | 1;
                    i5 = i7;
                }
            }
            i7++;
        }
        int i18 = i7 - i5;
        this.f20681 = (i18 & (-4)) == 0 ? this.f20681 << (i18 - 1) : 0;
        int i19 = i7 - i;
        this.f20682 += i19;
        return i19;
    }
}
