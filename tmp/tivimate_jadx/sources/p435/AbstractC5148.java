package p435;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p029.AbstractC1127;
import p029.C1124;
import p029.C1125;
import p035.AbstractC1220;
import p430.AbstractC5099;
import p430.AbstractC5106;
import p430.AbstractC5114;
import ˉᵎ.ⁱˊ;
import ˑᵢ.ﹳـ;
import ᴵˋ.ˊʻ;

/* renamed from: ﹶˑ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5148 extends ˊʻ {
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static String m10141(String str) {
        return AbstractC1127.m3553(new C1125(new C1124(3, str), new ﹳـ(29), 0), "\n");
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static String m10142(String str) {
        Comparable comparable;
        String str2;
        List m10109 = AbstractC5143.m10109(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : m10109) {
            if (!AbstractC5143.m10123((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(AbstractC5114.m10060(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            String str3 = (String) obj2;
            int length = str3.length();
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    i3 = -1;
                    break;
                }
                if (!ⁱˊ.ˊʻ(str3.charAt(i3))) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                i3 = str3.length();
            }
            arrayList2.add(Integer.valueOf(i3));
        }
        Iterator it = arrayList2.iterator();
        if (it.hasNext()) {
            comparable = (Comparable) it.next();
            while (it.hasNext()) {
                Comparable comparable2 = (Comparable) it.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int intValue = num != null ? num.intValue() : 0;
        int length2 = str.length();
        m10109.size();
        int m10048 = AbstractC5106.m10048(m10109);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : m10109) {
            int i4 = i + 1;
            if (i < 0) {
                AbstractC5106.m10049();
                throw null;
            }
            String str4 = (String) obj3;
            if ((i == 0 || i == m10048) && AbstractC5143.m10123(str4)) {
                str2 = null;
            } else {
                if (intValue < 0) {
                    throw new IllegalArgumentException(AbstractC1220.m3773(intValue, "Requested character count ", " is less than zero.").toString());
                }
                int length3 = str4.length();
                if (intValue <= length3) {
                    length3 = intValue;
                }
                str2 = str4.substring(length3);
            }
            if (str2 != null) {
                arrayList3.add(str2);
            }
            i = i4;
        }
        StringBuilder sb = new StringBuilder(length2);
        AbstractC5099.m10030(arrayList3, sb);
        return sb.toString();
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static String m10143(String str) {
        if (AbstractC5143.m10123("|")) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List m10109 = AbstractC5143.m10109(str);
        int length = str.length();
        m10109.size();
        int m10048 = AbstractC5106.m10048(m10109);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : m10109) {
            int i2 = i + 1;
            String str2 = null;
            if (i < 0) {
                AbstractC5106.m10049();
                throw null;
            }
            String str3 = (String) obj;
            if ((i != 0 && i != m10048) || !AbstractC5143.m10123(str3)) {
                int length2 = str3.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!ⁱˊ.ˊʻ(str3.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                if (i3 != -1 && str3.startsWith("|", i3)) {
                    str2 = str3.substring("|".length() + i3);
                }
                if (str2 == null) {
                    str2 = str3;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        AbstractC5099.m10030(arrayList, sb);
        return sb.toString();
    }
}
