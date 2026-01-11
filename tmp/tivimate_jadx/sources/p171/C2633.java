package p171;

import p305.AbstractC3731;

/* renamed from: ˊﾞ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2633 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f9977;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f9978;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f9979;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f9980;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f9981;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f9982 = new byte[10];

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f9983;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5888(InterfaceC2622 interfaceC2622) {
        if (this.f9981) {
            return;
        }
        byte[] bArr = this.f9982;
        interfaceC2622.mo4576(bArr, 0, 10);
        interfaceC2622.mo4600();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b = bArr[7];
            if ((b & 254) == 186) {
                r2 = 40 << ((bArr[((b & 255) == 187 ? 1 : 0) != 0 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        if (r2 == 0) {
            return;
        }
        this.f9981 = true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5889(InterfaceC2639 interfaceC2639, long j, int i, int i2, int i3, C2634 c2634) {
        AbstractC3731.m7848("TrueHD chunk samples must be contiguous in the sample queue.", this.f9980 <= i2 + i3);
        if (this.f9981) {
            int i4 = this.f9977;
            int i5 = i4 + 1;
            this.f9977 = i5;
            if (i4 == 0) {
                this.f9978 = j;
                this.f9979 = i;
                this.f9983 = 0;
            }
            this.f9983 += i2;
            this.f9980 = i3;
            if (i5 >= 16) {
                m5890(interfaceC2639, c2634);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5890(InterfaceC2639 interfaceC2639, C2634 c2634) {
        if (this.f9977 > 0) {
            interfaceC2639.mo4112(this.f9978, this.f9979, this.f9983, this.f9980, c2634);
            this.f9977 = 0;
        }
    }
}
