package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* renamed from: com.google.android.gms.internal.play_billing.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0638 implements InterfaceFutureC0614 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0559 f2476 = new C0559(C0638.class);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f2477;

    public C0638(Object obj) {
        this.f2477 = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f2477;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f2477;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f2477.toString() + "]]";
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceFutureC0614
    /* renamed from: ⁱˊ */
    public final void mo2111(Runnable runnable, Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            f2476.m2135().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", "RuntimeException while executing runnable " + runnable.toString() + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }
}
