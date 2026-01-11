package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.lifecycle.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0205 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f1115;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f1116 = new HashMap();

    public C0205(HashMap hashMap) {
        this.f1115 = hashMap;
        for (Map.Entry entry : hashMap.entrySet()) {
            EnumC0174 enumC0174 = (EnumC0174) entry.getValue();
            List list = (List) this.f1116.get(enumC0174);
            if (list == null) {
                list = new ArrayList();
                this.f1116.put(enumC0174, list);
            }
            list.add((C0160) entry.getKey());
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m736(List list, InterfaceC0162 interfaceC0162, EnumC0174 enumC0174, InterfaceC0179 interfaceC0179) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0160 c0160 = (C0160) list.get(size);
                Method method = c0160.f1036;
                try {
                    int i = c0160.f1037;
                    if (i == 0) {
                        method.invoke(interfaceC0179, null);
                    } else if (i == 1) {
                        method.invoke(interfaceC0179, interfaceC0162);
                    } else if (i == 2) {
                        method.invoke(interfaceC0179, interfaceC0162, enumC0174);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }
}
