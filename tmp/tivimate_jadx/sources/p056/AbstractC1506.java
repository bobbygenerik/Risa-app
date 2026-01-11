package p056;

import com.bumptech.glide.ˈ;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p035.AbstractC1220;
import p121.InterfaceFutureC2031;

/* renamed from: ʽﹳ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1506 implements InterfaceFutureC2031 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final ˈ f5960;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Object f5961;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile C1512 f5963;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile Object f5964;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile C1499 f5965;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final boolean f5959 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Logger f5962 = Logger.getLogger(AbstractC1506.class.getName());

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.bumptech.glide.ˈ] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    static {
        ?? r3;
        try {
            th = null;
            r3 = new C1501(AtomicReferenceFieldUpdater.newUpdater(C1512.class, Thread.class, "ﹳٴ"), AtomicReferenceFieldUpdater.newUpdater(C1512.class, C1512.class, "ⁱˊ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1506.class, C1512.class, "ʽʽ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1506.class, C1499.class, "ᴵˊ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1506.class, Object.class, "ʾˋ"));
        } catch (Throwable th) {
            th = th;
            r3 = new Object();
        }
        f5960 = r3;
        if (th != null) {
            f5962.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f5961 = new Object();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m4313(AbstractC1506 abstractC1506) {
        C1512 c1512;
        C1499 c1499;
        C1499 c14992;
        C1499 c14993;
        do {
            c1512 = abstractC1506.f5963;
        } while (!f5960.ᵎﹶ(abstractC1506, c1512, C1512.f5977));
        while (true) {
            c1499 = null;
            if (c1512 == null) {
                break;
            }
            Thread thread = c1512.f5979;
            if (thread != null) {
                c1512.f5979 = null;
                LockSupport.unpark(thread);
            }
            c1512 = c1512.f5978;
        }
        abstractC1506.mo4319();
        do {
            c14992 = abstractC1506.f5965;
        } while (!f5960.ˑﹳ(abstractC1506, c14992, C1499.f5942));
        while (true) {
            c14993 = c1499;
            c1499 = c14992;
            if (c1499 == null) {
                break;
            }
            c14992 = c1499.f5943;
            c1499.f5943 = c14993;
        }
        while (c14993 != null) {
            C1499 c14994 = c14993.f5943;
            m4316(c14993.f5945, c14993.f5944);
            c14993 = c14994;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Object m4314(Object obj) {
        if (obj instanceof C1510) {
            Throwable th = ((C1510) obj).f5973;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C1509) {
            throw new ExecutionException(((C1509) obj).f5970);
        }
        if (obj == f5961) {
            return null;
        }
        return obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Object m4315(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m4316(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f5962.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f5964;
        if (obj == null) {
            if (f5960.ﾞᴵ(this, obj, f5959 ? new C1510(new CancellationException("Future.cancel() was called."), z) : z ? C1510.f5971 : C1510.f5972)) {
                m4313(this);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        C1512 c1512 = C1512.f5977;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f5964;
        if (obj2 != null) {
            return m4314(obj2);
        }
        C1512 c15122 = this.f5963;
        if (c15122 != c1512) {
            C1512 c15123 = new C1512();
            do {
                ˈ r3 = f5960;
                r3.ʽʽ(c15123, c15122);
                if (r3.ᵎﹶ(this, c15122, c15123)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m4318(c15123);
                            throw new InterruptedException();
                        }
                        obj = this.f5964;
                    } while (obj == null);
                    return m4314(obj);
                }
                c15122 = this.f5963;
            } while (c15122 != c1512);
        }
        return m4314(this.f5964);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        C1512 c1512 = C1512.f5977;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f5964;
        if (obj != null) {
            return m4314(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            C1512 c15122 = this.f5963;
            if (c15122 != c1512) {
                C1512 c15123 = new C1512();
                do {
                    ˈ r15 = f5960;
                    r15.ʽʽ(c15123, c15122);
                    if (r15.ᵎﹶ(this, c15122, c15123)) {
                        while (true) {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                m4318(c15123);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f5964;
                            if (obj2 != null) {
                                return m4314(obj2);
                            }
                            long nanoTime2 = nanoTime - System.nanoTime();
                            if (nanoTime2 < 1000) {
                                m4318(c15123);
                                nanos = nanoTime2;
                                break;
                            }
                            nanos = nanoTime2;
                        }
                    } else {
                        c15122 = this.f5963;
                    }
                } while (c15122 != c1512);
            }
            return m4314(this.f5964);
        }
        while (nanos > 0) {
            Object obj3 = this.f5964;
            if (obj3 != null) {
                return m4314(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String abstractC1506 = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        StringBuilder m3770 = AbstractC1220.m3770(j, "Waited ", " ");
        m3770.append(timeUnit.toString().toLowerCase(locale));
        String sb = m3770.toString();
        if (nanos + 1000 < 0) {
            String m3791 = AbstractC1220.m3791(sb, " (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            boolean z = convert == 0 || nanos2 > 1000;
            if (convert > 0) {
                String str = m3791 + convert + " " + lowerCase;
                if (z) {
                    str = AbstractC1220.m3791(str, ",");
                }
                m3791 = AbstractC1220.m3791(str, " ");
            }
            if (z) {
                m3791 = m3791 + nanos2 + " nanoseconds ";
            }
            sb = AbstractC1220.m3791(m3791, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(AbstractC1220.m3791(sb, " but future completed as timeout expired"));
        }
        throw new TimeoutException(AbstractC1220.m3795(sb, " for ", abstractC1506));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5964 instanceof C1510;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5964 != null;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f5964 instanceof C1510) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m4317(sb);
        } else {
            try {
                str = mo4301();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m4317(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʼˎ */
    public String mo4301() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4317(StringBuilder sb) {
        try {
            Object m4315 = m4315(this);
            sb.append("SUCCESS, result=[");
            sb.append(m4315 == this ? "this future" : String.valueOf(m4315));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m4318(C1512 c1512) {
        c1512.f5979 = null;
        while (true) {
            C1512 c15122 = this.f5963;
            if (c15122 == C1512.f5977) {
                return;
            }
            C1512 c15123 = null;
            while (c15122 != null) {
                C1512 c15124 = c15122.f5978;
                if (c15122.f5979 != null) {
                    c15123 = c15122;
                } else if (c15123 != null) {
                    c15123.f5978 = c15124;
                    if (c15123.f5979 == null) {
                        break;
                    }
                } else if (!f5960.ᵎﹶ(this, c15122, c15124)) {
                    break;
                }
                c15122 = c15124;
            }
            return;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void mo4319() {
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean m4320(Object obj) {
        if (obj == null) {
            obj = f5961;
        }
        if (!f5960.ﾞᴵ(this, (Object) null, obj)) {
            return false;
        }
        m4313(this);
        return true;
    }

    @Override // p121.InterfaceFutureC2031
    /* renamed from: ﹳٴ */
    public final void mo4312(Runnable runnable, Executor executor) {
        executor.getClass();
        C1499 c1499 = this.f5965;
        C1499 c14992 = C1499.f5942;
        if (c1499 != c14992) {
            C1499 c14993 = new C1499(runnable, executor);
            do {
                c14993.f5943 = c1499;
                if (f5960.ˑﹳ(this, c1499, c14993)) {
                    return;
                } else {
                    c1499 = this.f5965;
                }
            } while (c1499 != c14992);
        }
        m4316(runnable, executor);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean mo4321(Throwable th) {
        th.getClass();
        if (!f5960.ﾞᴵ(this, (Object) null, new C1509(th))) {
            return false;
        }
        m4313(this);
        return true;
    }
}
