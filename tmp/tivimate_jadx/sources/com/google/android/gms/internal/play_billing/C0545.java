package com.google.android.gms.internal.play_billing;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p121.AbstractC2026;

/* renamed from: com.google.android.gms.internal.play_billing.ʿʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0545 extends AbstractC2026 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f2318;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f2319;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f2320;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f2321;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f2322;

    public C0545(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f2318 = atomicReferenceFieldUpdater;
        this.f2319 = atomicReferenceFieldUpdater2;
        this.f2321 = atomicReferenceFieldUpdater3;
        this.f2322 = atomicReferenceFieldUpdater4;
        this.f2320 = atomicReferenceFieldUpdater5;
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʼˈ */
    public final boolean mo2026(C0593 c0593, C0591 c0591, C0591 c05912) {
        return ﹳˋ.ٴﹶ.ˈʿ(this.f2322, c0593, c0591, c05912);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˈʿ */
    public final void mo2027(C0580 c0580, C0580 c05802) {
        this.f2319.lazySet(c0580, c05802);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˋᵔ */
    public final void mo2028(C0580 c0580, Thread thread) {
        this.f2318.lazySet(c0580, thread);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ـˏ */
    public final boolean mo2029(C0593 c0593, Object obj, Object obj2) {
        return ﹳˋ.ٴﹶ.ˈʿ(this.f2320, c0593, obj, obj2);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ﹳـ */
    public final boolean mo2030(C0593 c0593, C0580 c0580, C0580 c05802) {
        return ﹳˋ.ٴﹶ.ˈʿ(this.f2321, c0593, c0580, c05802);
    }
}
