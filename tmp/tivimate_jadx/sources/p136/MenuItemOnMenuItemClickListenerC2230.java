package p136;

import android.view.MenuItem;
import java.lang.reflect.Method;

/* renamed from: ˉʿ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class MenuItemOnMenuItemClickListenerC2230 implements MenuItem.OnMenuItemClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Class[] f8753 = {MenuItem.class};

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f8754;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Method f8755;

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        Object obj = this.f8754;
        Method method = this.f8755;
        try {
            if (method.getReturnType() == Boolean.TYPE) {
                return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
            }
            method.invoke(obj, menuItem);
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
