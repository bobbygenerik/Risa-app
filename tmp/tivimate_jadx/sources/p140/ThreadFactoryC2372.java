package p140;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p120.C2011;
import p121.RunnableC2028;

/* renamed from: ˉˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC2372 implements ThreadFactory {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f9162;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f9164;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ThreadFactoryC2375 f9165;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AtomicInteger f9163 = new AtomicInteger();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2373 f9161 = C2373.f9166;

    public ThreadFactoryC2372(ThreadFactoryC2375 threadFactoryC2375, String str, boolean z) {
        this.f9165 = threadFactoryC2375;
        this.f9164 = str;
        this.f9162 = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        RunnableC2028 runnableC2028 = new RunnableC2028(this, runnable, 23, false);
        this.f9165.getClass();
        C2011 c2011 = new C2011(runnableC2028);
        c2011.setName("glide-" + this.f9164 + "-thread-" + this.f9163.getAndIncrement());
        return c2011;
    }
}
