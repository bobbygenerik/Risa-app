package p221;

import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import p003.RunnableC0786;

/* renamed from: ˏᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC3047 implements ThreadFactory {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ThreadFactory f11593 = Executors.defaultThreadFactory();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11594;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final StrictMode.ThreadPolicy f11595;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11596;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicLong f11597 = new AtomicLong();

    public ThreadFactoryC3047(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        this.f11596 = str;
        this.f11594 = i;
        this.f11595 = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = f11593.newThread(new RunnableC0786(this, 18, runnable));
        Locale locale = Locale.ROOT;
        newThread.setName(this.f11596 + " Thread #" + this.f11597.getAndIncrement());
        return newThread;
    }
}
