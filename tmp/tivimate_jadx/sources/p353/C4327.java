package p353;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p342.InterfaceMenuItemC4266;

/* renamed from: ᵔʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4327 implements InterfaceMenuItemC4266 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Context f16050;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f16051;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Intent f16052;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public CharSequence f16053;

    /* renamed from: ˈ, reason: contains not printable characters */
    public char f16054;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public PorterDuff.Mode f16055;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean f16056;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16057;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public CharSequence f16058;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16059;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f16060;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Drawable f16061;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public CharSequence f16062;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public CharSequence f16063;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public ColorStateList f16064;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public char f16065;

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f16059;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f16065;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f16053;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f16061;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f16064;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f16055;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f16052;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f16057;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f16054;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f16063;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f16062;
        return charSequence != null ? charSequence : this.f16063;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f16058;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f16051 & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f16051 & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f16051 & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f16051 & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f16065 = Character.toLowerCase(c);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f16065 = Character.toLowerCase(c);
        this.f16059 = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f16051 = (z ? 1 : 0) | (this.f16051 & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f16051 = (z ? 2 : 0) | (this.f16051 & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f16053 = charSequence;
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final InterfaceMenuItemC4266 setContentDescription(CharSequence charSequence) {
        this.f16053 = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f16051 = (z ? 16 : 0) | (this.f16051 & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f16061 = this.f16050.getDrawable(i);
        m8753();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f16061 = drawable;
        m8753();
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f16064 = colorStateList;
        this.f16060 = true;
        m8753();
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f16055 = mode;
        this.f16056 = true;
        m8753();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f16052 = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f16054 = c;
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f16054 = c;
        this.f16057 = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f16054 = c;
        this.f16065 = Character.toLowerCase(c2);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f16054 = c;
        this.f16057 = KeyEvent.normalizeMetaState(i);
        this.f16065 = Character.toLowerCase(c2);
        this.f16059 = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f16063 = this.f16050.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f16063 = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f16062 = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f16058 = charSequence;
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final InterfaceMenuItemC4266 setTooltipText(CharSequence charSequence) {
        this.f16058 = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        this.f16051 = (this.f16051 & 8) | (z ? 0 : 8);
        return this;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8753() {
        Drawable drawable = this.f16061;
        if (drawable != null) {
            if (this.f16060 || this.f16056) {
                this.f16061 = drawable;
                Drawable mutate = drawable.mutate();
                this.f16061 = mutate;
                if (this.f16060) {
                    mutate.setTintList(this.f16064);
                }
                if (this.f16056) {
                    this.f16061.setTintMode(this.f16055);
                }
            }
        }
    }

    @Override // p342.InterfaceMenuItemC4266
    /* renamed from: ⁱˊ */
    public final InterfaceMenuItemC4266 mo8648(ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314) {
        throw new UnsupportedOperationException();
    }

    @Override // p342.InterfaceMenuItemC4266
    /* renamed from: ﹳٴ */
    public final ActionProviderVisibilityListenerC4314 mo8649() {
        return null;
    }
}
