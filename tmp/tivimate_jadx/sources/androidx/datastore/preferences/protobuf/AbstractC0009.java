package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0009 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean f382;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Class f383;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f383 = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f382 = cls2 != null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m215() {
        return (f383 == null || f382) ? false : true;
    }
}
