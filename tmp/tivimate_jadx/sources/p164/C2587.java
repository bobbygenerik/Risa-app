package p164;

import java.util.concurrent.locks.ReentrantLock;
import p307.AbstractC3740;

/* renamed from: ˊᐧ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2587 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9814;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2593 f9815;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f9816;

    public C2587(C2593 c2593, long j) {
        this.f9815 = c2593;
        this.f9816 = j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C2593 c2593 = this.f9815;
        if (this.f9814) {
            return;
        }
        this.f9814 = true;
        ReentrantLock reentrantLock = c2593.f9824;
        reentrantLock.lock();
        try {
            int i = c2593.f9822 - 1;
            c2593.f9822 = i;
            if (i == 0) {
                if (c2593.f9825) {
                    synchronized (c2593) {
                        c2593.f9826.close();
                    }
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return C2580.f9797;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        long j2;
        long j3;
        int i;
        if (this.f9814) {
            throw new IllegalStateException("closed");
        }
        C2593 c2593 = this.f9815;
        long j4 = this.f9816;
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        long j5 = j + j4;
        long j6 = j4;
        while (true) {
            if (j6 >= j5) {
                j2 = -1;
                break;
            }
            C2577 m5823 = c2599.m5823(1);
            byte[] bArr = m5823.f9783;
            int i2 = m5823.f9778;
            j2 = -1;
            int min = (int) Math.min(j5 - j6, 8192 - i2);
            synchronized (c2593) {
                c2593.f9826.seek(j6);
                i = 0;
                while (true) {
                    if (i >= min) {
                        break;
                    }
                    int read = c2593.f9826.read(bArr, i2, min - i);
                    if (read != -1) {
                        i += read;
                    } else if (i == 0) {
                        i = -1;
                    }
                }
            }
            if (i == -1) {
                if (m5823.f9782 == m5823.f9778) {
                    c2599.f9834 = m5823.m5776();
                    AbstractC2570.m5744(m5823);
                }
                if (j4 == j6) {
                    j3 = -1;
                }
            } else {
                m5823.f9778 += i;
                long j7 = i;
                j6 += j7;
                c2599.f9835 += j7;
            }
        }
        j3 = j6 - j4;
        if (j3 != j2) {
            this.f9816 += j3;
        }
        return j3;
    }
}
