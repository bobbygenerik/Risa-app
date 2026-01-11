package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˑᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0383 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0298 f2041;

    static {
        C0464 c0464 = C0464.f2220;
        f2041 = new C0298(6);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static int m1730(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0501)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0260.m1207(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0501 c0501 = (C0501) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0260.m1207(c0501.m1975(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static int m1731(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0260.m1207(i << 3) + 8) * size;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m1732(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0403)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1209(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1216(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        C0403 c0403 = (C0403) list;
        if (!z) {
            while (i2 < c0403.f2132) {
                c0260.m1209(i, c0403.m1795(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0403.f2132; i6++) {
            c0403.m1795(i6);
            i5 += 8;
        }
        c0260.m1214(i5);
        while (i2 < c0403.f2132) {
            c0260.m1216(c0403.m1795(i2));
            i2++;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m1733(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                boolean booleanValue = ((Boolean) list.get(i2)).booleanValue();
                c0260.m1214(i << 3);
                c0260.m1210(booleanValue ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        c0260.m1214(i3);
        while (i2 < list.size()) {
            c0260.m1210(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1734(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0260.m1209(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        c0260.m1214(i3);
        while (i2 < list.size()) {
            c0260.m1216(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static int m1735(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0501)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0260.m1205(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0501 c0501 = (C0501) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0260.m1205(c0501.m1975(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static int m1736(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0260.m1207(i << 3) + 4) * size;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m1737(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1219(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0260.m1205(((Integer) list.get(i4)).intValue());
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1215(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                c0260.m1219(i, c0501.m1975(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            i5 += C0260.m1205(c0501.m1975(i6));
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            c0260.m1215(c0501.m1975(i2));
            i2++;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m1738(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0260.m1218(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        c0260.m1214(i3);
        while (i2 < list.size()) {
            c0260.m1213(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m1739(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1218(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1213(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                c0260.m1218(i, c0501.m1975(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            c0501.m1975(i6);
            i5 += 4;
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            c0260.m1213(c0501.m1975(i2));
            i2++;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m1740(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1219(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0260.m1205(((Integer) list.get(i4)).intValue());
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1215(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                c0260.m1219(i, c0501.m1975(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            i5 += C0260.m1205(c0501.m1975(i6));
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            c0260.m1215(c0501.m1975(i2));
            i2++;
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static int m1741(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0501)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0260.m1205(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        C0501 c0501 = (C0501) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0260.m1205(c0501.m1975(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m1742(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0403)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1220(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0260.m1205(((Long) list.get(i4)).longValue());
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1208(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        C0403 c0403 = (C0403) list;
        if (!z) {
            while (i2 < c0403.f2132) {
                c0260.m1220(i, c0403.m1795(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0403.f2132; i6++) {
            i5 += C0260.m1205(c0403.m1795(i6));
        }
        c0260.m1214(i5);
        while (i2 < c0403.f2132) {
            c0260.m1208(c0403.m1795(i2));
            i2++;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static int m1743(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0403)) {
            int i2 = 0;
            while (i < size) {
                long longValue = ((Long) list.get(i)).longValue();
                i2 += C0260.m1205((longValue >> 63) ^ (longValue + longValue));
                i++;
            }
            return i2;
        }
        C0403 c0403 = (C0403) list;
        int i3 = 0;
        while (i < size) {
            long m1795 = c0403.m1795(i);
            i3 += C0260.m1205((m1795 >> 63) ^ (m1795 + m1795));
            i++;
        }
        return i3;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static int m1744(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0501)) {
            int i2 = 0;
            while (i < size) {
                int intValue = ((Integer) list.get(i)).intValue();
                i2 += C0260.m1207((intValue >> 31) ^ (intValue + intValue));
                i++;
            }
            return i2;
        }
        C0501 c0501 = (C0501) list;
        int i3 = 0;
        while (i < size) {
            int m1975 = c0501.m1975(i);
            i3 += C0260.m1207((m1975 >> 31) ^ (m1975 + m1975));
            i++;
        }
        return i3;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m1745(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1217(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0260.m1207(((Integer) list.get(i4)).intValue());
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1214(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                c0260.m1217(i, c0501.m1975(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            i5 += C0260.m1207(c0501.m1975(i6));
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            c0260.m1214(c0501.m1975(i2));
            i2++;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m1746(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0403)) {
            if (!z) {
                while (i2 < list.size()) {
                    long longValue = ((Long) list.get(i2)).longValue();
                    c0260.m1220(i, (longValue >> 63) ^ (longValue + longValue));
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue2 = ((Long) list.get(i4)).longValue();
                i3 += C0260.m1205((longValue2 >> 63) ^ (longValue2 + longValue2));
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                long longValue3 = ((Long) list.get(i2)).longValue();
                c0260.m1208((longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
            return;
        }
        C0403 c0403 = (C0403) list;
        if (!z) {
            while (i2 < c0403.f2132) {
                long m1795 = c0403.m1795(i2);
                c0260.m1220(i, (m1795 >> 63) ^ (m1795 + m1795));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0403.f2132; i6++) {
            long m17952 = c0403.m1795(i6);
            i5 += C0260.m1205((m17952 >> 63) ^ (m17952 + m17952));
        }
        c0260.m1214(i5);
        while (i2 < c0403.f2132) {
            long m17953 = c0403.m1795(i2);
            c0260.m1208((m17953 >> 63) ^ (m17953 + m17953));
            i2++;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m1747(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1218(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1213(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                c0260.m1218(i, c0501.m1975(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            c0501.m1975(i6);
            i5 += 4;
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            c0260.m1213(c0501.m1975(i2));
            i2++;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m1748(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0403)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1209(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1216(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        C0403 c0403 = (C0403) list;
        if (!z) {
            while (i2 < c0403.f2132) {
                c0260.m1209(i, c0403.m1795(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0403.f2132; i6++) {
            c0403.m1795(i6);
            i5 += 8;
        }
        c0260.m1214(i5);
        while (i2 < c0403.f2132) {
            c0260.m1216(c0403.m1795(i2));
            i2++;
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static int m1749(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0403)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0260.m1205(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        C0403 c0403 = (C0403) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0260.m1205(c0403.m1795(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m1750(Object obj, Object obj2) {
        AbstractC0269 abstractC0269 = (AbstractC0269) obj;
        C0278 c0278 = abstractC0269.zzc;
        C0278 c02782 = ((AbstractC0269) obj2).zzc;
        C0278 c02783 = C0278.f1787;
        if (!c02783.equals(c02782)) {
            if (c02783.equals(c0278)) {
                int i = c0278.f1792 + c02782.f1792;
                int[] copyOf = Arrays.copyOf(c0278.f1791, i);
                System.arraycopy(c02782.f1791, 0, copyOf, c0278.f1792, c02782.f1792);
                Object[] copyOf2 = Arrays.copyOf(c0278.f1788, i);
                System.arraycopy(c02782.f1788, 0, copyOf2, c0278.f1792, c02782.f1792);
                c0278 = new C0278(i, copyOf, copyOf2, true);
            } else {
                c0278.getClass();
                if (!c02782.equals(c02783)) {
                    if (!c0278.f1790) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = c0278.f1792 + c02782.f1792;
                    c0278.m1292(i2);
                    System.arraycopy(c02782.f1791, 0, c0278.f1791, c0278.f1792, c02782.f1792);
                    System.arraycopy(c02782.f1788, 0, c0278.f1788, c0278.f1792, c02782.f1792);
                    c0278.f1792 = i2;
                }
            }
        }
        abstractC0269.zzc = c0278;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m1751(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static int m1752(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C0403)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0260.m1205(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        C0403 c0403 = (C0403) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0260.m1205(c0403.m1795(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m1753(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0501)) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    c0260.m1217(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += C0260.m1207((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                c0260.m1214((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        C0501 c0501 = (C0501) list;
        if (!z) {
            while (i2 < c0501.f2266) {
                int m1975 = c0501.m1975(i2);
                c0260.m1217(i, (m1975 >> 31) ^ (m1975 + m1975));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0501.f2266; i6++) {
            int m19752 = c0501.m1975(i6);
            i5 += C0260.m1207((m19752 >> 31) ^ (m19752 + m19752));
        }
        c0260.m1214(i5);
        while (i2 < c0501.f2266) {
            int m19753 = c0501.m1975(i2);
            c0260.m1214((m19753 >> 31) ^ (m19753 + m19753));
            i2++;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m1754(int i, List list, C0425 c0425, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0260 c0260 = (C0260) c0425.f2169;
        int i2 = 0;
        if (!(list instanceof C0403)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0260.m1220(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0260.m1212(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0260.m1205(((Long) list.get(i4)).longValue());
            }
            c0260.m1214(i3);
            while (i2 < list.size()) {
                c0260.m1208(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        C0403 c0403 = (C0403) list;
        if (!z) {
            while (i2 < c0403.f2132) {
                c0260.m1220(i, c0403.m1795(i2));
                i2++;
            }
            return;
        }
        c0260.m1212(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c0403.f2132; i6++) {
            i5 += C0260.m1205(c0403.m1795(i6));
        }
        c0260.m1214(i5);
        while (i2 < c0403.f2132) {
            c0260.m1208(c0403.m1795(i2));
            i2++;
        }
    }
}
