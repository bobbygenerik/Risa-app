package p445;

import androidx.work.impl.workers.ConstraintTrackingWorker;
import p316.AbstractC3902;

/* renamed from: ﹶﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5207 extends AbstractC3902 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public /* synthetic */ Object f19558;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f19559;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ ConstraintTrackingWorker f19560;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5207(ConstraintTrackingWorker constraintTrackingWorker, AbstractC3902 abstractC3902) {
        super(abstractC3902);
        this.f19560 = constraintTrackingWorker;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        this.f19558 = obj;
        this.f19559 |= Integer.MIN_VALUE;
        return ConstraintTrackingWorker.m1039(this.f19560, null, null, null, this);
    }
}
