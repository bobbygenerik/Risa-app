package p353;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p307.AbstractC3740;

/* renamed from: ᵔʾ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class SubMenuC4310 extends MenuC4312 implements SubMenu {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4329 f15946;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final MenuC4312 f15947;

    public SubMenuC4310(Context context, MenuC4312 menuC4312, C4329 c4329) {
        super(context);
        this.f15947 = menuC4312;
        this.f15946 = c4329;
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f15946;
    }

    @Override // p353.MenuC4312, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.f15947.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        m8724(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        m8724(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        m8724(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        m8724(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        m8724(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f15946.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f15946.setIcon(drawable);
        return this;
    }

    @Override // p353.MenuC4312, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f15947.setQwertyMode(z);
    }

    @Override // p353.MenuC4312
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String mo8712() {
        C4329 c4329 = this.f15946;
        int i = c4329 != null ? c4329.f16092 : 0;
        if (i == 0) {
            return null;
        }
        return AbstractC3740.m7932(i, "android:menu:actionviewstates:");
    }

    @Override // p353.MenuC4312
    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean mo8713(C4329 c4329) {
        return this.f15947.mo8713(c4329);
    }

    @Override // p353.MenuC4312
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean mo8714() {
        return this.f15947.mo8714();
    }

    @Override // p353.MenuC4312
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean mo8715() {
        return this.f15947.mo8715();
    }

    @Override // p353.MenuC4312
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo8716(MenuC4312 menuC4312, MenuItem menuItem) {
        return super.mo8716(menuC4312, menuItem) || this.f15947.mo8716(menuC4312, menuItem);
    }

    @Override // p353.MenuC4312
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final MenuC4312 mo8717() {
        return this.f15947.mo8717();
    }

    @Override // p353.MenuC4312
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean mo8718() {
        return this.f15947.mo8718();
    }

    @Override // p353.MenuC4312
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo8719(C4329 c4329) {
        return this.f15947.mo8719(c4329);
    }
}
