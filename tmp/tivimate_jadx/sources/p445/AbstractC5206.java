package p445;

import java.util.Iterator;
import java.util.List;
import p137.AbstractC2305;
import p240.C3212;
import p240.C3214;
import p240.C3217;
import p240.C3223;
import p240.C3225;
import p240.C3228;
import p240.C3231;
import p240.C3232;
import p286.AbstractC3586;
import p322.C3965;
import p430.AbstractC5099;
import ˉᵎ.ⁱˊ;

/* renamed from: ﹶﹳ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5206 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f19557 = C3965.m8128("DiagnosticsWrkr");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String m10181(C3225 c3225, C3228 c3228, C3223 c3223, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C3231 c3231 = (C3231) it.next();
            C3232 c3232 = ⁱˊ.ʼᐧ(c3231);
            String str = c3231.f12341;
            c3223.getClass();
            C3212 c3212 = (C3212) AbstractC3586.m7538(c3223.f12289, true, false, new C3217(c3232.f12345, 0, c3232.f12346));
            Integer valueOf = c3212 != null ? Integer.valueOf(c3212.f12264) : null;
            String m10034 = AbstractC5099.m10034((List) AbstractC3586.m7538(c3225.f12293, true, false, new C3214(5, str)), ",", null, null, null, 62);
            String m100342 = AbstractC5099.m10034((List) AbstractC3586.m7538(c3228.f12312, true, false, new C3214(17, str)), ",", null, null, null, 62);
            StringBuilder m5370 = AbstractC2305.m5370("\n", str, "\t ");
            m5370.append(c3231.f12324);
            m5370.append("\t ");
            m5370.append(valueOf);
            m5370.append("\t ");
            m5370.append(c3231.f12340.name());
            m5370.append("\t ");
            m5370.append(m10034);
            m5370.append("\t ");
            m5370.append(m100342);
            m5370.append('\t');
            sb.append(m5370.toString());
        }
        return sb.toString();
    }
}
