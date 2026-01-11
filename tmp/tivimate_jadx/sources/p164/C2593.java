package p164;

import java.io.Closeable;
import java.io.RandomAccessFile;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: ˊᐧ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2593 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f9822;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f9823;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ReentrantLock f9824 = new ReentrantLock();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f9825;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final RandomAccessFile f9826;

    public C2593(boolean z, RandomAccessFile randomAccessFile) {
        this.f9823 = z;
        this.f9826 = randomAccessFile;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2578 m5816(C2593 c2593) {
        if (!c2593.f9823) {
            throw new IllegalStateException("file handle is read-only");
        }
        ReentrantLock reentrantLock = c2593.f9824;
        reentrantLock.lock();
        try {
            if (c2593.f9825) {
                throw new IllegalStateException("closed");
            }
            c2593.f9822++;
            reentrantLock.unlock();
            return new C2578(c2593);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.f9824;
        reentrantLock.lock();
        try {
            if (this.f9825) {
                return;
            }
            this.f9825 = true;
            if (this.f9822 != 0) {
                return;
            }
            synchronized (this) {
                this.f9826.close();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void flush() {
        if (!this.f9823) {
            throw new IllegalStateException("file handle is read-only");
        }
        ReentrantLock reentrantLock = this.f9824;
        reentrantLock.lock();
        try {
            if (this.f9825) {
                throw new IllegalStateException("closed");
            }
            synchronized (this) {
                this.f9826.getFD().sync();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long size() {
        long length;
        ReentrantLock reentrantLock = this.f9824;
        reentrantLock.lock();
        try {
            if (this.f9825) {
                throw new IllegalStateException("closed");
            }
            synchronized (this) {
                length = this.f9826.length();
            }
            return length;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2587 m5817(long j) {
        ReentrantLock reentrantLock = this.f9824;
        reentrantLock.lock();
        try {
            if (this.f9825) {
                throw new IllegalStateException("closed");
            }
            this.f9822++;
            reentrantLock.unlock();
            return new C2587(this, j);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
