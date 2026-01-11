package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.google.android.gms.internal.play_billing.ʼᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0531 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0539 f2299;

    static {
        C0637 c0637 = C0637.f2473;
        f2299 = new C0539(7);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m2052(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2205(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2210(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static void m2053(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0606.m2205(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                c0606.m2210(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                c0606.m2205(i, c0578.m2172(i2));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            c0578.m2172(i6);
            i5 += 4;
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            c0606.m2210(c0578.m2172(i2));
            i2++;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m2054(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0578)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0606.m2200(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0578 c0578 = (C0578) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0606.m2200(c0578.m2172(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m2055(Object obj, Object obj2) {
        AbstractC0529 abstractC0529 = (AbstractC0529) obj;
        C0650 c0650 = abstractC0529.zzc;
        C0650 c06502 = ((AbstractC0529) obj2).zzc;
        C0650 c06503 = C0650.f2510;
        if (!c06503.equals(c06502)) {
            if (c06503.equals(c0650)) {
                int i = c0650.f2515 + c06502.f2515;
                int[] copyOf = Arrays.copyOf(c0650.f2514, i);
                System.arraycopy(c06502.f2514, 0, copyOf, c0650.f2515, c06502.f2515);
                Object[] copyOf2 = Arrays.copyOf(c0650.f2511, i);
                System.arraycopy(c06502.f2511, 0, copyOf2, c0650.f2515, c06502.f2515);
                c0650 = new C0650(i, copyOf, copyOf2, true);
            } else {
                c0650.getClass();
                if (!c06502.equals(c06503)) {
                    if (!c0650.f2513) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = c0650.f2515 + c06502.f2515;
                    c0650.m2304(i2);
                    System.arraycopy(c06502.f2514, 0, c0650.f2514, c0650.f2515, c06502.f2515);
                    System.arraycopy(c06502.f2511, 0, c0650.f2511, c0650.f2515, c06502.f2515);
                    c0650.f2515 = i2;
                }
            }
        }
        abstractC0529.zzc = c0650;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m2056(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0606.m2212(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0606.m2199(((Integer) list.get(i4)).intValue());
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                c0606.m2207(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                c0606.m2212(i, c0578.m2172(i2));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            i5 += C0606.m2199(c0578.m2172(i6));
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            c0606.m2207(c0578.m2172(i2));
            i2++;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m2057(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2209(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2208(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static void m2058(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2202(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0606.m2200(((Long) list.get(i4)).longValue());
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2203(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static int m2059(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0606.m2200(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m2060(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2202(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0606.m2200(((Long) list.get(i4)).longValue());
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2203(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m2061(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0578)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0606.m2199(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0578 c0578 = (C0578) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0606.m2199(c0578.m2172(i));
            i++;
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r5 = r5;
     */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m2062(java.lang.Object r2, int r3, int r4, java.lang.Object r5, com.google.android.gms.internal.play_billing.C0539 r6) {
        /*
            if (r5 != 0) goto L13
            r6.getClass()
            com.google.android.gms.internal.play_billing.ʼـ r2 = (com.google.android.gms.internal.play_billing.AbstractC0529) r2
            com.google.android.gms.internal.play_billing.ﾞˋ r5 = r2.zzc
            com.google.android.gms.internal.play_billing.ﾞˋ r6 = com.google.android.gms.internal.play_billing.C0650.f2510
            if (r5 != r6) goto L13
            com.google.android.gms.internal.play_billing.ﾞˋ r5 = com.google.android.gms.internal.play_billing.C0650.m2301()
            r2.zzc = r5
        L13:
            long r0 = (long) r4
            int r2 = r3 << 3
            r3 = r5
            com.google.android.gms.internal.play_billing.ﾞˋ r3 = (com.google.android.gms.internal.play_billing.C0650) r3
            java.lang.Long r4 = java.lang.Long.valueOf(r0)
            r3.m2302(r2, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.AbstractC0531.m2062(java.lang.Object, int, int, java.lang.Object, com.google.android.gms.internal.play_billing.ʾˊ):java.lang.Object");
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static void m2063(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0606.m2205(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                c0606.m2210(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                c0606.m2205(i, c0578.m2172(i2));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            c0578.m2172(i6);
            i5 += 4;
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            c0606.m2210(c0578.m2172(i2));
            i2++;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m2064(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m2065(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0606.m2201(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0606.m2200(((Integer) list.get(i4)).intValue());
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                c0606.m2211(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                c0606.m2201(i, c0578.m2172(i2));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            i5 += C0606.m2200(c0578.m2172(i6));
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            c0606.m2211(c0578.m2172(i2));
            i2++;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m2066(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0606.m2201(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0606.m2200(((Integer) list.get(i4)).intValue());
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                c0606.m2211(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                c0606.m2201(i, c0578.m2172(i2));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            i5 += C0606.m2200(c0578.m2172(i6));
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            c0606.m2211(c0578.m2172(i2));
            i2++;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m2067(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0578)) {
            int i2 = 0;
            while (i < size) {
                int intValue = ((Integer) list.get(i)).intValue();
                i2 += C0606.m2199((intValue >> 31) ^ (intValue + intValue));
                i++;
            }
            return i2;
        }
        C0578 c0578 = (C0578) list;
        int i3 = 0;
        while (i < size) {
            int m2172 = c0578.m2172(i);
            i3 += C0606.m2199((m2172 >> 31) ^ (m2172 + m2172));
            i++;
        }
        return i3;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m2068(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0606.m2199(i << 3) + 4) * size;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m2069(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0606.m2200(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m2070(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0606.m2199(i << 3) + 8) * size;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m2071(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                byte booleanValue = ((Boolean) list.get(i2)).booleanValue();
                c0606.m2207(i << 3);
                int i3 = c0606.f2418;
                try {
                    int i4 = i3 + 1;
                    try {
                        c0606.f2416[i3] = booleanValue;
                        c0606.f2418 = i4;
                        i2++;
                    } catch (IndexOutOfBoundsException e) {
                        e = e;
                        i3 = i4;
                        throw new zzen(i3, c0606.f2417, 1, e);
                    }
                } catch (IndexOutOfBoundsException e2) {
                    e = e2;
                }
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            ((Boolean) list.get(i6)).getClass();
            i5++;
        }
        c0606.m2207(i5);
        while (i2 < list.size()) {
            byte booleanValue2 = ((Boolean) list.get(i2)).booleanValue();
            int i7 = c0606.f2418;
            try {
                int i8 = i7 + 1;
                try {
                    c0606.f2416[i7] = booleanValue2;
                    c0606.f2418 = i8;
                    i2++;
                } catch (IndexOutOfBoundsException e3) {
                    e = e3;
                    i7 = i8;
                    throw new zzen(i7, c0606.f2417, 1, e);
                }
            } catch (IndexOutOfBoundsException e4) {
                e = e4;
            }
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m2072(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2209(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2208(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m2073(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                c0606.m2202(i, (longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += C0606.m2200((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            c0606.m2203((longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2074(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!(list instanceof C0578)) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    c0606.m2212(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            c0606.m2206(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += C0606.m2199((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            c0606.m2207(i3);
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                c0606.m2207((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        C0578 c0578 = (C0578) list;
        if (!z) {
            while (i2 < c0578.f2370) {
                int m2172 = c0578.m2172(i2);
                c0606.m2212(i, (m2172 >> 31) ^ (m2172 + m2172));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0578.f2370; i6++) {
            int m21722 = c0578.m2172(i6);
            i5 += C0606.m2199((m21722 >> 31) ^ (m21722 + m21722));
        }
        c0606.m2207(i5);
        while (i2 < c0578.f2370) {
            int m21723 = c0578.m2172(i2);
            c0606.m2207((m21723 >> 31) ^ (m21723 + m21723));
            i2++;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m2075(int i, List list, C0618 c0618, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0606 c0606 = (C0606) c0618.f2447;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0606.m2209(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        c0606.m2206(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        c0606.m2207(i3);
        while (i2 < list.size()) {
            c0606.m2208(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static int m2076(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long longValue = ((Long) list.get(i2)).longValue();
            i += C0606.m2200((longValue >> 63) ^ (longValue + longValue));
        }
        return i;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m2077(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0578)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0606.m2200(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0578 c0578 = (C0578) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0606.m2200(c0578.m2172(i));
            i++;
        }
        return i3;
    }
}
