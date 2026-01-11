package p215;

/* renamed from: ˏˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3009 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f11489;

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte[] f11490;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f11491;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte[] f11492;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6539(byte[] bArr) {
        this.f11490 = bArr;
        this.f11491 = 0;
        this.f11489 = 0;
        if (this.f11492 == null) {
            this.f11492 = new byte[256];
        }
        for (int i = 0; i < 256; i++) {
            this.f11492[i] = (byte) i;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            int i5 = bArr[i2] & 255;
            byte[] bArr2 = this.f11492;
            byte b = bArr2[i4];
            i3 = (i5 + b + i3) & 255;
            bArr2[i4] = bArr2[i3];
            bArr2[i3] = b;
            i2 = (i2 + 1) % bArr.length;
        }
    }
}
