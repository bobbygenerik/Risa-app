package p011;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p179.AbstractC2673;
import p179.AbstractC2704;

/* renamed from: ʻᐧ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0878 extends AbstractC2704 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f3730 = true;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0864 f3731;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3732;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Drawable f3733;

    public C0878(AbstractC0864 abstractC0864) {
        this.f3731 = abstractC0864;
    }

    @Override // p179.AbstractC2704
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo3085(Canvas canvas, RecyclerView recyclerView) {
        if (this.f3733 == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (m3086(childAt, recyclerView)) {
                int height = childAt.getHeight() + ((int) childAt.getY());
                this.f3733.setBounds(0, height, width, this.f3732 + height);
                this.f3733.draw(canvas);
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m3086(View view, RecyclerView recyclerView) {
        AbstractC2673 m946 = recyclerView.m946(view);
        if (!(m946 instanceof C0856) || !((C0856) m946).f3658) {
            return false;
        }
        boolean z = this.f3730;
        int indexOfChild = recyclerView.indexOfChild(view);
        if (indexOfChild >= recyclerView.getChildCount() - 1) {
            return z;
        }
        AbstractC2673 m9462 = recyclerView.m946(recyclerView.getChildAt(indexOfChild + 1));
        return (m9462 instanceof C0856) && ((C0856) m9462).f3660;
    }

    @Override // p179.AbstractC2704
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3087(Rect rect, View view, RecyclerView recyclerView) {
        if (m3086(view, recyclerView)) {
            rect.bottom = this.f3732;
        }
    }
}
