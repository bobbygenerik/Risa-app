package p203;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import p305.C3732;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˎـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2915 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long[] f11010;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long[] f11011;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f11012;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public static HashMap m6442(C3732 c3732) {
        int m7878 = c3732.m7878();
        HashMap hashMap = new HashMap(m7878);
        for (int i = 0; i < m7878; i++) {
            String m6443 = m6443(c3732);
            Serializable m6444 = m6444(c3732.m7874(), c3732);
            if (m6444 != null) {
                hashMap.put(m6443, m6444);
            }
        }
        return hashMap;
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public static String m6443(C3732 c3732) {
        int m7895 = c3732.m7895();
        int i = c3732.f14533;
        c3732.m7900(m7895);
        return new String(c3732.f14534, i, m7895);
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public static Serializable m6444(int i, C3732 c3732) {
        if (i == 0) {
            return Double.valueOf(Double.longBitsToDouble(c3732.m7889()));
        }
        if (i == 1) {
            return Boolean.valueOf(c3732.m7874() == 1);
        }
        if (i == 2) {
            return m6443(c3732);
        }
        if (i != 3) {
            if (i == 8) {
                return m6442(c3732);
            }
            if (i != 10) {
                if (i != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(c3732.m7889()));
                c3732.m7900(2);
                return date;
            }
            int m7878 = c3732.m7878();
            ArrayList arrayList = new ArrayList(m7878);
            for (int i2 = 0; i2 < m7878; i2++) {
                Serializable m6444 = m6444(c3732.m7874(), c3732);
                if (m6444 != null) {
                    arrayList.add(m6444);
                }
            }
            return arrayList;
        }
        HashMap hashMap = new HashMap();
        while (true) {
            String m6443 = m6443(c3732);
            int m7874 = c3732.m7874();
            if (m7874 == 9) {
                return hashMap;
            }
            Serializable m64442 = m6444(m7874, c3732);
            if (m64442 != null) {
                hashMap.put(m6443, m64442);
            }
        }
    }
}
