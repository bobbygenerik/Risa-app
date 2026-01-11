package p353;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p255.C3368;
import p256.AbstractC3376;
import p342.InterfaceMenuItemC4266;

/* renamed from: ᵔʾ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class MenuC4311 extends AbstractC3376 implements Menu {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final MenuC4312 f15948;

    public MenuC4311(Context context, MenuC4312 menuC4312) {
        super(context);
        if (menuC4312 == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f15948 = menuC4312;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return m7253(this.f15948.add(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return m7253(this.f15948.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m7253(this.f15948.m8732(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return m7253(this.f15948.m8732(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f15948.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m7253(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return this.f15948.addSubMenu(i);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return this.f15948.addSubMenu(i, i2, i3, i4);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return this.f15948.addSubMenu(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f15948.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        C3368 c3368 = (C3368) this.f13190;
        if (c3368 != null) {
            c3368.clear();
        }
        this.f15948.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f15948.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        return m7253(this.f15948.findItem(i));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return m7253(this.f15948.getItem(i));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f15948.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f15948.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return this.f15948.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f15948.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        if (((C3368) this.f13190) != null) {
            int i2 = 0;
            while (true) {
                C3368 c3368 = (C3368) this.f13190;
                if (i2 >= c3368.f13167) {
                    break;
                }
                if (((InterfaceMenuItemC4266) c3368.m7225(i2)).getGroupId() == i) {
                    ((C3368) this.f13190).mo4688(i2);
                    i2--;
                }
                i2++;
            }
        }
        this.f15948.removeGroup(i);
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        if (((C3368) this.f13190) != null) {
            int i2 = 0;
            while (true) {
                C3368 c3368 = (C3368) this.f13190;
                if (i2 >= c3368.f13167) {
                    break;
                }
                if (((InterfaceMenuItemC4266) c3368.m7225(i2)).getItemId() == i) {
                    ((C3368) this.f13190).mo4688(i2);
                    break;
                }
                i2++;
            }
        }
        this.f15948.removeItem(i);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f15948.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        this.f15948.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        this.f15948.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f15948.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f15948.size();
    }
}
