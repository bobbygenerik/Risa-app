package com.google.crypto.tink.shaded.protobuf;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0699 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean f2974;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Class f2975;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f2975 = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f2974 = cls2 != null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m2479() {
        return (f2975 == null || f2974) ? false : true;
    }
}
