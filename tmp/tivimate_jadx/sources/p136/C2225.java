package p136;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import p076.AbstractC1659;
import p137.AbstractC2305;
import p342.InterfaceMenuItemC4266;
import p353.ActionProviderVisibilityListenerC4314;
import p353.C4329;
import p353.MenuItemC4324;

/* renamed from: ˉʿ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2225 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f8714;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public String f8715;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f8716;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public char f8717;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f8720;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public CharSequence f8721;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public String f8722;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f8723;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f8726;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f8727;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f8728;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f8730;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f8731;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public CharSequence f8732;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public CharSequence f8733;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C2226 f8734;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public char f8736;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f8737;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f8738;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public ActionProviderVisibilityListenerC4314 f8739;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Menu f8741;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f8742;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public CharSequence f8743;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ColorStateList f8719 = null;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public PorterDuff.Mode f8725 = null;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f8740 = 0;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f8718 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f8724 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f8729 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f8744 = true;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f8735 = true;

    public C2225(C2226 c2226, Menu menu) {
        this.f8734 = c2226;
        this.f8741 = menu;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17, types: [ˉʿ.ﾞᴵ, android.view.MenuItem$OnMenuItemClickListener, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5229(MenuItem menuItem) {
        C2226 c2226 = this.f8734;
        Context context = c2226.f8747;
        boolean z = false;
        menuItem.setChecked(this.f8730).setVisible(this.f8728).setEnabled(this.f8720).setCheckable(this.f8742 >= 1).setTitleCondensed(this.f8743).setIcon(this.f8726);
        int i = this.f8714;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        if (this.f8715 != null) {
            if (context.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (c2226.f8748 == null) {
                c2226.f8748 = C2226.m5231(context);
            }
            Object obj = c2226.f8748;
            String str = this.f8715;
            ?? obj2 = new Object();
            obj2.f8754 = obj;
            Class<?> cls = obj.getClass();
            try {
                obj2.f8755 = cls.getMethod(str, MenuItemOnMenuItemClickListenerC2230.f8753);
                menuItem.setOnMenuItemClickListener(obj2);
            } catch (Exception e) {
                StringBuilder m5370 = AbstractC2305.m5370("Couldn't resolve menu item onClick handler ", str, " in class ");
                m5370.append(cls.getName());
                InflateException inflateException = new InflateException(m5370.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }
        if (this.f8742 >= 2) {
            if (menuItem instanceof C4329) {
                C4329 c4329 = (C4329) menuItem;
                c4329.f16075 = (c4329.f16075 & (-5)) | 4;
            } else if (menuItem instanceof MenuItemC4324) {
                MenuItemC4324 menuItemC4324 = (MenuItemC4324) menuItem;
                InterfaceMenuItemC4266 interfaceMenuItemC4266 = menuItemC4324.f16028;
                try {
                    if (menuItemC4324.f16029 == null) {
                        menuItemC4324.f16029 = interfaceMenuItemC4266.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    menuItemC4324.f16029.invoke(interfaceMenuItemC4266, Boolean.TRUE);
                } catch (Exception e2) {
                }
            }
        }
        String str2 = this.f8722;
        if (str2 != null) {
            menuItem.setActionView((View) m5230(str2, C2226.f8745, c2226.f8750));
            z = true;
        }
        int i2 = this.f8731;
        if (i2 > 0 && !z) {
            menuItem.setActionView(i2);
        }
        ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314 = this.f8739;
        if (actionProviderVisibilityListenerC4314 != null && (menuItem instanceof InterfaceMenuItemC4266)) {
            ((InterfaceMenuItemC4266) menuItem).mo8648(actionProviderVisibilityListenerC4314);
        }
        CharSequence charSequence = this.f8721;
        boolean z2 = menuItem instanceof InterfaceMenuItemC4266;
        if (z2) {
            ((InterfaceMenuItemC4266) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC1659.m4533(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.f8733;
        if (z2) {
            ((InterfaceMenuItemC4266) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC1659.m4536(menuItem, charSequence2);
        }
        char c = this.f8736;
        int i3 = this.f8727;
        if (z2) {
            ((InterfaceMenuItemC4266) menuItem).setAlphabeticShortcut(c, i3);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC1659.m4541(menuItem, c, i3);
        }
        char c2 = this.f8717;
        int i4 = this.f8738;
        if (z2) {
            ((InterfaceMenuItemC4266) menuItem).setNumericShortcut(c2, i4);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC1659.m4540(menuItem, c2, i4);
        }
        PorterDuff.Mode mode = this.f8725;
        if (mode != null) {
            if (z2) {
                ((InterfaceMenuItemC4266) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                AbstractC1659.m4544(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.f8719;
        if (colorStateList != null) {
            if (z2) {
                ((InterfaceMenuItemC4266) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                AbstractC1659.m4538(menuItem, colorStateList);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m5230(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f8734.f8747.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e) {
            String str2 = "Cannot instantiate class: " + str;
            return null;
        }
    }
}
