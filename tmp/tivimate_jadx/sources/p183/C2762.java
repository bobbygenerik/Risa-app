package p183;

import com.hierynomus.smbj.common.SMBRuntimeException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p289.C3603;

/* renamed from: ˋٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2762 extends AbstractFutureC2763 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2761 f10521;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3603 f10523;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AtomicBoolean f10520 = new AtomicBoolean(false);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ReentrantReadWriteLock f10522 = new ReentrantReadWriteLock();

    public C2762(C2761 c2761, C3603 c3603) {
        this.f10521 = c2761;
        this.f10523 = c3603;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        AtomicBoolean atomicBoolean = this.f10520;
        ReentrantReadWriteLock reentrantReadWriteLock = this.f10522;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!isDone() && !atomicBoolean.getAndSet(true)) {
                this.f10523.m7568();
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                atomicBoolean.set(false);
                throw ((SMBRuntimeException) SMBRuntimeException.f3099.ᵢˏ(th));
            } finally {
                reentrantReadWriteLock.writeLock().unlock();
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f10521.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f10521.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f10522;
        reentrantReadWriteLock.readLock().lock();
        try {
            return this.f10520.get();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        ReentrantReadWriteLock reentrantReadWriteLock = this.f10522;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (!this.f10520.get()) {
                if (!this.f10521.isDone()) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }
}
