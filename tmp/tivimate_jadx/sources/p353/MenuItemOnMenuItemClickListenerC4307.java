package p353;

import android.view.MenuItem;

/* renamed from: ᵔʾ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class MenuItemOnMenuItemClickListenerC4307 implements MenuItem.OnMenuItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final MenuItem.OnMenuItemClickListener f15941;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ MenuItemC4324 f15942;

    public MenuItemOnMenuItemClickListenerC4307(MenuItemC4324 menuItemC4324, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f15942 = menuItemC4324;
        this.f15941 = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f15941.onMenuItemClick(this.f15942.m7253(menuItem));
    }
}
