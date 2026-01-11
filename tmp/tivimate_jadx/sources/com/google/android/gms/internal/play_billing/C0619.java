package com.google.android.gms.internal.play_billing;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: com.google.android.gms.internal.play_billing.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0619 extends ʽٴ.ˈ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f2448 = AtomicReferenceFieldUpdater.newUpdater(C0625.class, Thread.class, "ﹳٴ");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f2449 = AtomicReferenceFieldUpdater.newUpdater(C0625.class, C0625.class, "ⁱˊ");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f2450 = AtomicReferenceFieldUpdater.newUpdater(AbstractC0555.class, C0625.class, "ʽʽ");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f2452 = AtomicReferenceFieldUpdater.newUpdater(AbstractC0555.class, C0621.class, "ᴵˊ");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f2451 = AtomicReferenceFieldUpdater.newUpdater(AbstractC0555.class, Object.class, "ʾˋ");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0625 m2220(C0547 c0547) {
        return (C0625) f2450.getAndSet(c0547, C0625.f2462);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m2221(C0625 c0625, C0625 c06252) {
        f2449.lazySet(c0625, c06252);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m2222(AbstractC0555 abstractC0555, C0625 c0625, C0625 c06252) {
        return ˈˆ.ﾞᴵ.ᐧﾞ(f2450, abstractC0555, c0625, c06252);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m2223(C0547 c0547, C0621 c0621, C0621 c06212) {
        return ˈˆ.ﾞᴵ.ᐧﾞ(f2452, c0547, c0621, c06212);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m2224(AbstractC0555 abstractC0555, Object obj, Object obj2) {
        return ˈˆ.ﾞᴵ.ᐧﾞ(f2451, abstractC0555, obj, obj2);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0621 m2225(C0547 c0547) {
        return (C0621) f2452.getAndSet(c0547, C0621.f2453);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m2226(C0625 c0625, Thread thread) {
        f2448.lazySet(c0625, thread);
    }
}
