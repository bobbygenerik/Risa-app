package p353;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import p342.InterfaceMenuItemC4266;
import ˊⁱ.ˑﹳ;
import ᴵˋ.ˊʻ;

/* renamed from: ᵔʾ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4329 implements InterfaceMenuItemC4266 {

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public int f16068;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public MenuItem.OnMenuItemClickListener f16070;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f16071;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ActionProviderVisibilityListenerC4314 f16074;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public char f16076;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f16077;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public SubMenuC4310 f16079;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public CharSequence f16081;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public MenuItem.OnActionExpandListener f16085;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Intent f16086;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final MenuC4312 f16087;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public char f16088;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public CharSequence f16089;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public View f16090;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16091;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f16092;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public CharSequence f16093;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Drawable f16094;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public CharSequence f16095;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f16069 = 4096;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f16084 = 4096;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f16078 = 0;

    /* renamed from: יـ, reason: contains not printable characters */
    public ColorStateList f16082 = null;

    /* renamed from: ˏי, reason: contains not printable characters */
    public PorterDuff.Mode f16080 = null;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f16073 = false;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean f16067 = false;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f16083 = false;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public int f16075 = 16;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f16072 = false;

    public C4329(MenuC4312 menuC4312, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f16087 = menuC4312;
        this.f16092 = i2;
        this.f16091 = i;
        this.f16071 = i3;
        this.f16077 = i4;
        this.f16081 = charSequence;
        this.f16068 = i5;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m8755(int i, int i2, String str, StringBuilder sb) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f16068 & 8) == 0) {
            return false;
        }
        if (this.f16090 == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f16085;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f16087.mo8713(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!m8757()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f16085;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f16087.mo8719(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f16090;
        if (view != null) {
            return view;
        }
        ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314 = this.f16074;
        if (actionProviderVisibilityListenerC4314 == null) {
            return null;
        }
        View onCreateActionView = actionProviderVisibilityListenerC4314.f16000.onCreateActionView(this);
        this.f16090 = onCreateActionView;
        return onCreateActionView;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f16084;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f16076;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f16089;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f16091;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f16094;
        if (drawable != null) {
            return m8756(drawable);
        }
        int i = this.f16078;
        if (i == 0) {
            return null;
        }
        Drawable drawable2 = ˊʻ.ﹳᐧ(this.f16087.f15970, i);
        this.f16078 = 0;
        this.f16094 = drawable2;
        return m8756(drawable2);
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f16082;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f16080;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f16086;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f16092;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f16069;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f16088;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f16071;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f16079;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f16081;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f16095;
        return charSequence != null ? charSequence : this.f16081;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f16093;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f16079 != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f16072;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f16075 & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f16075 & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f16075 & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314 = this.f16074;
        return (actionProviderVisibilityListenerC4314 == null || !actionProviderVisibilityListenerC4314.f16000.overridesItemVisibility()) ? (this.f16075 & 8) == 0 : (this.f16075 & 8) == 0 && this.f16074.f16000.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        int i2;
        MenuC4312 menuC4312 = this.f16087;
        Context context = menuC4312.f15970;
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false);
        this.f16090 = inflate;
        this.f16074 = null;
        if (inflate != null && inflate.getId() == -1 && (i2 = this.f16092) > 0) {
            inflate.setId(i2);
        }
        menuC4312.f15964 = true;
        menuC4312.m8722(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i;
        this.f16090 = view;
        this.f16074 = null;
        if (view != null && view.getId() == -1 && (i = this.f16092) > 0) {
            view.setId(i);
        }
        MenuC4312 menuC4312 = this.f16087;
        menuC4312.f15964 = true;
        menuC4312.m8722(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.f16076 == c) {
            return this;
        }
        this.f16076 = Character.toLowerCase(c);
        this.f16087.m8722(false);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f16076 == c && this.f16084 == i) {
            return this;
        }
        this.f16076 = Character.toLowerCase(c);
        this.f16084 = KeyEvent.normalizeMetaState(i);
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.f16075;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f16075 = i2;
        if (i != i2) {
            this.f16087.m8722(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i = this.f16075;
        int i2 = i & 4;
        MenuC4312 menuC4312 = this.f16087;
        if (i2 == 0) {
            int i3 = (i & (-3)) | (z ? 2 : 0);
            this.f16075 = i3;
            if (i != i3) {
                menuC4312.m8722(false);
            }
            return this;
        }
        ArrayList arrayList = menuC4312.f15973;
        int size = arrayList.size();
        menuC4312.m8727();
        for (int i4 = 0; i4 < size; i4++) {
            C4329 c4329 = (C4329) arrayList.get(i4);
            if (c4329.f16091 == this.f16091 && (c4329.f16075 & 4) != 0 && c4329.isCheckable()) {
                boolean z2 = c4329 == this;
                int i5 = c4329.f16075;
                int i6 = (z2 ? 2 : 0) | (i5 & (-3));
                c4329.f16075 = i6;
                if (i5 != i6) {
                    c4329.f16087.m8722(false);
                }
            }
        }
        menuC4312.m8720();
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final InterfaceMenuItemC4266 setContentDescription(CharSequence charSequence) {
        this.f16089 = charSequence;
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.f16075 |= 16;
        } else {
            this.f16075 &= -17;
        }
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f16094 = null;
        this.f16078 = i;
        this.f16083 = true;
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f16078 = 0;
        this.f16094 = drawable;
        this.f16083 = true;
        this.f16087.m8722(false);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f16082 = colorStateList;
        this.f16073 = true;
        this.f16083 = true;
        this.f16087.m8722(false);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f16080 = mode;
        this.f16067 = true;
        this.f16083 = true;
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f16086 = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.f16088 == c) {
            return this;
        }
        this.f16088 = c;
        this.f16087.m8722(false);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.f16088 == c && this.f16069 == i) {
            return this;
        }
        this.f16088 = c;
        this.f16069 = KeyEvent.normalizeMetaState(i);
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f16085 = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f16070 = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f16088 = c;
        this.f16076 = Character.toLowerCase(c2);
        this.f16087.m8722(false);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f16088 = c;
        this.f16069 = KeyEvent.normalizeMetaState(i);
        this.f16076 = Character.toLowerCase(c2);
        this.f16084 = KeyEvent.normalizeMetaState(i2);
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f16068 = i;
        MenuC4312 menuC4312 = this.f16087;
        menuC4312.f15964 = true;
        menuC4312.m8722(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        setTitle(this.f16087.f15970.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f16081 = charSequence;
        this.f16087.m8722(false);
        SubMenuC4310 subMenuC4310 = this.f16079;
        if (subMenuC4310 != null) {
            subMenuC4310.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f16095 = charSequence;
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266, android.view.MenuItem
    public final InterfaceMenuItemC4266 setTooltipText(CharSequence charSequence) {
        this.f16093 = charSequence;
        this.f16087.m8722(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.f16075;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f16075 = i2;
        if (i != i2) {
            MenuC4312 menuC4312 = this.f16087;
            menuC4312.f15967 = true;
            menuC4312.m8722(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f16081;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Drawable m8756(Drawable drawable) {
        if (drawable != null && this.f16083 && (this.f16073 || this.f16067)) {
            drawable = drawable.mutate();
            if (this.f16073) {
                drawable.setTintList(this.f16082);
            }
            if (this.f16067) {
                drawable.setTintMode(this.f16080);
            }
            this.f16083 = false;
        }
        return drawable;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m8757() {
        ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314;
        if ((this.f16068 & 8) != 0) {
            if (this.f16090 == null && (actionProviderVisibilityListenerC4314 = this.f16074) != null) {
                this.f16090 = actionProviderVisibilityListenerC4314.f16000.onCreateActionView(this);
            }
            if (this.f16090 != null) {
                return true;
            }
        }
        return false;
    }

    @Override // p342.InterfaceMenuItemC4266
    /* renamed from: ⁱˊ */
    public final InterfaceMenuItemC4266 mo8648(ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314) {
        this.f16090 = null;
        this.f16074 = actionProviderVisibilityListenerC4314;
        this.f16087.m8722(true);
        ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC43142 = this.f16074;
        if (actionProviderVisibilityListenerC43142 != null) {
            actionProviderVisibilityListenerC43142.f16001 = new ˑﹳ(24, this);
            actionProviderVisibilityListenerC43142.f16000.setVisibilityListener(actionProviderVisibilityListenerC43142);
        }
        return this;
    }

    @Override // p342.InterfaceMenuItemC4266
    /* renamed from: ﹳٴ */
    public final ActionProviderVisibilityListenerC4314 mo8649() {
        return this.f16074;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8758(boolean z) {
        if (z) {
            this.f16075 |= 32;
        } else {
            this.f16075 &= -33;
        }
    }
}
