package p121;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
import ﹳٴ.ﹳٴ;

/* renamed from: ˈˊ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2024 extends ﹳٴ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final long f7923;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final long f7924;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final long f7925;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Unsafe f7926;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final long f7927;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final long f7928;

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
            f7923 = unsafe.objectFieldOffset(AbstractC2021.class.getDeclaredField("ʽʽ"));
            f7927 = unsafe.objectFieldOffset(AbstractC2021.class.getDeclaredField("ᴵˊ"));
            f7924 = unsafe.objectFieldOffset(AbstractC2021.class.getDeclaredField("ʾˋ"));
            f7925 = unsafe.objectFieldOffset(C2032.class.getDeclaredField("ﹳٴ"));
            f7928 = unsafe.objectFieldOffset(C2032.class.getDeclaredField("ⁱˊ"));
            f7926 = unsafe;
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m5027(AbstractC2021 abstractC2021, C2032 c2032, C2032 c20322) {
        return AbstractC2025.m5034(f7926, abstractC2021, f7923, c2032, c20322);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C2032 m5028(AbstractC2021 abstractC2021) {
        C2032 c2032;
        C2032 c20322 = C2032.f7944;
        do {
            c2032 = abstractC2021.f7920;
            if (c20322 == c2032) {
                break;
            }
        } while (!m5027(abstractC2021, c2032, c20322));
        return c2032;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m5029(C2032 c2032, Thread thread) {
        f7926.putObject(c2032, f7925, thread);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C2018 m5030(AbstractC2021 abstractC2021) {
        C2018 c2018;
        C2018 c20182 = C2018.f7907;
        do {
            c2018 = abstractC2021.f7922;
            if (c20182 == c2018) {
                break;
            }
        } while (!m5033(abstractC2021, c2018, c20182));
        return c2018;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m5031(C2032 c2032, C2032 c20322) {
        f7926.putObject(c2032, f7928, c20322);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m5032(AbstractC2021 abstractC2021, Object obj, Object obj2) {
        return AbstractC2016.m5003(f7926, abstractC2021, f7924, obj, obj2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5033(AbstractC2021 abstractC2021, C2018 c2018, C2018 c20182) {
        return AbstractC2027.m5069(f7926, abstractC2021, f7927, c2018, c20182);
    }
}
