package p213;

import java.util.Arrays;
import p004.C0796;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p171.C2635;
import p305.C3732;
import ﹶﾞ.ⁱי;

/* renamed from: ˏʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2999 extends AbstractC3003 {

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C0796 f11444;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C2635 f11445;

    /* JADX WARN: Type inference failed for: r2v2, types: [ʻˆ.ʽ, java.lang.Object] */
    @Override // p213.AbstractC3003
    /* renamed from: ʽ */
    public final boolean mo6531(C3732 c3732, long j, ⁱי r25) {
        byte[] bArr = c3732.f14534;
        C2635 c2635 = this.f11445;
        if (c2635 == null) {
            C2635 c26352 = new C2635(17, bArr);
            this.f11445 = c26352;
            C1490 m4300 = c26352.m5893(Arrays.copyOfRange(bArr, 9, c3732.f14532), null).m4300();
            m4300.f5886 = AbstractC1464.m4251("audio/ogg");
            r25.ᴵˊ = new C1495(m4300);
            return true;
        }
        byte b = bArr[0];
        if ((b & Byte.MAX_VALUE) != 3) {
            if (b != -1) {
                return true;
            }
            C0796 c0796 = this.f11444;
            if (c0796 != null) {
                c0796.f3352 = j;
                r25.ʽʽ = c0796;
            }
            ((C1495) r25.ᴵˊ).getClass();
            return false;
        }
        ⁱי m5909 = AbstractC2649.m5909(c3732);
        C2635 c26353 = new C2635(c2635.f9997, c2635.f9996, c2635.f9989, c2635.f9991, c2635.f9992, c2635.f9994, c2635.f9995, c2635.f9990, m5909, c2635.f9998);
        this.f11445 = c26353;
        ?? obj = new Object();
        obj.f3351 = c26353;
        obj.f3353 = m5909;
        obj.f3352 = -1L;
        obj.f3354 = -1L;
        this.f11444 = obj;
        return true;
    }

    @Override // p213.AbstractC3003
    /* renamed from: ˈ */
    public final void mo6532(boolean z) {
        super.mo6532(z);
        if (z) {
            this.f11445 = null;
            this.f11444 = null;
        }
    }

    @Override // p213.AbstractC3003
    /* renamed from: ⁱˊ */
    public final long mo6533(C3732 c3732) {
        byte[] bArr = c3732.f14534;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i = (bArr[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c3732.m7900(4);
            c3732.m7887();
        }
        int m5917 = AbstractC2649.m5917(i, c3732);
        c3732.m7896(0);
        return m5917;
    }
}
