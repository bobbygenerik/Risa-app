package p048;

import p152.AbstractC2444;
import p164.C2571;
import p208.C2942;
import p394.AbstractC4712;
import p435.AbstractC5154;

/* renamed from: ʽי.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1380 {
    static {
        new C2571("\"\\".getBytes(AbstractC5154.f19435)).f9766 = "\"\\";
        new C2571("\t ,=".getBytes(AbstractC5154.f19435)).f9766 = "\t ,=";
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x01dd, code lost:
    
        if (p394.AbstractC4713.f17805.f19412.matcher(r0).matches() == false) goto L111;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m4073(p208.InterfaceC2969 r36, p208.C2940 r37, p208.C2950 r38) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p048.AbstractC1380.m4073(ˎᵢ.ﾞʻ, ˎᵢ.ʼᐧ, ˎᵢ.ˉˆ):void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final boolean m4074(C2942 c2942) {
        if (AbstractC2444.m5562(c2942.f11183.f11225, "HEAD")) {
            return false;
        }
        int i = c2942.f11186;
        if (((i < 100 || i >= 200) && i != 204 && i != 304) || AbstractC4712.m9445(c2942) != -1) {
            return true;
        }
        String m6485 = c2942.f11188.m6485("Transfer-Encoding");
        if (m6485 == null) {
            m6485 = null;
        }
        return "chunked".equalsIgnoreCase(m6485);
    }
}
