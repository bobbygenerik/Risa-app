package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import p095.C1885;
import p095.InterfaceC1881;
import p095.InterfaceC1883;
import p137.AbstractC2305;
import p307.AbstractC3740;
import ˈˊ.ˉˆ;

/* renamed from: ʼʻ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1004 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Object m3277(AbstractCollection abstractCollection, String str) {
        Iterator it = abstractCollection.iterator();
        return it.hasNext() ? it.next() : str;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m3278(List list, InterfaceC1883 interfaceC1883, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (interfaceC1883.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m3279(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static AbstractList m3280(List list, InterfaceC1881 interfaceC1881) {
        return AbstractC2305.m5366(list) ? new C0947(list, interfaceC1881) : new C0979(list, interfaceC1881);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Object m3281(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m3282(int i, String str) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m3283(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        r9 = r6 & r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
    
        if (r5 != (-1)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        m3285(r1, r9, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r13[r5] = m3283(r13[r5], r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        return r2;
     */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m3284(java.lang.Object r9, java.lang.Object r10, int r11, java.lang.Object r12, int[] r13, java.lang.Object[] r14, java.lang.Object[] r15) {
        /*
            int r0 = m3295(r9)
            r1 = r0 & r11
            int r2 = m3287(r1, r12)
            r3 = -1
            if (r2 != 0) goto Le
            goto L40
        Le:
            int r4 = ~r11
            r0 = r0 & r4
            r5 = r3
        L11:
            int r2 = r2 + (-1)
            r6 = r13[r2]
            r7 = r6 & r4
            if (r7 != r0) goto L3c
            r7 = r14[r2]
            boolean r7 = com.google.android.gms.internal.measurement.ᵎ.ᵎﹶ(r9, r7)
            if (r7 == 0) goto L3c
            if (r15 == 0) goto L2b
            r7 = r15[r2]
            boolean r7 = com.google.android.gms.internal.measurement.ᵎ.ᵎﹶ(r10, r7)
            if (r7 == 0) goto L3c
        L2b:
            r9 = r6 & r11
            if (r5 != r3) goto L33
            m3285(r1, r9, r12)
            return r2
        L33:
            r10 = r13[r5]
            int r9 = m3283(r10, r9, r11)
            r13[r5] = r9
            return r2
        L3c:
            r5 = r6 & r11
            if (r5 != 0) goto L41
        L40:
            return r3
        L41:
            r8 = r5
            r5 = r2
            r2 = r8
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: p017.AbstractC1004.m3284(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static void m3285(int i, int i2, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Object m3286(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static int m3287(int i, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? ((short[]) obj)[i] & 65535 : ((int[]) obj)[i];
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m3288(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m3289(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static ArrayList m3290(Object... objArr) {
        int length = objArr.length;
        m3282(length, "arraySize");
        ArrayList arrayList = new ArrayList(ˉˆ.ᴵˊ(length + 5 + (length / 10)));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C0961 m3291(Set set, InterfaceC1883 interfaceC1883) {
        if (set instanceof SortedSet) {
            Set set2 = (SortedSet) set;
            if (!(set2 instanceof C0961)) {
                return new C0961(set2, interfaceC1883);
            }
            C0961 c0961 = (C0961) set2;
            InterfaceC1883 interfaceC18832 = c0961.f3915;
            interfaceC18832.getClass();
            return new C0961((SortedSet) c0961.f3914, new C1885(Arrays.asList(interfaceC18832, interfaceC1883)));
        }
        if (!(set instanceof C0961)) {
            set.getClass();
            return new C0961(set, interfaceC1883);
        }
        C0961 c09612 = (C0961) set;
        InterfaceC1883 interfaceC18833 = c09612.f3915;
        interfaceC18833.getClass();
        return new C0961(c09612.f3914, new C1885(Arrays.asList(interfaceC18833, interfaceC1883)));
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static int m3292(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m3293(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(AbstractC3740.m7932(i2, "at index "));
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m3294(int i) {
        if (i < 3) {
            m3282(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) Math.ceil(i / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static int m3295(Object obj) {
        return m3292(obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C0980 m3296(Set set, AbstractC0997 abstractC0997) {
        י.ᵔᵢ(set, "set1");
        י.ᵔᵢ(abstractC0997, "set2");
        return new C0980(set, abstractC0997);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean m3297(Map map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }
}
