package com.google.android.gms.internal.play_billing;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p035.AbstractC1220;
import p121.AbstractC2026;

/* renamed from: com.google.android.gms.internal.play_billing.יⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0593 implements InterfaceFutureC0614 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final AbstractC2026 f2398;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Object f2399;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile C0580 f2401;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile Object f2402;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile C0591 f2403;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final boolean f2397 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Logger f2400 = Logger.getLogger(C0593.class.getName());

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [ˈˊ.ᵔʾ] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    static {
        ?? r3;
        try {
            th = null;
            r3 = new C0545(AtomicReferenceFieldUpdater.newUpdater(C0580.class, Thread.class, "ﹳٴ"), AtomicReferenceFieldUpdater.newUpdater(C0580.class, C0580.class, "ⁱˊ"), AtomicReferenceFieldUpdater.newUpdater(C0593.class, C0580.class, "ʽʽ"), AtomicReferenceFieldUpdater.newUpdater(C0593.class, C0591.class, "ᴵˊ"), AtomicReferenceFieldUpdater.newUpdater(C0593.class, Object.class, "ʾˋ"));
        } catch (Throwable th) {
            th = th;
            r3 = new Object();
        }
        Throwable th2 = th;
        f2398 = r3;
        if (th2 != null) {
            f2400.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        f2399 = new Object();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m2190(C0593 c0593) {
        C0580 c0580;
        AbstractC2026 abstractC2026;
        C0591 c0591;
        C0591 c05912;
        C0591 c05913;
        do {
            c0580 = c0593.f2401;
            abstractC2026 = f2398;
        } while (!abstractC2026.mo2030(c0593, c0580, C0580.f2374));
        while (true) {
            c0591 = null;
            if (c0580 == null) {
                break;
            }
            Thread thread = c0580.f2376;
            if (thread != null) {
                c0580.f2376 = null;
                LockSupport.unpark(thread);
            }
            c0580 = c0580.f2375;
        }
        do {
            c05912 = c0593.f2403;
        } while (!abstractC2026.mo2026(c0593, c05912, C0591.f2392));
        while (true) {
            c05913 = c0591;
            c0591 = c05912;
            if (c0591 == null) {
                break;
            }
            c05912 = c0591.f2393;
            c0591.f2393 = c05913;
        }
        while (c05913 != null) {
            Runnable runnable = c05913.f2395;
            C0591 c05914 = c05913.f2393;
            m2192(runnable, c05913.f2394);
            c05913 = c05914;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final Object m2191(Object obj) {
        if (obj instanceof C0643) {
            Throwable th = ((C0643) obj).f2491;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C0597) {
            throw new ExecutionException(((C0597) obj).f2405);
        }
        if (obj == f2399) {
            return null;
        }
        return obj;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m2192(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f2400.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f2402;
        if (obj != null) {
            return false;
        }
        if (!f2398.mo2029(this, obj, f2397 ? new C0643(new CancellationException("Future.cancel() was called.")) : z ? C0643.f2490 : C0643.f2489)) {
            return false;
        }
        m2190(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f2402;
        if (obj2 != null) {
            return m2191(obj2);
        }
        C0580 c0580 = this.f2401;
        C0580 c05802 = C0580.f2374;
        if (c0580 != c05802) {
            C0580 c05803 = new C0580();
            do {
                AbstractC2026 abstractC2026 = f2398;
                abstractC2026.mo2027(c05803, c0580);
                if (abstractC2026.mo2030(this, c0580, c05803)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m2195(c05803);
                            throw new InterruptedException();
                        }
                        obj = this.f2402;
                    } while (obj == null);
                    return m2191(obj);
                }
                c0580 = this.f2401;
            } while (c0580 != c05802);
        }
        return m2191(this.f2402);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f2402;
        if (obj != null) {
            return m2191(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            C0580 c0580 = this.f2401;
            C0580 c05802 = C0580.f2374;
            if (c0580 != c05802) {
                C0580 c05803 = new C0580();
                do {
                    AbstractC2026 abstractC2026 = f2398;
                    abstractC2026.mo2027(c05803, c0580);
                    if (abstractC2026.mo2030(this, c0580, c05803)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                m2195(c05803);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f2402;
                            if (obj2 != null) {
                                return m2191(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        m2195(c05803);
                    } else {
                        c0580 = this.f2401;
                    }
                } while (c0580 != c05802);
            }
            return m2191(this.f2402);
        }
        while (nanos > 0) {
            Object obj3 = this.f2402;
            if (obj3 != null) {
                return m2191(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String c0593 = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String concat = str.concat(" (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            boolean z = true;
            if (convert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (convert > 0) {
                String str2 = concat + convert + " " + lowerCase;
                if (z) {
                    str2 = str2.concat(",");
                }
                concat = str2.concat(" ");
            }
            if (z) {
                concat = concat + nanos2 + " nanoseconds ";
            }
            str = concat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(str.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(AbstractC1220.m3795(str, " for ", c0593));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2402 instanceof C0643;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f2402 != null;
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f2402 instanceof C0643) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m2194(sb);
        } else {
            try {
                concat = mo2193();
            } catch (RuntimeException e) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (concat != null && !concat.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(concat);
                sb.append("]");
            } else if (isDone()) {
                m2194(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽ, reason: contains not printable characters */
    public String mo2193() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2194(StringBuilder sb) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m2195(C0580 c0580) {
        c0580.f2376 = null;
        while (true) {
            C0580 c05802 = this.f2401;
            if (c05802 != C0580.f2374) {
                C0580 c05803 = null;
                while (c05802 != null) {
                    C0580 c05804 = c05802.f2375;
                    if (c05802.f2376 != null) {
                        c05803 = c05802;
                    } else if (c05803 != null) {
                        c05803.f2375 = c05804;
                        if (c05803.f2376 == null) {
                            break;
                        }
                    } else if (!f2398.mo2030(this, c05802, c05804)) {
                        break;
                    }
                    c05802 = c05804;
                }
                return;
            }
            return;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceFutureC0614
    /* renamed from: ⁱˊ */
    public final void mo2111(Runnable runnable, Executor executor) {
        executor.getClass();
        C0591 c0591 = this.f2403;
        C0591 c05912 = C0591.f2392;
        if (c0591 != c05912) {
            C0591 c05913 = new C0591(runnable, executor);
            do {
                c05913.f2393 = c0591;
                if (f2398.mo2026(this, c0591, c05913)) {
                    return;
                } else {
                    c0591 = this.f2403;
                }
            } while (c0591 != c05912);
        }
        m2192(runnable, executor);
    }
}
