package p254;

import java.util.Arrays;

/* renamed from: יי.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3328 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f12873 = {0, 0, 1};

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12874;

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte[] f12875;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f12876;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f12877;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7151(byte[] bArr, int i, int i2) {
        if (this.f12877) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f12875;
            int length = bArr2.length;
            int i4 = this.f12876 + i3;
            if (length < i4) {
                this.f12875 = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.f12875, this.f12876, i3);
            this.f12876 += i3;
        }
    }
}
