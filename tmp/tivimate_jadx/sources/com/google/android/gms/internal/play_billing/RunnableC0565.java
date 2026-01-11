package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0565 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0547 f2355;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceFutureC0614 f2356;

    public RunnableC0565(C0547 c0547, InterfaceFutureC0614 interfaceFutureC0614) {
        this.f2355 = c0547;
        this.f2356 = interfaceFutureC0614;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2355.f2340 != this) {
            return;
        }
        InterfaceFutureC0614 interfaceFutureC0614 = this.f2356;
        if (AbstractC0555.f2337.ٴᵢ(this.f2355, this, C0547.m2108(interfaceFutureC0614))) {
            C0547.m2104(this.f2355);
        }
    }
}
