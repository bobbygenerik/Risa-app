package p414;

import java.util.Iterator;
import java.util.Set;

/* renamed from: ﹳי.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4916 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ʽ f18338;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18339;

    public C4916(Set set, ʽ r2) {
        this.f18339 = m9718(set);
        this.f18338 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m9718(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C4917 c4917 = (C4917) it.next();
            sb.append(c4917.f18341);
            sb.append('/');
            sb.append(c4917.f18340);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
}
