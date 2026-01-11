package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0055 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0055 f484;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile C0055 f485;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.ᵔʾ, java.lang.Object] */
    static {
        ?? obj = new Object();
        Map map = Collections.EMPTY_MAP;
        f484 = obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0055 m359() {
        C0055 c0055;
        C0034 c0034 = C0034.f426;
        C0055 c00552 = f485;
        if (c00552 != null) {
            return c00552;
        }
        synchronized (C0055.class) {
            try {
                c0055 = f485;
                if (c0055 == null) {
                    Class cls = AbstractC0023.f409;
                    C0055 c00553 = null;
                    if (cls != null) {
                        try {
                            c00553 = (C0055) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    c0055 = c00553 != null ? c00553 : f484;
                    f485 = c0055;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0055;
    }
}
