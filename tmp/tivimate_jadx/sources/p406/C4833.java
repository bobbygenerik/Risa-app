package p406;

import p035.AbstractC1220;
import p125.C2131;
import p207.AbstractC2934;
import p207.AbstractC2936;

/* renamed from: ﹳʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4833 extends C4832 {
    @Override // p406.C4832, p348.AbstractC4280
    /* renamed from: ʽ */
    public final void mo8658(C2131 c2131) {
        AbstractC2934 m5094 = c2131.m5094();
        AbstractC2936 abstractC2936 = c2131.f11101;
        if (m5094.toString().contains("not_defined_in_RFC4178@please_ignore")) {
            return;
        }
        int i = abstractC2936.f11117;
        if (i == 0) {
            m9630(c2131.m5094());
            return;
        }
        if (i != 1) {
            if (i == 2) {
                m9632(c2131.m5094());
            } else if (i != 3 && i != 4) {
                throw new Exception(AbstractC1220.m3782(new StringBuilder("Unknown Object Tag "), abstractC2936.f11117, " encountered."));
            }
        }
    }
}
