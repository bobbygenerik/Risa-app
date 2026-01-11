package p121;

import com.google.android.gms.internal.play_billing.C0559;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p160.AbstractC2549;
import ﹳٴ.ﹳٴ;

/* renamed from: ˈˊ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2021 extends AbstractC2549 implements InterfaceFutureC2031 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final boolean f7916;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final ﹳٴ f7917;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Object f7918;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0559 f7919;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile C2032 f7920;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile Object f7921;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile C2018 f7922;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [ﹳٴ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    static {
        boolean z;
        Throwable th;
        ?? c2020;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f7916 = z;
        f7919 = new C0559();
        Throwable th2 = null;
        try {
            th = null;
            c2020 = new Object();
        } catch (Error | Exception e) {
            th = e;
            try {
                c2020 = new C2020(AtomicReferenceFieldUpdater.newUpdater(C2032.class, Thread.class, "ﹳٴ"), AtomicReferenceFieldUpdater.newUpdater(C2032.class, C2032.class, "ⁱˊ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2021.class, C2032.class, "ʽʽ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2021.class, C2018.class, "ᴵˊ"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2021.class, Object.class, "ʾˋ"));
            } catch (Error | Exception e2) {
                th2 = e2;
                c2020 = new Object();
            }
        }
        f7917 = c2020;
        if (th2 != null) {
            C0559 c0559 = f7919;
            Logger m2136 = c0559.m2136();
            Level level = Level.SEVERE;
            m2136.log(level, "UnsafeAtomicHelper is broken!", th);
            c0559.m2136().log(level, "SafeAtomicHelper is broken!", th2);
        }
        f7918 = new Object();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5012(AbstractC2021 abstractC2021) {
        for (C2032 c2032 = f7917.ʽﹳ(abstractC2021); c2032 != null; c2032 = c2032.f7945) {
            Thread thread = c2032.f7946;
            if (thread != null) {
                c2032.f7946 = null;
                LockSupport.unpark(thread);
            }
        }
        C2018 c2018 = f7917.ˏי(abstractC2021);
        C2018 c20182 = null;
        while (c2018 != null) {
            C2018 c20183 = c2018.f7908;
            c2018.f7908 = c20182;
            c20182 = c2018;
            c2018 = c20183;
        }
        while (c20182 != null) {
            C2018 c20184 = c20182.f7908;
            Runnable runnable = c20182.f7910;
            Objects.requireNonNull(runnable);
            Executor executor = c20182.f7909;
            Objects.requireNonNull(executor);
            m5015(runnable, executor);
            c20182 = c20184;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Object m5013(Object obj) {
        if (obj instanceof C2030) {
            Throwable th = ((C2030) obj).f7943;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C2029) {
            throw new ExecutionException(((C2029) obj).f7940);
        }
        if (obj == f7918) {
            return null;
        }
        return obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Object m5014(AbstractC2021 abstractC2021) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = abstractC2021.get();
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
    public static void m5015(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            f7919.m2136().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        C2030 c2030;
        Object obj = this.f7921;
        if (obj != null) {
            return false;
        }
        if (f7916) {
            c2030 = new C2030(new CancellationException("Future.cancel() was called."), z);
        } else {
            c2030 = z ? C2030.f7942 : C2030.f7941;
            Objects.requireNonNull(c2030);
        }
        if (!f7917.ⁱˊ(this, obj, c2030)) {
            return false;
        }
        m5012(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        Object obj;
        C2032 c2032 = C2032.f7944;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f7921;
        if (obj2 != null) {
            return m5013(obj2);
        }
        C2032 c20322 = this.f7920;
        if (c20322 != c2032) {
            C2032 c20323 = new C2032();
            do {
                ﹳٴ r3 = f7917;
                r3.ٴᵢ(c20323, c20322);
                if (r3.ʽ(this, c20322, c20323)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m5018(c20323);
                            throw new InterruptedException();
                        }
                        obj = this.f7921;
                    } while (obj == null);
                    return m5013(obj);
                }
                c20322 = this.f7920;
            } while (c20322 != c2032);
        }
        Object obj3 = this.f7921;
        Objects.requireNonNull(obj3);
        return m5013(obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ab  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x009e -> B:28:0x006b). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object get(long r18, java.util.concurrent.TimeUnit r20) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p121.AbstractC2021.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f7921 instanceof C2030;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f7921 != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
    
        if (r3.isEmpty() != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            boolean r1 = r6.isCancelled()
            java.lang.String r2 = "]"
            if (r1 == 0) goto L4f
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto La4
        L4f:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L59
            r6.m5017(r0)
            goto La4
        L59:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.String r3 = r6.m5016()     // Catch: java.lang.StackOverflowError -> L6f java.lang.Exception -> L71
            if (r3 == 0) goto L73
            boolean r4 = r3.isEmpty()     // Catch: java.lang.StackOverflowError -> L6f java.lang.Exception -> L71
            if (r4 == 0) goto L87
            goto L73
        L6f:
            r3 = move-exception
            goto L75
        L71:
            r3 = move-exception
            goto L75
        L73:
            r3 = 0
            goto L87
        L75:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Exception thrown from implementation: "
            r4.<init>(r5)
            java.lang.Class r3 = r3.getClass()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
        L87:
            if (r3 == 0) goto L94
            java.lang.String r4 = ", info=["
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
        L94:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto La4
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.m5017(r0)
        La4:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p121.AbstractC2021.toString():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String m5016() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5017(StringBuilder sb) {
        try {
            Object m5014 = m5014(this);
            sb.append("SUCCESS, result=[");
            m5019(sb, m5014);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m5018(C2032 c2032) {
        c2032.f7946 = null;
        while (true) {
            C2032 c20322 = this.f7920;
            if (c20322 == C2032.f7944) {
                return;
            }
            C2032 c20323 = null;
            while (c20322 != null) {
                C2032 c20324 = c20322.f7945;
                if (c20322.f7946 != null) {
                    c20323 = c20322;
                } else if (c20323 != null) {
                    c20323.f7945 = c20324;
                    if (c20323.f7946 == null) {
                        break;
                    }
                } else if (!f7917.ʽ(this, c20322, c20324)) {
                    break;
                }
                c20322 = c20324;
            }
            return;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5019(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    @Override // p121.InterfaceFutureC2031
    /* renamed from: ﹳٴ */
    public void mo4312(Runnable runnable, Executor executor) {
        C2018 c2018;
        C2018 c20182 = C2018.f7907;
        if (!isDone() && (c2018 = this.f7922) != c20182) {
            C2018 c20183 = new C2018(runnable, executor);
            do {
                c20183.f7908 = c2018;
                if (f7917.ﹳٴ(this, c2018, c20183)) {
                    return;
                } else {
                    c2018 = this.f7922;
                }
            } while (c2018 != c20182);
        }
        m5015(runnable, executor);
    }
}
