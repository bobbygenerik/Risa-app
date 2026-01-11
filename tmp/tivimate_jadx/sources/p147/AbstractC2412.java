package p147;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.leanback.widget.C0121;
import java.util.WeakHashMap;
import p039.AbstractC1291;
import p186.AbstractC2823;

/* renamed from: ˉᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2412 extends AbstractC1291 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C0121 f9321;

    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, androidx.leanback.widget.יﹳ] */
    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        mo2332(coordinatorLayout, view, i);
        if (this.f9321 == null) {
            ?? obj = new Object();
            obj.f955 = view;
            this.f9321 = obj;
        }
        C0121 c0121 = this.f9321;
        View view2 = (View) c0121.f955;
        c0121.f956 = view2.getTop();
        c0121.f957 = view2.getLeft();
        C0121 c01212 = this.f9321;
        View view3 = (View) c01212.f955;
        int top = 0 - (view3.getTop() - c01212.f956);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - c01212.f957));
        return true;
    }

    /* renamed from: ﹳᐧ */
    public void mo2332(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.m110(view, i);
    }
}
