package p183;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import p033.AbstractC1179;
import ˋⁱ.ﾞᴵ;

/* renamed from: ˋٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2761 extends AbstractFutureC2763 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C2760 f10519;

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        try {
            C2760 c2760 = this.f10519;
            c2760.getClass();
            return c2760.m6159(0L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        try {
            C2760 c2760 = this.f10519;
            Object m6159 = c2760.m6159(j, timeUnit);
            if (m6159 != null) {
                return m6159;
            }
            throw ((ﾞᴵ) c2760.f10513).ᵢˏ(new TimeoutException("Timeout expired"));
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        C2760 c2760 = this.f10519;
        ReentrantLock reentrantLock = (ReentrantLock) c2760.f10518;
        reentrantLock.lock();
        try {
            if (((Throwable) c2760.f10514) == null) {
                if (((AbstractC1179) c2760.f10516) != null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }
}
