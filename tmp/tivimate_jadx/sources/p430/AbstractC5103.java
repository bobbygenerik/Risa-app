package p430;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;
import p013.C0913;
import ˈˊ.ˉˆ;

/* renamed from: ﹶˈ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5103 extends ˉˆ {
    /* renamed from: ʿ, reason: contains not printable characters */
    public static Map m10038(C0913... c0913Arr) {
        if (c0913Arr.length <= 0) {
            return C5110.f19215;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m10040(c0913Arr.length));
        for (C0913 c0913 : c0913Arr) {
            linkedHashMap.put(c0913.f3836, c0913.f3837);
        }
        return linkedHashMap;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static Map m10039(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return C5110.f19215;
        }
        int i = 0;
        if (size == 1) {
            C0913 c0913 = (C0913) arrayList.get(0);
            return Collections.singletonMap(c0913.f3836, c0913.f3837);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m10040(arrayList.size()));
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj = arrayList.get(i);
            i++;
            C0913 c09132 = (C0913) obj;
            linkedHashMap.put(c09132.f3836, c09132.f3837);
        }
        return linkedHashMap;
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static int m10040(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static TreeMap m10041(LinkedHashMap linkedHashMap, Comparator comparator) {
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(linkedHashMap);
        return treeMap;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static LinkedHashMap m10042(LinkedHashMap linkedHashMap) {
        return new LinkedHashMap(linkedHashMap);
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static Object m10043(Map map, Object obj) {
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static Map m10044(Map map) {
        int size = map.size();
        if (size == 0) {
            return C5110.f19215;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }
}
