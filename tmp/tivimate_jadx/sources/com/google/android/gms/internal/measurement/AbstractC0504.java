package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.measurement.ﹶʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0504 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AbstractC0372 f2268;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f2269;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f2270;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final boolean f2271;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Class f2272;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Unsafe f2273;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final long f2274;

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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC0504.<clinit>():void");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m1986(Object obj, long j, long j2) {
        f2268.f2033.putLong(obj, j, j2);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static int m1987(Class cls) {
        if (f2270) {
            return f2268.f2033.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1988(Object obj, long j, byte b) {
        Unsafe unsafe = f2268.f2033;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Object m1989(long j, Object obj) {
        return f2268.f2033.getObject(obj, j);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m1990(Object obj, long j, byte b) {
        Unsafe unsafe = f2268.f2033;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i) | (unsafe.getInt(obj, j2) & (~(255 << i))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static boolean m1991(Class cls) {
        int i = AbstractC0242.f1726;
        try {
            Class cls2 = f2272;
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

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ boolean m1992(long j, Object obj) {
        return ((byte) ((f2268.f2033.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Object m1993(Class cls) {
        try {
            return f2273.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m1994(long j, Object obj, Object obj2) {
        f2268.f2033.putObject(obj, j, obj2);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m1995(long j, Object obj, int i) {
        f2268.f2033.putInt(obj, j, i);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* synthetic */ boolean m1996(long j, Object obj) {
        return ((byte) ((f2268.f2033.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static long m1997(long j, Object obj) {
        return f2268.f2033.getLong(obj, j);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Field m1998() {
        Field field;
        Field field2;
        int i = AbstractC0242.f1726;
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
    public static void m1999(Class cls) {
        if (f2270) {
            f2268.f2033.arrayIndexScale(cls);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static Unsafe m2000() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m2001(long j, Object obj) {
        return f2268.f2033.getInt(obj, j);
    }
}
