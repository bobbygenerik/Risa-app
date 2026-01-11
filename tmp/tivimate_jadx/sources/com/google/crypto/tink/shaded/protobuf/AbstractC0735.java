package com.google.crypto.tink.shaded.protobuf;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0735 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0705 f3042;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AbstractC0714 f3043;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Class f3044;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.crypto.tink.shaded.protobuf.ʿᵢ, java.lang.Object] */
    static {
        Class<?> cls;
        Class<?> cls2;
        C0696 c0696 = C0696.f2964;
        AbstractC0714 abstractC0714 = null;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f3044 = cls;
        try {
            C0696 c06962 = C0696.f2964;
            try {
                cls2 = Class.forName("com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                abstractC0714 = (AbstractC0714) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        f3043 = abstractC0714;
        f3042 = new Object();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m2624(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0736)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2720(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                Logger logger = C0751.f3078;
                i3 += 8;
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2710(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2720(i, abstractC0736.m2650(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            abstractC0736.m2650(i6);
            Logger logger2 = C0751.f3078;
            i5 += 8;
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2710(abstractC0736.m2650(i2));
            i2++;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static void m2625(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2714(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2705(((Integer) list.get(i4)).intValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2713(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2714(i, abstractC0703.m2489(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2705(abstractC0703.m2489(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2713(abstractC0703.m2489(i2));
            i2++;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m2626(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0736)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2706(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2706(abstractC0736.m2650(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m2627(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2717(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                Logger logger = C0751.f3078;
                i3 += 4;
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2718(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2717(i, abstractC0703.m2489(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            abstractC0703.m2489(i6);
            Logger logger2 = C0751.f3078;
            i5 += 4;
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2718(abstractC0703.m2489(i2));
            i2++;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m2628(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0751.m2708(i) + 8) * size;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m2629(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2717(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                Logger logger = C0751.f3078;
                i3 += 4;
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2718(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2717(i, abstractC0703.m2489(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            abstractC0703.m2489(i6);
            Logger logger2 = C0751.f3078;
            i5 += 4;
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2718(abstractC0703.m2489(i2));
            i2++;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static void m2630(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0736)) {
            if (!z) {
                while (i2 < list.size()) {
                    long longValue = ((Long) list.get(i2)).longValue();
                    c0751.m2709(i, (longValue >> 63) ^ (longValue << 1));
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2702(((Long) list.get(i4)).longValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                long longValue2 = ((Long) list.get(i2)).longValue();
                c0751.m2716((longValue2 >> 63) ^ (longValue2 << 1));
                i2++;
            }
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        if (!z) {
            while (i2 < 0) {
                long m2650 = abstractC0736.m2650(i2);
                c0751.m2709(i, (m2650 >> 63) ^ (m2650 << 1));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2702(abstractC0736.m2650(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            long m26502 = abstractC0736.m2650(i2);
            c0751.m2716((m26502 >> 63) ^ (m26502 << 1));
            i2++;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Object m2631(Object obj, int i, InterfaceC0746 interfaceC0746, Object obj2, AbstractC0714 abstractC0714) {
        return obj2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m2632(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0703)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2706(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2706(abstractC0703.m2489(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m2633(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        if (list instanceof AbstractC0708) {
            if (z) {
                c0751.m2715(i, 2);
                c0751.m2713(0);
                return;
            }
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                boolean booleanValue = ((Boolean) list.get(i2)).booleanValue();
                c0751.m2715(i, 0);
                c0751.m2712(booleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        c0751.m2715(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            Logger logger = C0751.f3078;
            i3++;
        }
        c0751.m2713(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0751.m2712(((Boolean) list.get(i5)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m2634(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2721(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2706(((Integer) list.get(i4)).intValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2711(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2721(i, abstractC0703.m2489(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2706(abstractC0703.m2489(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2711(abstractC0703.m2489(i2));
            i2++;
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static void m2635(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0736)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2709(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2706(((Long) list.get(i4)).longValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2716(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2709(i, abstractC0736.m2650(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2706(abstractC0736.m2650(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2716(abstractC0736.m2650(i2));
            i2++;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m2636(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0736)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2706(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2706(abstractC0736.m2650(i));
            i++;
        }
        return i3;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m2637(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2721(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2706(((Integer) list.get(i4)).intValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2711(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2721(i, abstractC0703.m2489(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2706(abstractC0703.m2489(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2711(abstractC0703.m2489(i2));
            i2++;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m2638(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0703)) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    c0751.m2714(i, (intValue >> 31) ^ (intValue << 1));
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2707(((Integer) list.get(i4)).intValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                int intValue2 = ((Integer) list.get(i2)).intValue();
                c0751.m2713((intValue2 >> 31) ^ (intValue2 << 1));
                i2++;
            }
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        if (!z) {
            while (i2 < 0) {
                int m2489 = abstractC0703.m2489(i2);
                c0751.m2714(i, (m2489 >> 31) ^ (m2489 << 1));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2707(abstractC0703.m2489(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            int m24892 = abstractC0703.m2489(i2);
            c0751.m2713((m24892 >> 31) ^ (m24892 << 1));
            i2++;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m2639(AbstractC0714 abstractC0714, Object obj, Object obj2) {
        ((C0705) abstractC0714).getClass();
        AbstractC0725 abstractC0725 = (AbstractC0725) obj;
        C0704 c0704 = abstractC0725.unknownFields;
        C0704 c07042 = ((AbstractC0725) obj2).unknownFields;
        C0704 c07043 = C0704.f2980;
        if (!c07043.equals(c07042)) {
            if (c07043.equals(c0704)) {
                int i = c0704.f2985 + c07042.f2985;
                int[] copyOf = Arrays.copyOf(c0704.f2984, i);
                System.arraycopy(c07042.f2984, 0, copyOf, c0704.f2985, c07042.f2985);
                Object[] copyOf2 = Arrays.copyOf(c0704.f2981, i);
                System.arraycopy(c07042.f2981, 0, copyOf2, c0704.f2985, c07042.f2985);
                c0704 = new C0704(i, copyOf, copyOf2, true);
            } else {
                c0704.getClass();
                if (!c07042.equals(c07043)) {
                    if (!c0704.f2983) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = c0704.f2985 + c07042.f2985;
                    c0704.m2495(i2);
                    System.arraycopy(c07042.f2984, 0, c0704.f2984, c0704.f2985, c07042.f2985);
                    System.arraycopy(c07042.f2981, 0, c0704.f2981, c0704.f2985, c07042.f2985);
                    c0704.f2985 = i2;
                }
            }
        }
        abstractC0725.unknownFields = c0704;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m2640(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0736)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2702(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2702(abstractC0736.m2650(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m2641(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (list instanceof AbstractC0712) {
            if (z) {
                c0751.m2715(i, 2);
                c0751.m2713(0);
                return;
            }
            return;
        }
        if (!z) {
            while (i2 < list.size()) {
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                c0751.getClass();
                c0751.m2720(i, Double.doubleToRawLongBits(doubleValue));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            Logger logger = C0751.f3078;
            i3 += 8;
        }
        c0751.m2713(i3);
        while (i2 < list.size()) {
            c0751.m2710(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m2642(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0703)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2705(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2705(abstractC0703.m2489(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m2643(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0736)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2720(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                Logger logger = C0751.f3078;
                i3 += 8;
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2710(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2720(i, abstractC0736.m2650(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            abstractC0736.m2650(i6);
            Logger logger2 = C0751.f3078;
            i5 += 8;
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2710(abstractC0736.m2650(i2));
            i2++;
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m2644(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (!(list instanceof AbstractC0736)) {
            if (!z) {
                while (i2 < list.size()) {
                    c0751.m2709(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            c0751.m2715(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += C0751.m2706(((Long) list.get(i4)).longValue());
            }
            c0751.m2713(i3);
            while (i2 < list.size()) {
                c0751.m2716(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) list;
        if (!z) {
            while (i2 < 0) {
                c0751.m2709(i, abstractC0736.m2650(i2));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += C0751.m2706(abstractC0736.m2650(i6));
        }
        c0751.m2713(i5);
        while (i2 < 0) {
            c0751.m2716(abstractC0736.m2650(i2));
            i2++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m2645(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0751.m2708(i) + 4) * size;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m2646(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0703)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2706(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2706(abstractC0703.m2489(i));
            i++;
        }
        return i3;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m2647(int i, List list, C0729 c0729, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0751 c0751 = (C0751) c0729.f3018;
        int i2 = 0;
        if (list instanceof AbstractC0724) {
            if (z) {
                c0751.m2715(i, 2);
                c0751.m2713(0);
                return;
            }
            return;
        }
        if (!z) {
            while (i2 < list.size()) {
                float floatValue = ((Float) list.get(i2)).floatValue();
                c0751.getClass();
                c0751.m2717(i, Float.floatToRawIntBits(floatValue));
                i2++;
            }
            return;
        }
        c0751.m2715(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            Logger logger = C0751.f3078;
            i3 += 4;
        }
        c0751.m2713(i3);
        while (i2 < list.size()) {
            c0751.m2718(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m2648(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m2649(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof AbstractC0703)) {
            int i2 = 0;
            while (i < size) {
                i2 += C0751.m2707(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) list;
        int i3 = 0;
        while (i < size) {
            i3 += C0751.m2707(abstractC0703.m2489(i));
            i++;
        }
        return i3;
    }
}
