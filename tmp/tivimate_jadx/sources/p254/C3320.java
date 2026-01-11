package p254;

import p171.InterfaceC2622;
import p305.AbstractC3712;
import p305.C3724;
import p305.C3732;

/* renamed from: יי.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3320 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12800;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f12801;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f12802;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3724 f12806 = new C3724(0);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f12807 = -9223372036854775807L;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12803 = -9223372036854775807L;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f12804 = -9223372036854775807L;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f12805 = new C3732();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static long m7143(C3732 c3732) {
        int i = c3732.f14533;
        if (c3732.m7904() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c3732.m7875(bArr, 0, 9);
        c3732.m7896(i);
        byte b = bArr[0];
        if ((b & 196) == 68) {
            byte b2 = bArr[2];
            if ((b2 & 4) == 4) {
                byte b3 = bArr[4];
                if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j = b;
                    long j2 = b2;
                    return ((j2 & 3) << 13) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((bArr[1] & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((bArr[3] & 255) << 5) | ((b3 & 248) >> 3);
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m7144(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7145(InterfaceC2622 interfaceC2622) {
        byte[] bArr = AbstractC3712.f14480;
        C3732 c3732 = this.f12805;
        c3732.getClass();
        c3732.m7897(bArr.length, bArr);
        this.f12800 = true;
        interfaceC2622.mo4600();
    }
}
