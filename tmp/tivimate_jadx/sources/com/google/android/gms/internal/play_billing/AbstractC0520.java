package com.google.android.gms.internal.play_billing;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: com.google.android.gms.internal.play_billing.ʻʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0520 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f2286;

    static {
        char[] cArr = new char[80];
        f2286 = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m2023(AbstractC0529 abstractC0529, StringBuilder sb, int i) {
        int i2;
        int i3;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = abstractC0529.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i4 = 0;
        while (true) {
            i2 = 3;
            if (i4 >= length) {
                break;
            }
            Method method3 = declaredMethods[i4];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i4++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (!substring.endsWith("List") || substring.endsWith("OrBuilderList") || substring.equals("List") || (method2 = (Method) entry.getValue()) == null) {
                i3 = i2;
            } else {
                i3 = i2;
                if (method2.getReturnType().equals(List.class)) {
                    m2025(sb, i, substring.substring(0, substring.length() - 4), AbstractC0529.m2040(method2, abstractC0529, new Object[0]));
                    i2 = i3;
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                m2025(sb, i, substring.substring(0, substring.length() - 3), AbstractC0529.m2040(method, abstractC0529, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object m2040 = AbstractC0529.m2040(method4, abstractC0529, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) AbstractC0529.m2040(method5, abstractC0529, new Object[0])).booleanValue()) {
                        }
                        m2025(sb, i, substring, m2040);
                    } else if (m2040 instanceof Boolean) {
                        if (!((Boolean) m2040).booleanValue()) {
                        }
                        m2025(sb, i, substring, m2040);
                    } else if (m2040 instanceof Integer) {
                        if (((Integer) m2040).intValue() == 0) {
                        }
                        m2025(sb, i, substring, m2040);
                    } else if (m2040 instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) m2040).floatValue()) == 0) {
                        }
                        m2025(sb, i, substring, m2040);
                    } else if (m2040 instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) m2040).doubleValue()) == 0) {
                        }
                        m2025(sb, i, substring, m2040);
                    } else {
                        if (m2040 instanceof String) {
                            equals = m2040.equals("");
                        } else if (m2040 instanceof C0585) {
                            equals = m2040.equals(C0585.f2388);
                        } else if (m2040 instanceof AbstractC0601) {
                            if (m2040 == ((AbstractC0529) ((AbstractC0529) ((AbstractC0601) m2040)).mo2022(6))) {
                            }
                            m2025(sb, i, substring, m2040);
                        } else {
                            if ((m2040 instanceof Enum) && ((Enum) m2040).ordinal() == 0) {
                            }
                            m2025(sb, i, substring, m2040);
                        }
                        if (equals) {
                        }
                        m2025(sb, i, substring, m2040);
                    }
                }
            }
            i2 = i3;
        }
        C0650 c0650 = abstractC0529.zzc;
        if (c0650 != null) {
            for (int i5 = 0; i5 < c0650.f2515; i5++) {
                m2025(sb, i, String.valueOf(c0650.f2514[i5] >>> 3), c0650.f2511[i5]);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m2024(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f2286, 0, i2);
            i -= i2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2025(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m2025(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m2025(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        m2024(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            C0585 c0585 = C0585.f2388;
            sb.append(ˉᵎ.ⁱˊ.ˈʿ(new C0585(((String) obj).getBytes(AbstractC0634.f2471))));
            sb.append('\"');
            return;
        }
        if (obj instanceof C0585) {
            sb.append(": \"");
            sb.append(ˉᵎ.ⁱˊ.ˈʿ((C0585) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC0529) {
            sb.append(" {");
            m2023((AbstractC0529) obj, sb, i + 2);
            sb.append("\n");
            m2024(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i3 = i + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        m2025(sb, i3, "key", entry.getKey());
        m2025(sb, i3, "value", entry.getValue());
        sb.append("\n");
        m2024(i, sb);
        sb.append("}");
    }
}
