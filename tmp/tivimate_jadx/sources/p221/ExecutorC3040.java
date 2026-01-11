package p221;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import p080.RunnableC1712;
import p179.RunnableC2689;
import p296.AbstractC3659;

/* renamed from: ˏᐧ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC3040 implements Executor {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final Logger f11569 = Logger.getLogger(ExecutorC3040.class.getName());

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Executor f11571;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayDeque f11573 = new ArrayDeque();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f11570 = 1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f11572 = 0;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final RunnableC2689 f11574 = new RunnableC2689(this);

    public ExecutorC3040(Executor executor) {
        AbstractC3659.m7687(executor);
        this.f11571 = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        AbstractC3659.m7687(runnable);
        synchronized (this.f11573) {
            int i = this.f11570;
            if (i != 4 && i != 3) {
                long j = this.f11572;
                RunnableC1712 runnableC1712 = new RunnableC1712(runnable, 2);
                this.f11573.add(runnableC1712);
                this.f11570 = 2;
                try {
                    this.f11571.execute(this.f11574);
                    if (this.f11570 != 2) {
                        return;
                    }
                    synchronized (this.f11573) {
                        try {
                            if (this.f11572 == j && this.f11570 == 2) {
                                this.f11570 = 3;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f11573) {
                        try {
                            int i2 = this.f11570;
                            boolean z = true;
                            if ((i2 != 1 && i2 != 2) || !this.f11573.removeLastOccurrence(runnableC1712)) {
                                z = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.f11573.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f11571 + "}";
    }
}
