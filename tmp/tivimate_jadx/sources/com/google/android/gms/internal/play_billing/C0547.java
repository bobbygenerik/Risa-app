package com.google.android.gms.internal.play_billing;

import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import p137.AbstractC2305;

/* renamed from: com.google.android.gms.internal.play_billing.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0547 extends AbstractC0555 implements InterfaceC0602 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceFutureC0614 f2325;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public ScheduledFuture f2326;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m2104(C0547 c0547) {
        C0621 c0621;
        C0621 c06212 = null;
        while (true) {
            c0547.getClass();
            for (C0625 c0625 = AbstractC0555.f2337.ʽʽ(c0547); c0625 != null; c0625 = c0625.f2463) {
                Thread thread = c0625.f2464;
                if (thread != null) {
                    c0625.f2464 = null;
                    LockSupport.unpark(thread);
                }
            }
            InterfaceFutureC0614 interfaceFutureC0614 = c0547.f2325;
            if ((c0547.f2340 instanceof C0616) & (interfaceFutureC0614 != null)) {
                Object obj = c0547.f2340;
                interfaceFutureC0614.cancel((obj instanceof C0616) && ((C0616) obj).f2444);
            }
            ScheduledFuture scheduledFuture = c0547.f2326;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            c0547.f2325 = null;
            c0547.f2326 = null;
            C0621 c06213 = c06212;
            C0621 c06214 = AbstractC0555.f2337.ᴵˊ(c0547);
            C0621 c06215 = c06213;
            while (c06214 != null) {
                C0621 c06216 = c06214.f2454;
                c06214.f2454 = c06215;
                c06215 = c06214;
                c06214 = c06216;
            }
            while (c06215 != null) {
                Runnable runnable = c06215.f2456;
                c0621 = c06215.f2454;
                Objects.requireNonNull(runnable);
                if (runnable instanceof RunnableC0565) {
                    RunnableC0565 runnableC0565 = (RunnableC0565) runnable;
                    c0547 = runnableC0565.f2355;
                    if (c0547.f2340 == runnableC0565) {
                        if (AbstractC0555.f2337.ٴᵢ(c0547, runnableC0565, m2108(runnableC0565.f2356))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = c06215.f2455;
                    Objects.requireNonNull(executor);
                    m2106(runnable, executor);
                }
                c06215 = c0621;
            }
            return;
            c06212 = c0621;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Object m2105(Object obj) {
        if (obj instanceof C0616) {
            Throwable th = ((C0616) obj).f2443;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (!(obj instanceof C0564)) {
            if (obj == AbstractC0555.f2335) {
                return null;
            }
            return obj;
        }
        Throwable th2 = ((C0564) obj).f2354;
        if (th2 != null) {
            throw new ExecutionException(th2);
        }
        AbstractC0555.f2338.m2135().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "getDoneValue", "Failure.exception is unexpectedly null.");
        throw new ExecutionException(C0564.f2352.f2354);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m2106(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            AbstractC0555.f2338.m2135().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m2107(Object obj) {
        return !(obj instanceof RunnableC0565);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Object m2108(InterfaceFutureC0614 interfaceFutureC0614) {
        Object obj;
        Throwable mo2110;
        if (interfaceFutureC0614 instanceof InterfaceC0602) {
            Object obj2 = ((C0547) interfaceFutureC0614).f2340;
            if (obj2 instanceof C0616) {
                C0616 c0616 = (C0616) obj2;
                if (c0616.f2444) {
                    Throwable th = c0616.f2443;
                    obj2 = th != null ? new C0616(th, false) : C0616.f2442;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((interfaceFutureC0614 instanceof AbstractC0620) && (mo2110 = ((AbstractC0620) interfaceFutureC0614).mo2110()) != null) {
            return new C0564(mo2110);
        }
        boolean isCancelled = interfaceFutureC0614.isCancelled();
        boolean z = true;
        if ((!AbstractC0555.f2336) && isCancelled) {
            C0616 c06162 = C0616.f2442;
            Objects.requireNonNull(c06162);
            return c06162;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = interfaceFutureC0614.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new C0564(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new C0564(e);
            } catch (CancellationException e3) {
                return !isCancelled ? new C0564(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(interfaceFutureC0614)), e3)) : new C0616(e3, false);
            } catch (ExecutionException e4) {
                return isCancelled ? new C0616(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(interfaceFutureC0614)), e4), false) : new C0564(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        return isCancelled ? new C0616(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(interfaceFutureC0614))), false) : obj == null ? AbstractC0555.f2335 : obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f2340
            boolean r1 = r0 instanceof com.google.android.gms.internal.play_billing.RunnableC0565
            r2 = 0
            r3 = 1
            if (r0 != 0) goto La
            r4 = r3
            goto Lb
        La:
            r4 = r2
        Lb:
            r1 = r1 | r4
            if (r1 == 0) goto L60
            boolean r1 = com.google.android.gms.internal.play_billing.AbstractC0555.f2336
            if (r1 == 0) goto L1f
            com.google.android.gms.internal.play_billing.ᴵᵔ r1 = new com.google.android.gms.internal.play_billing.ᴵᵔ
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r1.<init>(r4, r8)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.play_billing.ᴵᵔ r1 = com.google.android.gms.internal.play_billing.C0616.f2441
            goto L26
        L24:
            com.google.android.gms.internal.play_billing.ᴵᵔ r1 = com.google.android.gms.internal.play_billing.C0616.f2442
        L26:
            j$.util.Objects.requireNonNull(r1)
        L29:
            r4 = r7
            r5 = r2
        L2b:
            ʽٴ.ˈ r6 = com.google.android.gms.internal.play_billing.AbstractC0555.f2337
            boolean r6 = r6.ٴᵢ(r4, r0, r1)
            if (r6 == 0) goto L57
            m2104(r4)
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.RunnableC0565
            if (r4 == 0) goto L56
            com.google.android.gms.internal.play_billing.ˊʻ r0 = (com.google.android.gms.internal.play_billing.RunnableC0565) r0
            com.google.android.gms.internal.play_billing.ᴵˑ r0 = r0.f2356
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.InterfaceC0602
            if (r4 == 0) goto L53
            r4 = r0
            com.google.android.gms.internal.play_billing.ʿᵢ r4 = (com.google.android.gms.internal.play_billing.C0547) r4
            java.lang.Object r0 = r4.f2340
            if (r0 != 0) goto L4b
            r5 = r3
            goto L4c
        L4b:
            r5 = r2
        L4c:
            boolean r6 = r0 instanceof com.google.android.gms.internal.play_billing.RunnableC0565
            r5 = r5 | r6
            if (r5 == 0) goto L56
            r5 = r3
            goto L2b
        L53:
            r0.cancel(r8)
        L56:
            return r3
        L57:
            java.lang.Object r0 = r4.f2340
            boolean r6 = m2107(r0)
            if (r6 == 0) goto L2b
            return r5
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0547.cancel(boolean):boolean");
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        C0625 c0625 = C0625.f2462;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f2340;
        if ((obj2 != null) && m2107(obj2)) {
            return m2105(obj2);
        }
        C0625 c06252 = this.f2339;
        if (c06252 != c0625) {
            C0625 c06253 = new C0625();
            do {
                ʽٴ.ˈ r5 = AbstractC0555.f2337;
                r5.ˈٴ(c06253, c06252);
                if (r5.ˉٴ(this, c06252, c06253)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m2132(c06253);
                            throw new InterruptedException();
                        }
                        obj = this.f2340;
                    } while (!((obj != null) & m2107(obj)));
                    return m2105(obj);
                }
                c06252 = this.f2339;
            } while (c06252 != c0625);
        }
        Object obj3 = this.f2340;
        Objects.requireNonNull(obj3);
        return m2105(obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c0 -> B:34:0x0080). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r20, java.util.concurrent.TimeUnit r22) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0547.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2340 instanceof C0616;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f2340;
        return (obj != null) & m2107(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r3.isEmpty() != false) goto L34;
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
            java.lang.Object r1 = r6.f2340
            boolean r1 = r1 instanceof com.google.android.gms.internal.play_billing.C0616
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Le2
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.m2109(r0)
            goto Le2
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.f2340
            boolean r4 = r3 instanceof com.google.android.gms.internal.play_billing.RunnableC0565
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L9d
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            com.google.android.gms.internal.play_billing.ˊʻ r3 = (com.google.android.gms.internal.play_billing.RunnableC0565) r3
            com.google.android.gms.internal.play_billing.ᴵˑ r3 = r3.f2356
            if (r3 != r6) goto L7f
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L7d:
            r3 = move-exception
            goto L83
        L7f:
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L83:
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto L8f
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto L8c
            goto L8f
        L8c:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        L8f:
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L99:
            r0.append(r2)
            goto Ld2
        L9d:
            java.lang.String r3 = r6.m2112()     // Catch: java.lang.Throwable -> Lac
            r4 = 0
            if (r3 == 0) goto Laa
            boolean r5 = r3.isEmpty()     // Catch: java.lang.Throwable -> Lac
            if (r5 == 0) goto Lc5
        Laa:
            r3 = r4
            goto Lc5
        Lac:
            r3 = move-exception
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto Lb9
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto Lb6
            goto Lb9
        Lb6:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        Lb9:
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r3 = r5.concat(r3)
        Lc5:
            if (r3 == 0) goto Ld2
            java.lang.String r4 = ", info=["
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
        Ld2:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Le2
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.m2109(r0)
        Le2:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0547.toString():java.lang.String");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m2109(StringBuilder sb) {
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
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (obj == null) {
            sb.append("null");
        } else if (obj == this) {
            sb.append("this future");
        } else {
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0620
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Throwable mo2110() {
        if (!(this instanceof InterfaceC0602)) {
            return null;
        }
        Object obj = this.f2340;
        if (obj instanceof C0564) {
            return ((C0564) obj).f2354;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceFutureC0614
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2111(Runnable runnable, Executor executor) {
        C0621 c0621;
        C0621 c06212 = C0621.f2453;
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        if (!isDone() && (c0621 = this.f2341) != c06212) {
            C0621 c06213 = new C0621(runnable, executor);
            do {
                c06213.f2454 = c0621;
                if (AbstractC0555.f2337.ˊʻ(this, c0621, c06213)) {
                    return;
                } else {
                    c0621 = this.f2341;
                }
            } while (c0621 != c06212);
        }
        m2106(runnable, executor);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m2112() {
        InterfaceFutureC0614 interfaceFutureC0614 = this.f2325;
        ScheduledFuture scheduledFuture = this.f2326;
        if (interfaceFutureC0614 == null) {
            return null;
        }
        String m5378 = AbstractC2305.m5378("inputFuture=[", interfaceFutureC0614.toString(), "]");
        if (scheduledFuture == null) {
            return m5378;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return m5378;
        }
        return m5378 + ", remaining delay=[" + delay + " ms]";
    }
}
