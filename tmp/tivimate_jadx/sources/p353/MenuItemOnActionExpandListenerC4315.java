package p353;

import android.view.MenuItem;

/* renamed from: ᵔʾ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class MenuItemOnActionExpandListenerC4315 implements MenuItem.OnActionExpandListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ MenuItemC4324 f16002;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MenuItem.OnActionExpandListener f16003;

    public MenuItemOnActionExpandListenerC4315(MenuItemC4324 menuItemC4324, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f16002 = menuItemC4324;
        this.f16003 = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f16003.onMenuItemActionCollapse(this.f16002.m7253(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f16003.onMenuItemActionExpand(this.f16002.m7253(menuItem));
    }
}
