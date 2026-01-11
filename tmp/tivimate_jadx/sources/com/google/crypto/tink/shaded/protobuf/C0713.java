package com.google.crypto.tink.shaded.protobuf;

import java.util.Collections;
import java.util.Map;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0713 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0713 f3000;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile C0713 f3001;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.crypto.tink.shaded.protobuf.ˉˆ, java.lang.Object] */
    static {
        ?? obj = new Object();
        Map map = Collections.EMPTY_MAP;
        f3000 = obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0713 m2526() {
        C0713 c0713;
        C0696 c0696 = C0696.f2964;
        C0713 c07132 = f3001;
        if (c07132 != null) {
            return c07132;
        }
        synchronized (C0713.class) {
            try {
                c0713 = f3001;
                if (c0713 == null) {
                    Class cls = AbstractC0741.f3046;
                    C0713 c07133 = null;
                    if (cls != null) {
                        try {
                            c07133 = (C0713) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    c0713 = c07133 != null ? c07133 : f3000;
                    f3001 = c0713;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0713;
    }
}
