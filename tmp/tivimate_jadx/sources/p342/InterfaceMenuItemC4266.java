package p342;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;
import p353.ActionProviderVisibilityListenerC4314;

/* renamed from: ᵎˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public interface InterfaceMenuItemC4266 extends MenuItem {
    @Override // android.view.MenuItem
    int getAlphabeticModifiers();

    @Override // android.view.MenuItem
    CharSequence getContentDescription();

    @Override // android.view.MenuItem
    ColorStateList getIconTintList();

    @Override // android.view.MenuItem
    PorterDuff.Mode getIconTintMode();

    @Override // android.view.MenuItem
    int getNumericModifiers();

    @Override // android.view.MenuItem
    CharSequence getTooltipText();

    @Override // android.view.MenuItem
    MenuItem setAlphabeticShortcut(char c, int i);

    @Override // android.view.MenuItem
    InterfaceMenuItemC4266 setContentDescription(CharSequence charSequence);

    @Override // android.view.MenuItem
    MenuItem setIconTintList(ColorStateList colorStateList);

    @Override // android.view.MenuItem
    MenuItem setIconTintMode(PorterDuff.Mode mode);

    @Override // android.view.MenuItem
    MenuItem setNumericShortcut(char c, int i);

    @Override // android.view.MenuItem
    MenuItem setShortcut(char c, char c2, int i, int i2);

    @Override // android.view.MenuItem
    InterfaceMenuItemC4266 setTooltipText(CharSequence charSequence);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    InterfaceMenuItemC4266 mo8648(ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    ActionProviderVisibilityListenerC4314 mo8649();
}
