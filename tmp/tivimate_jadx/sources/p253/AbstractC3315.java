package p253;

import androidx.media3.common.ParserException;
import p022.C1047;
import p137.AbstractC2305;
import p171.InterfaceC2622;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: יˑ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3315 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f12759 = {0, 0, 0, 0, 16, 0, Byte.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f12758 = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1047 m7134(int i, InterfaceC2622 interfaceC2622, C3732 c3732) {
        C1047 m3385 = C1047.m3385(interfaceC2622, c3732);
        while (true) {
            int i2 = m3385.f4127;
            if (i2 == i) {
                return m3385;
            }
            AbstractC2305.m5373(i2, "Ignoring unknown WAV chunk: ", "WavHeaderReader");
            long j = m3385.f4128;
            long j2 = 8 + j;
            if (j % 2 != 0) {
                j2 = 9 + j;
            }
            if (j2 > 2147483647L) {
                throw ParserException.m739("Chunk is too large (~2GB+) to skip; id: " + i2);
            }
            interfaceC2622.mo4595((int) j2);
            m3385 = C1047.m3385(interfaceC2622, c3732);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m7135(InterfaceC2622 interfaceC2622) {
        C3732 c3732 = new C3732(8);
        int i = C1047.m3385(interfaceC2622, c3732).f4127;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        interfaceC2622.mo4576(c3732.f14534, 0, 4);
        c3732.m7896(0);
        int m7893 = c3732.m7893();
        if (m7893 == 1463899717) {
            return true;
        }
        AbstractC3731.m7842("WavHeaderReader", "Unsupported form type: " + m7893);
        return false;
    }
}
