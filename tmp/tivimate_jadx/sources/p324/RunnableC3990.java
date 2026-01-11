package p324;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import p126.InterfaceC2139;

/* renamed from: ᴵי.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3990 extends AbstractC4005 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final RunnableC3990 f15359;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final long f15360;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵי.ˑٴ, ᴵי.ʼʼ, ᴵי.ˏי] */
    static {
        Long l;
        ?? abstractC4017 = new AbstractC4017();
        f15359 = abstractC4017;
        abstractC4017.m8202(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        f15360 = timeUnit.toNanos(l.longValue());
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m8195;
        AbstractC4053.f15446.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    if (m8195) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long mo8194 = mo8194();
                    if (mo8194 == Long.MAX_VALUE) {
                        long nanoTime = System.nanoTime();
                        if (j == Long.MAX_VALUE) {
                            j = f15360 + nanoTime;
                        }
                        long j2 = j - nanoTime;
                        if (j2 <= 0) {
                            _thread = null;
                            m8148();
                            if (m8195()) {
                                return;
                            }
                            mo8146();
                            return;
                        }
                        if (mo8194 > j2) {
                            mo8194 = j2;
                        }
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    if (mo8194 > 0) {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            m8148();
                            if (m8195()) {
                                return;
                            }
                            mo8146();
                            return;
                        }
                        LockSupport.parkNanos(this, mo8194);
                    }
                }
            }
        } finally {
            _thread = null;
            m8148();
            if (!m8195()) {
                mo8146();
            }
        }
    }

    @Override // p324.AbstractC4005, p324.AbstractC4020
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        return "DefaultExecutor";
    }

    @Override // p324.AbstractC4020
    /* renamed from: ʼـ, reason: contains not printable characters */
    public final Thread mo8146() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setContextClassLoader(RunnableC3990.class.getClassLoader());
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // p324.AbstractC4020
    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final void mo8147(long j, AbstractRunnableC4003 abstractRunnableC4003) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final synchronized void m8148() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            AbstractC4005.f15385.set(this, null);
            AbstractC4005.f15383.set(this, null);
            notifyAll();
        }
    }

    @Override // p324.AbstractC4005, p324.InterfaceC3995
    /* renamed from: ᴵʼ */
    public final InterfaceC4041 mo5613(long j, RunnableC3987 runnableC3987, InterfaceC2139 interfaceC2139) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 >= 4611686018427387903L) {
            return C3989.f15358;
        }
        long nanoTime = System.nanoTime();
        C4044 c4044 = new C4044(j2 + nanoTime, runnableC3987);
        m8197(nanoTime, c4044);
        return c4044;
    }

    @Override // p324.AbstractC4005
    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void mo8149(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.mo8149(runnable);
    }
}
