package p244;

import androidx.leanback.widget.AbstractC0096;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.picker.Picker;
import androidx.recyclerview.widget.RecyclerView;
import p179.AbstractC2673;

/* renamed from: י.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3251 extends AbstractC0096 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ Picker f12511;

    public C3251(Picker picker) {
        this.f12511 = picker;
    }

    @Override // androidx.leanback.widget.AbstractC0096
    /* renamed from: ﹳٴ */
    public final void mo588(RecyclerView recyclerView, AbstractC2673 abstractC2673, int i) {
        Picker picker = this.f12511;
        int indexOf = picker.f818.indexOf((VerticalGridView) recyclerView);
        picker.m566(indexOf);
        if (abstractC2673 != null) {
            picker.mo558(indexOf, ((C3248) picker.f808.get(indexOf)).f12504 + i);
        }
    }
}
