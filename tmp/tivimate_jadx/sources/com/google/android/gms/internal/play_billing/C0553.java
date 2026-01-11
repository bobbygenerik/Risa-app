package com.google.android.gms.internal.play_billing;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.play_billing.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0553 extends ʽٴ.ˈ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Unsafe f2328;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final long f2329;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final long f2330;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final long f2331;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final long f2332;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final long f2333;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                throw new RuntimeException("Could not initialize intrinsics", e.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        }
        try {
            f2330 = unsafe.objectFieldOffset(AbstractC0555.class.getDeclaredField("ʽʽ"));
            f2329 = unsafe.objectFieldOffset(AbstractC0555.class.getDeclaredField("ᴵˊ"));
            f2333 = unsafe.objectFieldOffset(AbstractC0555.class.getDeclaredField("ʾˋ"));
            f2331 = unsafe.objectFieldOffset(C0625.class.getDeclaredField("ﹳٴ"));
            f2332 = unsafe.objectFieldOffset(C0625.class.getDeclaredField("ⁱˊ"));
            f2328 = unsafe;
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0625 m2124(C0547 c0547) {
        C0625 c0625;
        C0625 c06252 = C0625.f2462;
        do {
            c0625 = c0547.f2339;
            if (c06252 == c0625) {
                break;
            }
        } while (!m2126(c0547, c0625, c06252));
        return c0625;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m2125(C0625 c0625, C0625 c06252) {
        f2328.putObject(c0625, f2332, c06252);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m2126(AbstractC0555 abstractC0555, C0625 c0625, C0625 c06252) {
        return AbstractC0573.m2157(f2328, abstractC0555, f2330, c0625, c06252);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m2127(C0547 c0547, C0621 c0621, C0621 c06212) {
        return AbstractC0573.m2157(f2328, c0547, f2329, c0621, c06212);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m2128(AbstractC0555 abstractC0555, Object obj, Object obj2) {
        return AbstractC0573.m2157(f2328, abstractC0555, f2333, obj, obj2);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0621 m2129(C0547 c0547) {
        C0621 c0621;
        C0621 c06212 = C0621.f2453;
        do {
            c0621 = c0547.f2341;
            if (c06212 == c0621) {
                break;
            }
        } while (!m2127(c0547, c0621, c06212));
        return c0621;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m2130(C0625 c0625, Thread thread) {
        f2328.putObject(c0625, f2331, thread);
    }
}
