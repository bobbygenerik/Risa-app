package p445;

import androidx.work.impl.workers.ConstraintTrackingWorker;
import p316.AbstractC3902;
import p322.AbstractC3967;

/* renamed from: ﹶﹳ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5203 extends AbstractC3902 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC3967 f19548;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ ConstraintTrackingWorker f19549;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f19550;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public /* synthetic */ Object f19551;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5203(ConstraintTrackingWorker constraintTrackingWorker, AbstractC3902 abstractC3902) {
        super(abstractC3902);
        this.f19549 = constraintTrackingWorker;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        this.f19551 = obj;
        this.f19550 |= Integer.MIN_VALUE;
        return ConstraintTrackingWorker.m1040(this.f19549, this);
    }
}
