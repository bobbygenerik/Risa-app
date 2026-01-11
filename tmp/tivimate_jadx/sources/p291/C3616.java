package p291;

import java.util.List;

/* renamed from: ٴᴵ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3616 extends AbstractC3621 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final List f14152;

    public C3616(C3613 c3613, long j, long j2, long j3, long j4, List list, long j5, List list2, long j6, long j7) {
        super(c3613, j, j2, j3, j4, list, j5, j6, j7);
        this.f14152 = list2;
    }

    @Override // p291.AbstractC3621
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo7580() {
        return true;
    }

    @Override // p291.AbstractC3621
    /* renamed from: ˈ */
    public final long mo7570(long j) {
        return this.f14152.size();
    }

    @Override // p291.AbstractC3621
    /* renamed from: ᵔᵢ */
    public final C3613 mo7571(C3619 c3619, long j) {
        return (C3613) this.f14152.get((int) (j - this.f14168));
    }
}
