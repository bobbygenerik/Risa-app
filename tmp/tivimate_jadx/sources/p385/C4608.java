package p385;

import p051.C1395;

/* renamed from: ⁱʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4608 extends C1395 implements Comparable {

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f17194;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C4608 c4608 = (C4608) obj;
        if (m3177(4) != c4608.m3177(4)) {
            return m3177(4) ? 1 : -1;
        }
        long j = this.f18671 - c4608.f18671;
        if (j == 0) {
            j = this.f17194 - c4608.f17194;
            if (j == 0) {
                return 0;
            }
        }
        return j > 0 ? 1 : -1;
    }
}
