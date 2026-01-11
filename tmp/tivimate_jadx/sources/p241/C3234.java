package p241;

import org.tukaani.xz.CorruptedInputException;
import p022.C1048;

/* renamed from: ˑⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3234 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12354;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f12355;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12349 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12350 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12351 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12356 = 0;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f12352 = 0;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f12353 = 0;

    public C3234(int i, C1048 c1048) {
        this.f12354 = i;
        this.f12355 = c1048.mo3388(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7062(int i, int i2) {
        int i3;
        if (i < 0 || i >= this.f12351) {
            throw new CorruptedInputException();
        }
        int min = Math.min(this.f12356 - this.f12350, i2);
        this.f12352 = i2 - min;
        this.f12353 = i;
        int i4 = (this.f12350 - i) - 1;
        byte[] bArr = this.f12355;
        if (i4 < 0) {
            int i5 = this.f12354;
            int i6 = i4 + i5;
            int min2 = Math.min(i5 - i6, min);
            System.arraycopy(bArr, i6, bArr, this.f12350, min2);
            this.f12350 += min2;
            min -= min2;
            if (min == 0) {
                return;
            } else {
                i4 = 0;
            }
        }
        do {
            int min3 = Math.min(min, this.f12350 - i4);
            System.arraycopy(bArr, i4, bArr, this.f12350, min3);
            i3 = this.f12350 + min3;
            this.f12350 = i3;
            min -= min3;
        } while (min > 0);
        if (this.f12351 < i3) {
            this.f12351 = i3;
        }
    }
}
