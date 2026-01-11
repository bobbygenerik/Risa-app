package p222;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: ˏᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3049 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f11602 = new ArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m6581(String str) {
        StringBuilder sb = new StringBuilder(256);
        if (str != null) {
            sb.append(str);
        }
        ArrayList arrayList = this.f11602;
        if (arrayList.size() > 0) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append("Exception Context:\n");
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                if (it.next() != null) {
                    throw new ClassCastException();
                }
                sb.append("\t[");
                sb.append(1);
                sb.append(':');
                throw null;
            }
            sb.append("---------------------------------");
        }
        return sb.toString();
    }
}
