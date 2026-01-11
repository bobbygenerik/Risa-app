package androidx.leanback.widget;

import android.graphics.PointF;
import android.view.View;

/* renamed from: androidx.leanback.widget.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0120 extends AbstractC0146 {

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final /* synthetic */ GridLayoutManager f952;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f953;

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean f954;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0120(GridLayoutManager gridLayoutManager, int i, boolean z) {
        super(gridLayoutManager);
        this.f952 = gridLayoutManager;
        this.f953 = i;
        this.f954 = z;
        this.f10247 = -2;
    }

    @Override // androidx.leanback.widget.AbstractC0146
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo622() {
        super.mo622();
        this.f953 = 0;
        View mo904 = this.f10246.f1521.mo904(this.f10247);
        if (mo904 != null) {
            this.f952.m507(mo904, true);
        }
    }

    @Override // p179.C2688
    /* renamed from: ﾞᴵ */
    public final PointF mo573(int i) {
        int i2 = this.f953;
        if (i2 == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f952;
        int i3 = ((gridLayoutManager.f601 & 262144) == 0 ? i2 >= 0 : i2 <= 0) ? 1 : -1;
        return gridLayoutManager.f620 == 0 ? new PointF(i3, 0.0f) : new PointF(0.0f, i3);
    }
}
