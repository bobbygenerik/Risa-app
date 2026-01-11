package p137;

import android.widget.AbsListView;

/* renamed from: ˉˆ.ـˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2298 implements AbsListView.OnScrollListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C2254 f8980;

    public C2298(C2254 c2254) {
        this.f8980 = c2254;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        C2254 c2254 = this.f8980;
        RunnableC2309 runnableC2309 = c2254.f8843;
        C2331 c2331 = c2254.f8835;
        if (i != 1 || c2331.getInputMethodMode() == 2 || c2331.getContentView() == null) {
            return;
        }
        c2254.f8839.removeCallbacks(runnableC2309);
        runnableC2309.run();
    }
}
