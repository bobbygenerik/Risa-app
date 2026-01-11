package androidx.leanback.widget;

import android.graphics.PointF;
import p179.AbstractC2669;

/* renamed from: androidx.leanback.widget.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0087 extends AbstractC0146 {

    /* renamed from: יـ, reason: contains not printable characters */
    public final /* synthetic */ GridLayoutManager f843;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0087(GridLayoutManager gridLayoutManager) {
        super(gridLayoutManager);
        this.f843 = gridLayoutManager;
    }

    @Override // p179.C2688
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final PointF mo573(int i) {
        if (this.f10246.f1521.m5974() == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f843;
        int m5963 = AbstractC2669.m5963(gridLayoutManager.m5981(0));
        int i2 = ((gridLayoutManager.f601 & 262144) == 0 ? i >= m5963 : i <= m5963) ? 1 : -1;
        return gridLayoutManager.f620 == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }
}
