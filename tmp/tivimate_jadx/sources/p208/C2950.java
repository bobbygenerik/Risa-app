package p208;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import p013.C0913;
import p027.C1084;
import p152.C2457;
import p386.InterfaceC4615;
import p394.AbstractC4710;
import p430.AbstractC5096;

/* renamed from: ˎᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2950 implements Iterable, InterfaceC4615 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C2950 f11241 = new C2950(new String[0]);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String[] f11242;

    public C2950(String[] strArr) {
        this.f11242 = strArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2950) {
            return Arrays.equals(this.f11242, ((C2950) obj).f11242);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f11242);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        C0913[] c0913Arr = new C0913[size];
        for (int i = 0; i < size; i++) {
            c0913Arr[i] = new C0913(m6484(i), m6486(i));
        }
        return new C2457(0, c0913Arr);
    }

    public final int size() {
        return this.f11242.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String m6484 = m6484(i);
            String m6486 = m6486(i);
            sb.append(m6484);
            sb.append(": ");
            if (AbstractC4710.m9429(m6484)) {
                m6486 = "██";
            }
            sb.append(m6486);
            sb.append("\n");
        }
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1084 m6482() {
        C1084 c1084 = new C1084(3);
        c1084.f4239.addAll(Arrays.asList(this.f11242));
        return c1084;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final TreeMap m6483() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            String lowerCase = m6484(i).toLowerCase(Locale.US);
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(m6486(i));
        }
        return treeMap;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m6484(int i) {
        String str = (String) AbstractC5096.m10011(i * 2, this.f11242);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m6485(String str) {
        String[] strArr = this.f11242;
        int length = strArr.length - 2;
        int i = ˏʻ.ᵔﹳ(length, 0, -2);
        if (i > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == i) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m6486(int i) {
        String str = (String) AbstractC5096.m10011((i * 2) + 1, this.f11242);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }
}
