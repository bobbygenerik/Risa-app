package p324;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p091.C1842;
import p091.ExecutorC1840;
import p126.InterfaceC2139;
import p153.AbstractC2482;
import p179.RunnableC2689;

/* renamed from: ᴵי.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4014 extends AbstractC4016 implements InterfaceC3995 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Executor f15394;

    public C4014(Executor executor) {
        Method method;
        this.f15394 = executor;
        Method method2 = AbstractC2482.f9470;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = AbstractC2482.f9470) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f15394;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4014) && ((C4014) obj).f15394 == this.f15394;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f15394);
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        return this.f15394.toString();
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ʾˋ */
    public final void mo5611(long j, C4030 c4030) {
        Executor executor = this.f15394;
        ScheduledFuture<?> scheduledFuture = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            RunnableC2689 runnableC2689 = new RunnableC2689(this, c4030, 17, false);
            InterfaceC2139 interfaceC2139 = c4030.f15414;
            try {
                scheduledFuture = scheduledExecutorService.schedule(runnableC2689, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                InterfaceC4036 interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367);
                if (interfaceC4036 != null) {
                    interfaceC4036.mo3899(cancellationException);
                }
            }
        }
        if (scheduledFuture != null) {
            c4030.m8207(new C4046(0, scheduledFuture));
        } else {
            RunnableC3990.f15359.mo5611(j, c4030);
        }
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        try {
            this.f15394.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            InterfaceC4036 interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367);
            if (interfaceC4036 != null) {
                interfaceC4036.mo3899(cancellationException);
            }
            C1842 c1842 = AbstractC4028.f15408;
            ExecutorC1840.f7404.mo4764(interfaceC2139, runnable);
        }
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ᴵʼ */
    public final InterfaceC4041 mo5613(long j, RunnableC3987 runnableC3987, InterfaceC2139 interfaceC2139) {
        Executor executor = this.f15394;
        ScheduledFuture<?> scheduledFuture = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            try {
                scheduledFuture = scheduledExecutorService.schedule(runnableC3987, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                InterfaceC4036 interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367);
                if (interfaceC4036 != null) {
                    interfaceC4036.mo3899(cancellationException);
                }
            }
        }
        return scheduledFuture != null ? new C4012(scheduledFuture) : RunnableC3990.f15359.mo5613(j, runnableC3987, interfaceC2139);
    }
}
