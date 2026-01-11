package com.google.android.gms.internal.play_billing;

import p121.AbstractC2026;

/* renamed from: com.google.android.gms.internal.play_billing.ʻˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0521 extends AbstractC2026 {
    @Override // p121.AbstractC2026
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean mo2026(C0593 c0593, C0591 c0591, C0591 c05912) {
        synchronized (c0593) {
            try {
                if (c0593.f2403 != c0591) {
                    return false;
                }
                c0593.f2403 = c05912;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void mo2027(C0580 c0580, C0580 c05802) {
        c0580.f2375 = c05802;
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void mo2028(C0580 c0580, Thread thread) {
        c0580.f2376 = thread;
    }

    @Override // p121.AbstractC2026
    /* renamed from: ـˏ, reason: contains not printable characters */
    public final boolean mo2029(C0593 c0593, Object obj, Object obj2) {
        synchronized (c0593) {
            try {
                if (c0593.f2402 != obj) {
                    return false;
                }
                c0593.f2402 = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final boolean mo2030(C0593 c0593, C0580 c0580, C0580 c05802) {
        synchronized (c0593) {
            try {
                if (c0593.f2401 != c0580) {
                    return false;
                }
                c0593.f2401 = c05802;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
