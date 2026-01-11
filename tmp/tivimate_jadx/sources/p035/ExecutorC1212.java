package p035;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import p003.RunnableC0786;
import p121.RunnableC2028;
import p311.RunnableC3805;
import ʿʿ.ﹳٴ;

/* renamed from: ʼﾞ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC1212 implements Executor {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Executor f4689;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4690;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Runnable f4691;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayDeque f4692;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f4693;

    public ExecutorC1212(Executor executor, int i) {
        this.f4690 = i;
        switch (i) {
            case 1:
                this.f4689 = executor;
                this.f4692 = new ArrayDeque();
                this.f4693 = new Object();
                return;
            default:
                this.f4689 = executor;
                this.f4692 = new ArrayDeque();
                this.f4693 = new Object();
                return;
        }
    }

    public ExecutorC1212(ﹳٴ r2) {
        this.f4690 = 2;
        this.f4693 = new Object();
        this.f4692 = new ArrayDeque();
        this.f4689 = r2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m3752() {
        synchronized (this.f4693) {
            Object poll = this.f4692.poll();
            Runnable runnable = (Runnable) poll;
            this.f4691 = runnable;
            if (poll != null) {
                this.f4689.execute(runnable);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m3753(Runnable runnable) {
        synchronized (this.f4693) {
            try {
                this.f4692.add(new RunnableC2028(this, 21, runnable));
                if (this.f4691 == null) {
                    m3755();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m3754(Runnable runnable) {
        synchronized (this.f4693) {
            this.f4692.offer(new RunnableC0786(runnable, 5, this));
            if (this.f4691 == null) {
                m3755();
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f4690) {
            case 0:
                m3754(runnable);
                return;
            case 1:
                m3753(runnable);
                return;
            default:
                synchronized (this.f4693) {
                    try {
                        this.f4692.add(new RunnableC3805(this, 2, runnable));
                        if (this.f4691 == null) {
                            m3755();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3755() {
        switch (this.f4690) {
            case 0:
                m3752();
                return;
            case 1:
                Runnable runnable = (Runnable) this.f4692.poll();
                this.f4691 = runnable;
                if (runnable != null) {
                    this.f4689.execute(runnable);
                    return;
                }
                return;
            default:
                synchronized (this.f4693) {
                    try {
                        Runnable runnable2 = (Runnable) this.f4692.poll();
                        this.f4691 = runnable2;
                        if (runnable2 != null) {
                            this.f4689.execute(runnable2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
