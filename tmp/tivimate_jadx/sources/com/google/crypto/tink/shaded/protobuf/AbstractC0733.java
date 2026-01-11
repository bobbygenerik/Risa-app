package com.google.crypto.tink.shaded.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0733 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AbstractC0721 f3024;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f3025;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f3026;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final boolean f3027;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Class f3028;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Unsafe f3029;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final long f3030;

    static {
        Unsafe m2611 = m2611();
        f3029 = m2611;
        f3028 = AbstractC0699.f2975;
        boolean m2623 = m2623(Long.TYPE);
        boolean m26232 = m2623(Integer.TYPE);
        AbstractC0721 abstractC0721 = null;
        if (m2611 != null) {
            if (!AbstractC0699.m2479()) {
                abstractC0721 = new AbstractC0721(m2611);
            } else if (m2623) {
                abstractC0721 = new C0732(m2611, 1);
            } else if (m26232) {
                abstractC0721 = new C0732(m2611, 0);
            }
        }
        f3024 = abstractC0721;
        f3025 = abstractC0721 == null ? false : abstractC0721.mo2541();
        f3026 = abstractC0721 == null ? false : abstractC0721.mo2549();
        f3030 = m2610(byte[].class);
        m2610(boolean[].class);
        m2612(boolean[].class);
        m2610(int[].class);
        m2612(int[].class);
        m2610(long[].class);
        m2612(long[].class);
        m2610(float[].class);
        m2612(float[].class);
        m2610(double[].class);
        m2612(double[].class);
        m2610(Object[].class);
        m2612(Object[].class);
        Field m2615 = m2615();
        if (m2615 != null && abstractC0721 != null) {
            abstractC0721.m2536(m2615);
        }
        f3027 = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static byte m2608(long j, Object obj) {
        return (byte) ((f3024.m2543((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m2609(long j, Object obj, Object obj2) {
        f3024.m2546(j, obj, obj2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m2610(Class cls) {
        if (f3026) {
            return f3024.m2548(cls);
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Unsafe m2611() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m2612(Class cls) {
        if (f3026) {
            f3024.m2547(cls);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m2613(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m2618(j2, obj, ((255 & b) << i) | (f3024.m2543(j2, obj) & (~(255 << i))));
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m2614(Object obj, long j, long j2) {
        f3024.m2534(obj, j, j2);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Field m2615() {
        Field field;
        Field field2;
        if (AbstractC0699.m2479()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m2616(byte[] bArr, long j, byte b) {
        f3024.mo2550(bArr, f3030 + j, b);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static byte m2617(long j, byte[] bArr) {
        return f3024.mo2537(f3030 + j, bArr);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m2618(long j, Object obj, int i) {
        f3024.m2539(j, obj, i);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static byte m2619(long j, Object obj) {
        return (byte) ((f3024.m2543((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Object m2620(Class cls) {
        try {
            return f3029.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2621(Throwable th) {
        Logger.getLogger(AbstractC0733.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m2622(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m2543 = f3024.m2543(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        m2618(j2, obj, ((255 & b) << i) | (m2543 & (~(255 << i))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean m2623(Class cls) {
        if (!AbstractC0699.m2479()) {
            return false;
        }
        try {
            Class cls2 = f3028;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
