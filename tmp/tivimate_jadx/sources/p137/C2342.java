package p137;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import p353.C4321;
import p353.C4329;
import p353.MenuC4312;

/* renamed from: ˉˆ.ﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2342 extends C2249 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int f9083;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public InterfaceC2340 f9084;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C4329 f9085;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f9086;

    public C2342(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f9083 = 21;
            this.f9086 = 22;
        } else {
            this.f9083 = 22;
            this.f9086 = 21;
        }
    }

    @Override // p137.C2249, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        C4321 c4321;
        int i;
        int pointToPosition;
        int i2;
        if (this.f9084 != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                c4321 = (C4321) headerViewListAdapter.getWrappedAdapter();
            } else {
                c4321 = (C4321) adapter;
                i = 0;
            }
            C4329 item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= c4321.getCount()) ? null : c4321.getItem(i2);
            C4329 c4329 = this.f9085;
            if (c4329 != item) {
                MenuC4312 menuC4312 = c4321.f16025;
                if (c4329 != null) {
                    this.f9084.mo5350(menuC4312, c4329);
                }
                this.f9085 = item;
                if (item != null) {
                    this.f9084.mo5351(menuC4312, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.f9083) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.f9086) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (C4321) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C4321) adapter).f16025.m8723(false);
        return true;
    }

    public void setHoverListener(InterfaceC2340 interfaceC2340) {
        this.f9084 = interfaceC2340;
    }

    @Override // p137.C2249, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
