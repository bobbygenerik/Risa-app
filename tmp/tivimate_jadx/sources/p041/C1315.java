package p041;

import p152.AbstractC2444;

/* renamed from: ʽʿ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1315 extends C1301 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Throwable f5033;

    public C1315(Throwable th) {
        this.f5033 = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1315) {
            return AbstractC2444.m5562(this.f5033, ((C1315) obj).f5033);
        }
        return false;
    }

    public final int hashCode() {
        Throwable th = this.f5033;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // p041.C1301
    public final String toString() {
        return "Closed(" + this.f5033 + ')';
    }
}
