package p233;

import android.content.Context;

/* renamed from: ˑˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3191 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3191 f12209;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C3192 f12210;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑˊ.ʽ] */
    static {
        ?? obj = new Object();
        obj.f12210 = null;
        f12209 = obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3192 m7014(Context context) {
        C3192 c3192;
        C3191 c3191 = f12209;
        synchronized (c3191) {
            try {
                if (c3191.f12210 == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    c3191.f12210 = new C3192(context);
                }
                c3192 = c3191.f12210;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3192;
    }
}
