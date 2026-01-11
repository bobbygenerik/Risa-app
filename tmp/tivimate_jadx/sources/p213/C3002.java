package p213;

import java.util.ArrayList;
import java.util.Arrays;
import p017.AbstractC0993;
import p055.AbstractC1464;
import p055.C1476;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p305.AbstractC3731;
import p305.C3732;
import ﹶﾞ.ⁱי;

/* renamed from: ˏʻ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3002 extends AbstractC3003 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f11456;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final byte[] f11455 = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final byte[] f11454 = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m6538(C3732 c3732, byte[] bArr) {
        if (c3732.m7904() < bArr.length) {
            return false;
        }
        int i = c3732.f14533;
        byte[] bArr2 = new byte[bArr.length];
        c3732.m7875(bArr2, 0, bArr.length);
        c3732.m7896(i);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // p213.AbstractC3003
    /* renamed from: ʽ */
    public final boolean mo6531(C3732 c3732, long j, ⁱי r6) {
        if (m6538(c3732, f11455)) {
            byte[] copyOf = Arrays.copyOf(c3732.f14534, c3732.f14532);
            int i = copyOf[9] & 255;
            ArrayList m5906 = AbstractC2649.m5906(copyOf);
            if (((C1495) r6.ᴵˊ) == null) {
                C1490 c1490 = new C1490();
                c1490.f5886 = AbstractC1464.m4251("audio/ogg");
                c1490.f5861 = AbstractC1464.m4251("audio/opus");
                c1490.f5873 = i;
                c1490.f5864 = 48000;
                c1490.f5851 = m5906;
                r6.ᴵˊ = new C1495(c1490);
                return true;
            }
        } else {
            if (!m6538(c3732, f11454)) {
                AbstractC3731.m7868((C1495) r6.ᴵˊ);
                return false;
            }
            AbstractC3731.m7868((C1495) r6.ᴵˊ);
            if (!this.f11456) {
                this.f11456 = true;
                c3732.m7900(8);
                C1476 m5907 = AbstractC2649.m5907(AbstractC0993.m3267((String[]) AbstractC2649.m5903(c3732, false, false).ᴵˊ));
                if (m5907 != null) {
                    C1490 m4300 = ((C1495) r6.ᴵˊ).m4300();
                    m4300.f5871 = m5907.m4281(((C1495) r6.ᴵˊ).f5939);
                    r6.ᴵˊ = new C1495(m4300);
                    return true;
                }
            }
        }
        return true;
    }

    @Override // p213.AbstractC3003
    /* renamed from: ˈ */
    public final void mo6532(boolean z) {
        super.mo6532(z);
        if (z) {
            this.f11456 = false;
        }
    }

    @Override // p213.AbstractC3003
    /* renamed from: ⁱˊ */
    public final long mo6533(C3732 c3732) {
        byte[] bArr = c3732.f14534;
        return (this.f11457 * AbstractC2649.m5912(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0)) / 1000000;
    }
}
