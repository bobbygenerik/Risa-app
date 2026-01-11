package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0624 extends ʽٴ.ˈ {
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0625 m2228(C0547 c0547) {
        C0625 c0625;
        C0625 c06252 = C0625.f2462;
        synchronized (c0547) {
            try {
                c0625 = c0547.f2339;
                if (c0625 != c06252) {
                    c0547.f2339 = c06252;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0625;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m2229(C0625 c0625, C0625 c06252) {
        c0625.f2463 = c06252;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m2230(AbstractC0555 abstractC0555, C0625 c0625, C0625 c06252) {
        synchronized (abstractC0555) {
            try {
                if (abstractC0555.f2339 != c0625) {
                    return false;
                }
                abstractC0555.f2339 = c06252;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m2231(C0547 c0547, C0621 c0621, C0621 c06212) {
        synchronized (c0547) {
            try {
                if (c0547.f2341 != c0621) {
                    return false;
                }
                c0547.f2341 = c06212;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m2232(AbstractC0555 abstractC0555, Object obj, Object obj2) {
        synchronized (abstractC0555) {
            try {
                if (abstractC0555.f2340 != obj) {
                    return false;
                }
                abstractC0555.f2340 = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0621 m2233(C0547 c0547) {
        C0621 c0621;
        C0621 c06212 = C0621.f2453;
        synchronized (c0547) {
            try {
                c0621 = c0547.f2341;
                if (c0621 != c06212) {
                    c0547.f2341 = c06212;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0621;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m2234(C0625 c0625, Thread thread) {
        c0625.f2464 = thread;
    }
}
