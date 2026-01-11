package p447;

import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5215 extends AbstractC5276 {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final AtomicLong f19583 = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C5349 f19584;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C5349 f19585;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C5252 f19586;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final LinkedBlockingQueue f19587;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Semaphore f19588;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C5252 f19589;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final PriorityBlockingQueue f19590;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Object f19591;

    public C5215(C5322 c5322) {
        super(c5322);
        this.f19591 = new Object();
        this.f19588 = new Semaphore(2);
        this.f19590 = new PriorityBlockingQueue();
        this.f19587 = new LinkedBlockingQueue();
        this.f19589 = new C5252(this, "Thread death: Uncaught exception on worker thread");
        this.f19586 = new C5252(this, "Thread death: Uncaught exception on network thread");
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10195() {
        if (Thread.currentThread() != this.f19585) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final C5352 m10196(Callable callable) {
        m10463();
        C5352 c5352 = new C5352(this, callable, false);
        if (Thread.currentThread() != this.f19584) {
            m10197(c5352);
            return c5352;
        }
        if (!this.f19590.isEmpty()) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10217("Callable skipped the worker queue.");
        }
        c5352.run();
        return c5352;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final void m10197(C5352 c5352) {
        synchronized (this.f19591) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.f19590;
                priorityBlockingQueue.add(c5352);
                C5349 c5349 = this.f19584;
                if (c5349 == null) {
                    C5349 c53492 = new C5349(this, "Measurement Worker", priorityBlockingQueue);
                    this.f19584 = c53492;
                    c53492.setUncaughtExceptionHandler(this.f19589);
                    this.f19584.start();
                } else {
                    c5349.m10734();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final C5352 m10198(Callable callable) {
        m10463();
        C5352 c5352 = new C5352(this, callable, true);
        if (Thread.currentThread() == this.f19584) {
            c5352.run();
            return c5352;
        }
        m10197(c5352);
        return c5352;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final Object m10199(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            C5215 c5215 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20200;
            C5322.m10556(c5215);
            c5215.m10200(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
                C5322.m10556(c5344);
                C5221 c5221 = c5344.f20348;
                StringBuilder sb = new StringBuilder(str.length() + 24);
                sb.append("Interrupted waiting for ");
                sb.append(str);
                c5221.m10217(sb.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            C5344 c53442 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c53442);
            c53442.f20348.m10217("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10200(Runnable runnable) {
        m10463();
        AbstractC3659.m7687(runnable);
        m10197(new C5352(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final void m10201() {
        if (Thread.currentThread() == this.f19584) {
            throw new IllegalStateException("Call not expected from worker thread");
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m10202(Runnable runnable) {
        m10463();
        C5352 c5352 = new C5352(this, runnable, false, "Task exception on network thread");
        synchronized (this.f19591) {
            try {
                LinkedBlockingQueue linkedBlockingQueue = this.f19587;
                linkedBlockingQueue.add(c5352);
                C5349 c5349 = this.f19585;
                if (c5349 == null) {
                    C5349 c53492 = new C5349(this, "Measurement Network", linkedBlockingQueue);
                    this.f19585 = c53492;
                    c53492.setUncaughtExceptionHandler(this.f19586);
                    this.f19585.start();
                } else {
                    c5349.m10734();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public final void m10203() {
        if (Thread.currentThread() != this.f19584) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m10204(Runnable runnable) {
        m10463();
        m10197(new C5352(this, runnable, true, "Task exception on worker thread"));
    }

    @Override // p447.AbstractC5276
    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final boolean mo10205() {
        return false;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final boolean m10206() {
        return Thread.currentThread() == this.f19584;
    }
}
