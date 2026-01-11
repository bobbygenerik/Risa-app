package p120;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;
import p027.C1090;
import p164.C2579;
import ـˎ.ˈ;

/* renamed from: ˈˆ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2011 extends Thread {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7903 = 1;

    public /* synthetic */ C2011(Runnable runnable) {
        super(runnable);
    }

    public /* synthetic */ C2011(String str) {
        super(str);
    }

    public /* synthetic */ C2011(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ReentrantLock reentrantLock;
        switch (this.f7903) {
            case 0:
                Process.setThreadPriority(19);
                synchronized (this) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
            case 1:
                Process.setThreadPriority(9);
                super.run();
                return;
        }
        while (true) {
            try {
                C1090 c1090 = C2579.f9792;
                reentrantLock = C2579.f9789;
                reentrantLock.lock();
            } catch (InterruptedException unused2) {
            }
            try {
                C2579 c2579 = ˈ.ᵔʾ();
                if (c2579 == C2579.f9788) {
                    C2579.f9788 = null;
                    reentrantLock.unlock();
                    return;
                } else {
                    reentrantLock.unlock();
                    if (c2579 != null) {
                        c2579.mo5778();
                    }
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }
}
