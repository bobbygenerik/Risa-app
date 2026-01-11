package p179;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p010.AbstractC0844;
import p012.C0882;
import p186.AbstractC2823;

/* renamed from: ˋˋ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2719 extends AbstractC2684 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10351;

    public C2719(RecyclerView recyclerView) {
        this.f10351 = recyclerView;
    }

    @Override // p179.AbstractC2684
    /* renamed from: ʽ */
    public final void mo3070(int i, int i2) {
        RecyclerView recyclerView = this.f10351;
        recyclerView.m969(null);
        C0882 c0882 = recyclerView.f1514;
        ArrayList arrayList = (ArrayList) c0882.f3740;
        if (i2 < 1) {
            return;
        }
        arrayList.add(c0882.m3131(null, 1, i, i2));
        c0882.f3744 |= 1;
        if (arrayList.size() == 1) {
            m6100();
        }
    }

    @Override // p179.AbstractC2684
    /* renamed from: ˈ */
    public final void mo3071(int i, int i2) {
        RecyclerView recyclerView = this.f10351;
        recyclerView.m969(null);
        C0882 c0882 = recyclerView.f1514;
        ArrayList arrayList = (ArrayList) c0882.f3740;
        if (i == i2) {
            return;
        }
        arrayList.add(c0882.m3131(null, 8, i, i2));
        c0882.f3744 |= 8;
        if (arrayList.size() == 1) {
            m6100();
        }
    }

    @Override // p179.AbstractC2684
    /* renamed from: ˑﹳ */
    public final void mo3072(int i, int i2) {
        RecyclerView recyclerView = this.f10351;
        recyclerView.m969(null);
        C0882 c0882 = recyclerView.f1514;
        ArrayList arrayList = (ArrayList) c0882.f3740;
        if (i2 < 1) {
            return;
        }
        arrayList.add(c0882.m3131(null, 2, i, i2));
        c0882.f3744 |= 2;
        if (arrayList.size() == 1) {
            m6100();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6100() {
        RecyclerView recyclerView = this.f10351;
        if (!recyclerView.f1526 || !recyclerView.f1499) {
            recyclerView.f1510 = true;
            recyclerView.requestLayout();
        } else {
            RunnableC2714 runnableC2714 = recyclerView.f1519;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            recyclerView.postOnAnimation(runnableC2714);
        }
    }

    @Override // p179.AbstractC2684
    /* renamed from: ⁱˊ */
    public final void mo3074(int i, int i2, Object obj) {
        RecyclerView recyclerView = this.f10351;
        recyclerView.m969(null);
        C0882 c0882 = recyclerView.f1514;
        ArrayList arrayList = (ArrayList) c0882.f3740;
        if (i2 < 1) {
            return;
        }
        arrayList.add(c0882.m3131(obj, 4, i, i2));
        c0882.f3744 |= 4;
        if (arrayList.size() == 1) {
            m6100();
        }
    }

    @Override // p179.AbstractC2684
    /* renamed from: ﹳٴ */
    public final void mo3075() {
        RecyclerView recyclerView = this.f10351;
        recyclerView.m969(null);
        recyclerView.f1516.f10382 = true;
        recyclerView.m972(true);
        if (recyclerView.f1514.m3138()) {
            return;
        }
        recyclerView.requestLayout();
    }

    @Override // p179.AbstractC2684
    /* renamed from: ﾞᴵ */
    public final void mo6032() {
        AbstractC2727 abstractC2727;
        RecyclerView recyclerView = this.f10351;
        if (recyclerView.f1478 == null || (abstractC2727 = recyclerView.f1474) == null) {
            return;
        }
        int m3018 = AbstractC0844.m3018(abstractC2727.f10417);
        if (m3018 != 1) {
            if (m3018 == 2) {
                return;
            }
        } else if (abstractC2727.mo611() <= 0) {
            return;
        }
        recyclerView.requestLayout();
    }
}
