package p447;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5349 extends Thread {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f20360 = false;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f20361;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C5215 f20362;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final BlockingQueue f20363;

    public C5349(C5215 c5215, String str, BlockingQueue blockingQueue) {
        this.f20362 = c5215;
        AbstractC3659.m7687(blockingQueue);
        this.f20361 = new Object();
        this.f20363 = blockingQueue;
        setName(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.f20362.f19588.acquire();
                z = true;
            } catch (InterruptedException e) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this.f20362).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10216(e, String.valueOf(getName()).concat(" was interrupted"));
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.f20363;
                C5352 c5352 = (C5352) blockingQueue.poll();
                if (c5352 != null) {
                    Process.setThreadPriority(true != c5352.f20376 ? 10 : threadPriority);
                    c5352.run();
                } else {
                    Object obj = this.f20361;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.f20362.getClass();
                            try {
                                obj.wait(30000L);
                            } catch (InterruptedException e2) {
                                C5344 c53442 = ((C5322) ((ᵎﹶ) this.f20362).ʾˋ).f20193;
                                C5322.m10556(c53442);
                                c53442.f20348.m10216(e2, String.valueOf(getName()).concat(" was interrupted"));
                            }
                        }
                    }
                    synchronized (this.f20362.f19591) {
                        if (this.f20363.peek() == null) {
                            m10733();
                            m10733();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            m10733();
            throw th;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10733() {
        C5215 c5215 = this.f20362;
        synchronized (c5215.f19591) {
            try {
                if (!this.f20360) {
                    c5215.f19588.release();
                    c5215.f19591.notifyAll();
                    if (this == c5215.f19584) {
                        c5215.f19584 = null;
                    } else if (this == c5215.f19585) {
                        c5215.f19585 = null;
                    } else {
                        C5344 c5344 = ((C5322) ((ᵎﹶ) c5215).ʾˋ).f20193;
                        C5322.m10556(c5344);
                        c5344.f20343.m10217("Current scheduler thread is neither worker nor network");
                    }
                    this.f20360 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10734() {
        Object obj = this.f20361;
        synchronized (obj) {
            obj.notifyAll();
        }
    }
}
