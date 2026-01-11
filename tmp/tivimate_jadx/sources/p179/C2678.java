package p179;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: ˋˋ.ʽⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2678 extends AbstractC2691 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C2671 f10200;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f10201 = false;

    public C2678(C2671 c2671) {
        this.f10200 = c2671;
    }

    @Override // p179.AbstractC2691
    /* renamed from: ⁱˊ */
    public final void mo2403(RecyclerView recyclerView, int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        this.f10201 = true;
    }

    @Override // p179.AbstractC2691
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo6027(int i) {
        if (i == 0 && this.f10201) {
            this.f10201 = false;
            this.f10200.m6002();
        }
    }
}
