package p254;

import java.util.Arrays;

/* renamed from: יי.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3350 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final byte[] f13103 = {0, 0, 1};

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f13104;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13105;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte[] f13106;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f13107;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f13108;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7165(byte[] bArr, int i, int i2) {
        if (this.f13108) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f13106;
            int length = bArr2.length;
            int i4 = this.f13104 + i3;
            if (length < i4) {
                this.f13106 = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.f13106, this.f13104, i3);
            this.f13104 += i3;
        }
    }
}
