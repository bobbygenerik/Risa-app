package p179;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: ˋˋ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2714 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10321;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10322;

    public /* synthetic */ RunnableC2714(RecyclerView recyclerView, int i) {
        this.f10321 = i;
        this.f10322 = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10321) {
            case 0:
                RecyclerView recyclerView = this.f10322;
                if (!recyclerView.f1479 || recyclerView.isLayoutRequested()) {
                    return;
                }
                if (!recyclerView.f1499) {
                    recyclerView.requestLayout();
                    return;
                } else if (recyclerView.f1471) {
                    recyclerView.f1480 = true;
                    return;
                } else {
                    recyclerView.m936();
                    return;
                }
            default:
                RecyclerView recyclerView2 = this.f10322;
                AbstractC2722 abstractC2722 = recyclerView2.f1492;
                if (abstractC2722 != null) {
                    abstractC2722.m6106();
                }
                recyclerView2.f1501 = false;
                return;
        }
    }
}
