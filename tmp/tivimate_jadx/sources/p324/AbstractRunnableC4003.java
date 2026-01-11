package p324;

import p012.C0902;
import p153.C2475;
import p307.AbstractC3740;

/* renamed from: ᴵי.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC4003 implements Runnable, Comparable, InterfaceC4041 {
    private volatile Object _heap;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f15380;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f15381 = -1;

    public AbstractRunnableC4003(long j) {
        this.f15380 = j;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.f15380 - ((AbstractRunnableC4003) obj).f15380;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    public String toString() {
        return AbstractC3740.m7941(new StringBuilder("Delayed[nanos="), this.f15380, ']');
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2475 m8189() {
        Object obj = this._heap;
        if (obj instanceof C2475) {
            return (C2475) obj;
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m8190(long j, C4045 c4045, AbstractC4005 abstractC4005) {
        synchronized (this) {
            if (this._heap == AbstractC3999.f15375) {
                return 2;
            }
            synchronized (c4045) {
                try {
                    AbstractRunnableC4003[] abstractRunnableC4003Arr = c4045.f9452;
                    AbstractRunnableC4003 abstractRunnableC4003 = abstractRunnableC4003Arr != null ? abstractRunnableC4003Arr[0] : null;
                    if (AbstractC4005.f15384.get(abstractC4005) == 1) {
                        return 1;
                    }
                    if (abstractRunnableC4003 == null) {
                        c4045.f15434 = j;
                    } else {
                        long j2 = abstractRunnableC4003.f15380;
                        if (j2 - j < 0) {
                            j = j2;
                        }
                        if (j - c4045.f15434 > 0) {
                            c4045.f15434 = j;
                        }
                    }
                    long j3 = this.f15380;
                    long j4 = c4045.f15434;
                    if (j3 - j4 < 0) {
                        this.f15380 = j4;
                    }
                    c4045.m5605(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8191(C4045 c4045) {
        if (this._heap == AbstractC3999.f15375) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this._heap = c4045;
    }

    @Override // p324.InterfaceC4041
    /* renamed from: ﹳٴ */
    public final void mo4747() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                C0902 c0902 = AbstractC3999.f15375;
                if (obj == c0902) {
                    return;
                }
                C4045 c4045 = obj instanceof C4045 ? (C4045) obj : null;
                if (c4045 != null) {
                    c4045.m5604(this);
                }
                this._heap = c0902;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
