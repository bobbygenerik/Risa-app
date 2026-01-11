package com.google.android.gms.internal.play_billing;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.play_billing.ﹳᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0641 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AbstractC0576 f2481;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f2482;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f2483;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final boolean f2484;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Class f2485;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Unsafe f2486;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final long f2487;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    static {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.AbstractC0641.<clinit>():void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Unsafe m2253() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static int m2254(Class cls) {
        if (f2483) {
            return f2481.f2367.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m2255(Object obj, long j, byte b) {
        Unsafe unsafe = f2481.f2367;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m2256(long j, Object obj, int i) {
        f2481.f2367.putInt(obj, j, i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m2257(Object obj, long j, byte b) {
        Unsafe unsafe = f2481.f2367;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i) | (unsafe.getInt(obj, j2) & (~(255 << i))));
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ boolean m2258(long j, Object obj) {
        return ((byte) ((f2481.f2367.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static boolean m2259(Class cls) {
        int i = AbstractC0647.f2507;
        try {
            Class cls2 = f2485;
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

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m2260(long j, Object obj) {
        return f2481.f2367.getInt(obj, j);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m2261(Object obj, long j, long j2) {
        f2481.f2367.putLong(obj, j, j2);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Object m2262(Class cls) {
        try {
            return f2486.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ boolean m2263(long j, Object obj) {
        return ((byte) ((f2481.f2367.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Object m2264(long j, Object obj) {
        return f2481.f2367.getObject(obj, j);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Field m2265() {
        Field field;
        Field field2;
        int i = AbstractC0647.f2507;
        try {
            field = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            field = null;
        }
        if (field != null) {
            return field;
        }
        try {
            field2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field2 = null;
        }
        if (field2 == null || field2.getType() != Long.TYPE) {
            return null;
        }
        return field2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2266(Class cls) {
        if (f2483) {
            f2481.f2367.arrayIndexScale(cls);
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m2267(long j, Object obj, Object obj2) {
        f2481.f2367.putObject(obj, j, obj2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static long m2268(long j, Object obj) {
        return f2481.f2367.getLong(obj, j);
    }
}
