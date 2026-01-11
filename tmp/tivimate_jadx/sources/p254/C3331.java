package p254;

import p171.InterfaceC2639;
import p305.AbstractC3731;

/* renamed from: יי.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3331 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12896;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f12897;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12898;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12899;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f12900;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f12901;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2639 f12902;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12903;

    public C3331(InterfaceC2639 interfaceC2639) {
        this.f12902 = interfaceC2639;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7153(long j, boolean z, int i) {
        AbstractC3731.m7857(this.f12900 != -9223372036854775807L);
        if (this.f12898 == 182 && z && this.f12901) {
            this.f12902.mo4112(this.f12900, this.f12897 ? 1 : 0, (int) (j - this.f12899), i, null);
        }
        if (this.f12898 != 179) {
            this.f12899 = j;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7154(byte[] bArr, int i, int i2) {
        if (this.f12896) {
            int i3 = this.f12903;
            int i4 = (i + 1) - i3;
            if (i4 >= i2) {
                this.f12903 = (i2 - i) + i3;
            } else {
                this.f12897 = ((bArr[i4] & 192) >> 6) == 0;
                this.f12896 = false;
            }
        }
    }
}
