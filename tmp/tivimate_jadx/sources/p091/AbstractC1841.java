package p091;

import java.util.concurrent.TimeUnit;
import p153.AbstractC2472;
import p153.AbstractC2481;

/* renamed from: ʿⁱ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1841 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int f7405;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int f7406;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final long f7407;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final long f7408;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f7409;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1850 f7410;

    static {
        String str;
        int i = AbstractC2472.f9448;
        try {
            str = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            str = "DefaultDispatcher";
        }
        f7409 = str;
        f7408 = AbstractC2481.m5624("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i2 = AbstractC2472.f9448;
        if (i2 < 2) {
            i2 = 2;
        }
        f7405 = AbstractC2481.m5629(i2, 8, "kotlinx.coroutines.scheduler.core.pool.size");
        f7406 = AbstractC2481.m5629(2097150, 4, "kotlinx.coroutines.scheduler.max.pool.size");
        f7407 = TimeUnit.SECONDS.toNanos(AbstractC2481.m5624("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f7410 = C1850.f7441;
    }
}
