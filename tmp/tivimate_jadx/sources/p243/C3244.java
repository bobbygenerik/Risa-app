package p243;

import p171.InterfaceC2622;

/* renamed from: ˑﹶ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3244 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final long[] f12487 = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12488;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f12489;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f12490 = new byte[8];

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m7074(int i, boolean z, byte[] bArr) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~f12487[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m7075(InterfaceC2622 interfaceC2622, boolean z, boolean z2, int i) {
        int i2;
        int i3 = this.f12489;
        byte[] bArr = this.f12490;
        if (i3 == 0) {
            if (!interfaceC2622.mo4601(bArr, 0, 1, z)) {
                return -1L;
            }
            int i4 = bArr[0] & 255;
            int i5 = 0;
            while (true) {
                if (i5 >= 8) {
                    i2 = -1;
                    break;
                }
                if ((f12487[i5] & i4) != 0) {
                    i2 = i5 + 1;
                    break;
                }
                i5++;
            }
            this.f12488 = i2;
            if (i2 == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f12489 = 1;
        }
        int i6 = this.f12488;
        if (i6 > i) {
            this.f12489 = 0;
            return -2L;
        }
        if (i6 != 1) {
            interfaceC2622.readFully(bArr, 1, i6 - 1);
        }
        this.f12489 = 0;
        return m7074(this.f12488, z2, bArr);
    }
}
