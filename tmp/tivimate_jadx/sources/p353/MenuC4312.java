package p353;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p028.AbstractC1116;
import p186.AbstractC2828;

/* renamed from: ᵔʾ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class MenuC4312 implements Menu {

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static final int[] f15949 = {1, 4, 5, 3, 2, 0};

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public C4329 f15950;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList f15951;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f15953;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f15955;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList f15956;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f15957;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public CharSequence f15958;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public View f15959;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC4323 f15961;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f15964;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ArrayList f15965;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public Drawable f15966;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f15967;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Resources f15969;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f15970;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList f15973;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f15972 = 0;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f15952 = false;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f15968 = false;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f15971 = false;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f15962 = false;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final ArrayList f15960 = new ArrayList();

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f15954 = new CopyOnWriteArrayList();

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f15963 = false;

    public MenuC4312(Context context) {
        boolean z;
        boolean z2 = false;
        this.f15970 = context;
        Resources resources = context.getResources();
        this.f15969 = resources;
        this.f15973 = new ArrayList();
        this.f15965 = new ArrayList();
        this.f15967 = true;
        this.f15951 = new ArrayList();
        this.f15956 = new ArrayList();
        this.f15964 = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = AbstractC2828.f10612;
            if (Build.VERSION.SDK_INT >= 28) {
                z = AbstractC1116.m3529(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                z = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (z) {
                z2 = true;
            }
        }
        this.f15957 = z2;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return m8732(0, 0, 0, this.f15969.getString(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return m8732(i, i2, i3, this.f15969.getString(i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m8732(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return m8732(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f15970.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            C4329 m8732 = m8732(i, i2, i3, resolveInfo.loadLabel(packageManager));
            m8732.setIcon(resolveInfo.loadIcon(packageManager));
            m8732.f16086 = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = m8732;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f15969.getString(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f15969.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C4329 m8732 = m8732(i, i2, i3, charSequence);
        SubMenuC4310 subMenuC4310 = new SubMenuC4310(this.f15970, this, m8732);
        m8732.f16079 = subMenuC4310;
        subMenuC4310.setHeaderTitle(m8732.f16081);
        return subMenuC4310;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        C4329 c4329 = this.f15950;
        if (c4329 != null) {
            mo8713(c4329);
        }
        this.f15973.clear();
        m8722(true);
    }

    public final void clearHeader() {
        this.f15966 = null;
        this.f15958 = null;
        this.f15959 = null;
        m8722(false);
    }

    @Override // android.view.Menu
    public final void close() {
        m8723(true);
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        MenuItem findItem;
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C4329 c4329 = (C4329) arrayList.get(i2);
            if (c4329.f16092 == i) {
                return c4329;
            }
            if (c4329.hasSubMenu() && (findItem = c4329.f16079.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return (MenuItem) this.f15973.get(i);
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f15955) {
            return true;
        }
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((C4329) arrayList.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m8728(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return m8730(findItem(i), null, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C4329 m8728 = m8728(i, keyEvent);
        boolean m8730 = m8728 != null ? m8730(m8728, null, i2) : false;
        if ((i2 & 2) != 0) {
            m8723(true);
        }
        return m8730;
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (((C4329) arrayList.get(i3)).f16091 == i) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            int size2 = arrayList.size() - i3;
            while (true) {
                int i4 = i2 + 1;
                if (i2 >= size2 || ((C4329) arrayList.get(i3)).f16091 != i) {
                    break;
                }
                if (i3 >= 0 && i3 < arrayList.size()) {
                    arrayList.remove(i3);
                }
                i2 = i4;
            }
            m8722(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((C4329) arrayList.get(i2)).f16092 == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i2);
        m8722(true);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C4329 c4329 = (C4329) arrayList.get(i2);
            if (c4329.f16091 == i) {
                c4329.f16075 = (c4329.f16075 & (-5)) | (z2 ? 4 : 0);
                c4329.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f15963 = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C4329 c4329 = (C4329) arrayList.get(i2);
            if (c4329.f16091 == i) {
                c4329.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        ArrayList arrayList = this.f15973;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C4329 c4329 = (C4329) arrayList.get(i2);
            if (c4329.f16091 == i) {
                int i3 = c4329.f16075;
                int i4 = (i3 & (-9)) | (z ? 0 : 8);
                c4329.f16075 = i4;
                if (i3 != i4) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            m8722(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f15953 = z;
        m8722(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f15973.size();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m8720() {
        this.f15952 = false;
        if (this.f15968) {
            this.f15968 = false;
            m8722(this.f15971);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m8721() {
        ArrayList m8734 = m8734();
        if (this.f15964) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC4309 interfaceC4309 = (InterfaceC4309) weakReference.get();
                if (interfaceC4309 == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z |= interfaceC4309.mo5354();
                }
            }
            ArrayList arrayList = this.f15951;
            ArrayList arrayList2 = this.f15956;
            if (z) {
                arrayList.clear();
                arrayList2.clear();
                int size = m8734.size();
                for (int i = 0; i < size; i++) {
                    C4329 c4329 = (C4329) m8734.get(i);
                    if ((c4329.f16075 & 32) == 32) {
                        arrayList.add(c4329);
                    } else {
                        arrayList2.add(c4329);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(m8734());
            }
            this.f15964 = false;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8722(boolean z) {
        if (this.f15952) {
            this.f15968 = true;
            if (z) {
                this.f15971 = true;
                return;
            }
            return;
        }
        if (z) {
            this.f15967 = true;
            this.f15964 = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        m8727();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC4309 interfaceC4309 = (InterfaceC4309) weakReference.get();
            if (interfaceC4309 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC4309.mo5355();
            }
        }
        m8720();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8723(boolean z) {
        if (this.f15962) {
            return;
        }
        this.f15962 = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC4309 interfaceC4309 = (InterfaceC4309) weakReference.get();
            if (interfaceC4309 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC4309.mo5353(this, z);
            }
        }
        this.f15962 = false;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m8724(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        if (view != null) {
            this.f15959 = view;
            this.f15958 = null;
            this.f15966 = null;
        } else {
            if (i > 0) {
                this.f15958 = this.f15969.getText(i);
            } else if (charSequence != null) {
                this.f15958 = charSequence;
            }
            if (i2 > 0) {
                this.f15966 = this.f15970.getDrawable(i2);
            } else if (drawable != null) {
                this.f15966 = drawable;
            }
            this.f15959 = null;
        }
        m8722(false);
    }

    /* renamed from: ˆʾ */
    public String mo8712() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: ˈ */
    public boolean mo8713(C4329 c4329) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
        boolean z = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f15950 == c4329) {
            m8727();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC4309 interfaceC4309 = (InterfaceC4309) weakReference.get();
                if (interfaceC4309 == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z = interfaceC4309.mo5356(c4329);
                    if (z) {
                        break;
                    }
                }
            }
            m8720();
            if (z) {
                this.f15950 = null;
            }
        }
        return z;
    }

    /* renamed from: ˉʿ */
    public boolean mo8714() {
        return this.f15963;
    }

    /* renamed from: ˉˆ */
    public boolean mo8715() {
        return this.f15957;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m8725(Bundle bundle) {
        int size = this.f15973.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC4310) item.getSubMenu()).m8725(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo8712(), sparseArray);
        }
    }

    /* renamed from: ˑﹳ */
    public boolean mo8716(MenuC4312 menuC4312, MenuItem menuItem) {
        InterfaceC4323 interfaceC4323 = this.f15961;
        return interfaceC4323 != null && interfaceC4323.mo5214(menuC4312, menuItem);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m8726(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo8712());
        int size = this.f15973.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC4310) item.getSubMenu()).m8726(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8727() {
        if (this.f15952) {
            return;
        }
        this.f15952 = true;
        this.f15968 = false;
        this.f15971 = false;
    }

    /* renamed from: ٴﹶ */
    public MenuC4312 mo8717() {
        return this;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4329 m8728(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.f15960;
        arrayList.clear();
        m8729(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (C4329) arrayList.get(0);
        }
        boolean mo8718 = mo8718();
        for (int i2 = 0; i2 < size; i2++) {
            C4329 c4329 = (C4329) arrayList.get(i2);
            char c = mo8718 ? c4329.f16076 : c4329.f16088;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (mo8718 && c == '\b' && i == 67))) {
                return c4329;
            }
        }
        return null;
    }

    /* renamed from: ᵔʾ */
    public boolean mo8718() {
        return this.f15953;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m8729(List list, int i, KeyEvent keyEvent) {
        boolean mo8718 = mo8718();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            ArrayList arrayList = this.f15973;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                C4329 c4329 = (C4329) arrayList.get(i2);
                if (c4329.hasSubMenu()) {
                    c4329.f16079.m8729(list, i, keyEvent);
                }
                char c = mo8718 ? c4329.f16076 : c4329.f16088;
                if ((modifiers & 69647) == ((mo8718 ? c4329.f16084 : c4329.f16069) & 69647) && c != 0) {
                    char[] cArr = keyData.meta;
                    if ((c == cArr[0] || c == cArr[2] || (mo8718 && c == '\b' && i == 67)) && c4329.isEnabled()) {
                        list.add(c4329);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8730(android.view.MenuItem r7, p353.InterfaceC4309 r8, int r9) {
        /*
            r6 = this;
            ᵔʾ.ﾞʻ r7 = (p353.C4329) r7
            r0 = 0
            if (r7 == 0) goto Ld0
            boolean r1 = r7.isEnabled()
            if (r1 != 0) goto Ld
            goto Ld0
        Ld:
            ᵔʾ.ˆʾ r1 = r7.f16087
            android.view.MenuItem$OnMenuItemClickListener r2 = r7.f16070
            r3 = 1
            if (r2 == 0) goto L1c
            boolean r2 = r2.onMenuItemClick(r7)
            if (r2 == 0) goto L1c
        L1a:
            r1 = r3
            goto L41
        L1c:
            boolean r2 = r1.mo8716(r1, r7)
            if (r2 == 0) goto L23
            goto L1a
        L23:
            android.content.Intent r2 = r7.f16086
            if (r2 == 0) goto L33
            android.content.Context r1 = r1.f15970     // Catch: android.content.ActivityNotFoundException -> L2d
            r1.startActivity(r2)     // Catch: android.content.ActivityNotFoundException -> L2d
            goto L1a
        L2d:
            r1 = move-exception
            java.lang.String r2 = "MenuItemImpl"
            java.lang.String r4 = "Can't find activity to handle intent; ignoring"
        L33:
            ᵔʾ.ˉʿ r1 = r7.f16074
            if (r1 == 0) goto L40
            android.view.ActionProvider r1 = r1.f16000
            boolean r1 = r1.onPerformDefaultAction()
            if (r1 == 0) goto L40
            goto L1a
        L40:
            r1 = r0
        L41:
            ᵔʾ.ˉʿ r2 = r7.f16074
            if (r2 == 0) goto L4f
            android.view.ActionProvider r4 = r2.f16000
            boolean r4 = r4.hasSubMenu()
            if (r4 == 0) goto L4f
            r4 = r3
            goto L50
        L4f:
            r4 = r0
        L50:
            boolean r5 = r7.m8757()
            if (r5 == 0) goto L62
            boolean r7 = r7.expandActionView()
            r1 = r1 | r7
            if (r1 == 0) goto Lcf
            r6.m8723(r3)
            goto Lcf
        L62:
            boolean r5 = r7.hasSubMenu()
            if (r5 != 0) goto L73
            if (r4 == 0) goto L6b
            goto L73
        L6b:
            r7 = r9 & 1
            if (r7 != 0) goto Lcf
            r6.m8723(r3)
            goto Lcf
        L73:
            r9 = r9 & 4
            if (r9 != 0) goto L7a
            r6.m8723(r0)
        L7a:
            boolean r9 = r7.hasSubMenu()
            if (r9 != 0) goto L8e
            ᵔʾ.ʾˋ r9 = new ᵔʾ.ʾˋ
            android.content.Context r5 = r6.f15970
            r9.<init>(r5, r6, r7)
            r7.f16079 = r9
            java.lang.CharSequence r5 = r7.f16081
            r9.setHeaderTitle(r5)
        L8e:
            ᵔʾ.ʾˋ r7 = r7.f16079
            if (r4 == 0) goto L97
            android.view.ActionProvider r9 = r2.f16000
            r9.onPrepareSubMenu(r7)
        L97:
            java.util.concurrent.CopyOnWriteArrayList r9 = r6.f15954
            boolean r2 = r9.isEmpty()
            if (r2 == 0) goto La0
            goto Lc9
        La0:
            if (r8 == 0) goto La6
            boolean r0 = r8.mo5357(r7)
        La6:
            java.util.Iterator r8 = r9.iterator()
        Laa:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto Lc9
            java.lang.Object r2 = r8.next()
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2
            java.lang.Object r4 = r2.get()
            ᵔʾ.ʽﹳ r4 = (p353.InterfaceC4309) r4
            if (r4 != 0) goto Lc2
            r9.remove(r2)
            goto Laa
        Lc2:
            if (r0 != 0) goto Laa
            boolean r0 = r4.mo5357(r7)
            goto Laa
        Lc9:
            r1 = r1 | r0
            if (r1 != 0) goto Lcf
            r6.m8723(r3)
        Lcf:
            return r1
        Ld0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p353.MenuC4312.m8730(android.view.MenuItem, ᵔʾ.ʽﹳ, int):boolean");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8731(InterfaceC4309 interfaceC4309, Context context) {
        this.f15954.add(new WeakReference(interfaceC4309));
        interfaceC4309.mo5352(context, this);
        this.f15964 = true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4329 m8732(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 < 0 || i5 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i6 = (f15949[i5] << 16) | (65535 & i3);
        C4329 c4329 = new C4329(this, i, i2, i3, i6, charSequence, this.f15972);
        ArrayList arrayList = this.f15973;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i4 = 0;
                break;
            }
            if (((C4329) arrayList.get(size)).f16077 <= i6) {
                i4 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i4, c4329);
        m8722(true);
        return c4329;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8733(InterfaceC4309 interfaceC4309) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC4309 interfaceC43092 = (InterfaceC4309) weakReference.get();
            if (interfaceC43092 == null || interfaceC43092 == interfaceC4309) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList m8734() {
        boolean z = this.f15967;
        ArrayList arrayList = this.f15965;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f15973;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            C4329 c4329 = (C4329) arrayList2.get(i);
            if (c4329.isVisible()) {
                arrayList.add(c4329);
            }
        }
        this.f15967 = false;
        this.f15964 = true;
        return arrayList;
    }

    /* renamed from: ﾞᴵ */
    public boolean mo8719(C4329 c4329) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15954;
        boolean z = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        m8727();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC4309 interfaceC4309 = (InterfaceC4309) weakReference.get();
            if (interfaceC4309 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                z = interfaceC4309.mo5358(c4329);
                if (z) {
                    break;
                }
            }
        }
        m8720();
        if (z) {
            this.f15950 = c4329;
        }
        return z;
    }
}
