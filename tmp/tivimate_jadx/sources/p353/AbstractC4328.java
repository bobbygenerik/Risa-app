package p353;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* renamed from: ᵔʾ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4328 implements InterfaceC4305, InterfaceC4309, AdapterView.OnItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Rect f16066;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m8754(ListAdapter listAdapter, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = listAdapter.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i4, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (C4321) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C4321) listAdapter).f16025.m8730((MenuItem) listAdapter.getItem(i), this, !(this instanceof ViewOnKeyListenerC4313) ? 0 : 4);
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʼˎ */
    public final void mo5352(Context context, MenuC4312 menuC4312) {
    }

    /* renamed from: ʼᐧ */
    public abstract void mo8735(int i);

    /* renamed from: ˉˆ */
    public abstract void mo8737(boolean z);

    /* renamed from: ˏי */
    public abstract void mo8738(int i);

    /* renamed from: יـ */
    public abstract void mo8739(boolean z);

    @Override // p353.InterfaceC4309
    /* renamed from: ٴﹶ */
    public final boolean mo5356(C4329 c4329) {
        return false;
    }

    /* renamed from: ᵔʾ */
    public abstract void mo8740(View view);

    /* renamed from: ᵔﹳ */
    public abstract void mo8741(int i);

    @Override // p353.InterfaceC4309
    /* renamed from: ⁱˊ */
    public final boolean mo5358(C4329 c4329) {
        return false;
    }

    /* renamed from: ﹳᐧ */
    public abstract void mo8742(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: ﾞʻ */
    public abstract void mo8743(MenuC4312 menuC4312);
}
