package com.google.android.gms.internal.play_billing;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.google.android.gms.internal.play_billing.ˎᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0579 implements InterfaceFutureC0614 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final WeakReference f2372;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0633 f2373 = new C0633(this);

    public C0579(C0536 c0536) {
        this.f2372 = new WeakReference(c0536);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        C0536 c0536 = (C0536) this.f2372.get();
        boolean cancel = this.f2373.cancel(z);
        if (!cancel || c0536 == null) {
            return cancel;
        }
        c0536.f2310 = null;
        c0536.f2309 = null;
        c0536.f2307.m2090(null);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f2373.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f2373.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2373.f2402 instanceof C0643;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f2373.isDone();
    }

    public final String toString() {
        return this.f2373.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceFutureC0614
    /* renamed from: ⁱˊ */
    public final void mo2111(Runnable runnable, Executor executor) {
        this.f2373.mo2111(runnable, executor);
    }
}
