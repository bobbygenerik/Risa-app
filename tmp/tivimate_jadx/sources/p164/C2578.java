package p164;

import com.bumptech.glide.ˈ;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: ˊᐧ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2578 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9785;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2593 f9786;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f9787 = 0;

    public C2578(C2593 c2593) {
        this.f9786 = c2593;
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        C2593 c2593 = this.f9786;
        if (this.f9785) {
            return;
        }
        this.f9785 = true;
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

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        if (this.f9785) {
            throw new IllegalStateException("closed");
        }
        C2593 c2593 = this.f9786;
        synchronized (c2593) {
            c2593.f9826.getFD().sync();
        }
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        return C2580.f9797;
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        if (this.f9785) {
            throw new IllegalStateException("closed");
        }
        C2593 c2593 = this.f9786;
        long j2 = this.f9787;
        c2593.getClass();
        ˈ.ᵔᵢ(c2599.f9835, 0L, j);
        long j3 = j2 + j;
        while (j2 < j3) {
            C2577 c2577 = c2599.f9834;
            int min = (int) Math.min(j3 - j2, c2577.f9778 - c2577.f9782);
            byte[] bArr = c2577.f9783;
            int i = c2577.f9782;
            synchronized (c2593) {
                c2593.f9826.seek(j2);
                c2593.f9826.write(bArr, i, min);
            }
            int i2 = c2577.f9782 + min;
            c2577.f9782 = i2;
            long j4 = min;
            j2 += j4;
            c2599.f9835 -= j4;
            if (i2 == c2577.f9778) {
                c2599.f9834 = c2577.m5776();
                AbstractC2570.m5744(c2577);
            }
        }
        this.f9787 += j;
    }
}
