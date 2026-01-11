package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0038 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0052 f432;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AbstractC0014 f433;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Class f434;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.datastore.preferences.protobuf.ᵎᵔ] */
    static {
        Class<?> cls;
        Class<?> cls2;
        C0034 c0034 = C0034.f426;
        AbstractC0014 abstractC0014 = null;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f434 = cls;
        try {
            C0034 c00342 = C0034.f426;
            try {
                cls2 = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                abstractC0014 = (AbstractC0014) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        f433 = abstractC0014;
        f432 = new Object();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m257(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m399(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 8;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m410(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static void m258(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m401(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0067.m383(((Integer) list.get(i4)).intValue());
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m400(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m259(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0067.m381(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m260(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m394(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 4;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m384(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m261(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0067.m379(i) + 8) * size;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m262(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m394(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 4;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m384(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static void m263(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                c0067.m396(i, (longValue >> 63) ^ (longValue << 1));
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += C0067.m381((longValue2 >> 63) ^ (longValue2 << 1));
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            c0067.m402((longValue3 >> 63) ^ (longValue3 << 1));
            i2++;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Object m264(Object obj, int i, InterfaceC0037 interfaceC0037, Object obj2, AbstractC0014 abstractC0014) {
        return obj2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m265(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0067.m381(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m266(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m390(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3++;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m389(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m267(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m392(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0067.m381(((Integer) list.get(i4)).intValue());
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m404(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static void m268(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m396(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0067.m381(((Long) list.get(i4)).longValue());
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m402(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m269(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0067.m381(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m270(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m392(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0067.m381(((Integer) list.get(i4)).intValue());
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m404(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m271(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                c0067.m401(i, (intValue >> 31) ^ (intValue << 1));
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += C0067.m383((intValue2 >> 31) ^ (intValue2 << 1));
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            c0067.m400((intValue3 >> 31) ^ (intValue3 << 1));
            i2++;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m272(AbstractC0014 abstractC0014, Object obj, Object obj2) {
        ((C0052) abstractC0014).getClass();
        AbstractC0003 abstractC0003 = (AbstractC0003) obj;
        C0015 c0015 = abstractC0003.unknownFields;
        C0015 c00152 = ((AbstractC0003) obj2).unknownFields;
        C0015 c00153 = C0015.f390;
        if (!c00153.equals(c00152)) {
            if (c00153.equals(c0015)) {
                int i = c0015.f395 + c00152.f395;
                int[] copyOf = Arrays.copyOf(c0015.f394, i);
                System.arraycopy(c00152.f394, 0, copyOf, c0015.f395, c00152.f395);
                Object[] copyOf2 = Arrays.copyOf(c0015.f391, i);
                System.arraycopy(c00152.f391, 0, copyOf2, c0015.f395, c00152.f395);
                c0015 = new C0015(i, copyOf, copyOf2, true);
            } else {
                c0015.getClass();
                if (!c00152.equals(c00153)) {
                    if (!c0015.f393) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = c0015.f395 + c00152.f395;
                    c0015.m224(i2);
                    System.arraycopy(c00152.f394, 0, c0015.f394, c0015.f395, c00152.f395);
                    System.arraycopy(c00152.f391, 0, c0015.f391, c0015.f395, c00152.f395);
                    c0015.f395 = i2;
                }
            }
        }
        abstractC0003.unknownFields = c0015;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m273(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long longValue = ((Long) list.get(i2)).longValue();
            i += C0067.m381((longValue >> 63) ^ (longValue << 1));
        }
        return i;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m274(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                c0067.getClass();
                c0067.m399(i, Double.doubleToRawLongBits(doubleValue));
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 8;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m410(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m275(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0067.m383(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m276(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m399(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 8;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m410(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m277(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0067.m396(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += C0067.m381(((Long) list.get(i4)).longValue());
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m402(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m278(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (C0067.m379(i) + 4) * size;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m279(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += C0067.m381(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m280(int i, List list, C0010 c0010, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        C0067 c0067 = (C0067) c0010.f385;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float floatValue = ((Float) list.get(i2)).floatValue();
                c0067.getClass();
                c0067.m394(i, Float.floatToRawIntBits(floatValue));
                i2++;
            }
            return;
        }
        c0067.m407(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            Logger logger = C0067.f514;
            i3 += 4;
        }
        c0067.m400(i3);
        while (i2 < list.size()) {
            c0067.m384(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m281(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m282(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int intValue = ((Integer) list.get(i2)).intValue();
            i += C0067.m383((intValue >> 31) ^ (intValue << 1));
        }
        return i;
    }
}
