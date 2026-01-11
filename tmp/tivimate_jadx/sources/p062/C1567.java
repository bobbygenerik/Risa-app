package p062;

import p307.AbstractC3740;
import p438.AbstractC5176;

/* renamed from: ʾˈ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1567 {
    public static final C1558 Companion = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f6129;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f6130;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f6131;

    public /* synthetic */ C1567(int i, long j, long j2, long j3) {
        if (1 != (i & 1)) {
            AbstractC5176.m10159(i, 1, C1533.f6022.mo4337());
            throw null;
        }
        this.f6131 = j;
        this.f6130 = (i & 2) == 0 ? 1000 * j : j2;
        if ((i & 4) == 0) {
            this.f6129 = j / 1000;
        } else {
            this.f6129 = j3;
        }
    }

    public C1567(long j) {
        this.f6131 = j;
        long j2 = 1000;
        this.f6130 = j * j2;
        this.f6129 = j / j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1567) && this.f6131 == ((C1567) obj).f6131;
    }

    public final int hashCode() {
        long j = this.f6131;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return AbstractC3740.m7941(new StringBuilder("Time(ms="), this.f6131, ')');
    }
}
