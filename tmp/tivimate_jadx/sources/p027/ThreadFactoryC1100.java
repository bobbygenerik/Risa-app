package p027;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: ʼٴ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC1100 implements ThreadFactory {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ThreadFactory f4293 = Executors.defaultThreadFactory();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AtomicInteger f4292 = new AtomicInteger(1);

    public ThreadFactoryC1100(C1111 c1111) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f4293.newThread(runnable);
        newThread.setName("PlayBillingLibrary-" + this.f4292.getAndIncrement());
        return newThread;
    }
}
