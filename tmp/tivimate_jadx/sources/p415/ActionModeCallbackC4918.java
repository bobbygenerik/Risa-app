package p415;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.Editable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* renamed from: ﹳـ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ActionModeCallbackC4918 implements ActionMode.Callback {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Class f18342;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Method f18343;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f18344;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final TextView f18345;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ActionMode.Callback f18346;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f18347 = false;

    public ActionModeCallbackC4918(ActionMode.Callback callback, TextView textView) {
        this.f18346 = callback;
        this.f18345 = textView;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f18346.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.f18346.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        this.f18346.onDestroyActionMode(actionMode);
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        TextView textView = this.f18345;
        Context context = textView.getContext();
        PackageManager packageManager = context.getPackageManager();
        boolean z = this.f18347;
        Class<?> cls = Integer.TYPE;
        if (!z) {
            this.f18347 = true;
            try {
                Class<?> cls2 = Class.forName("com.android.internal.view.menu.MenuBuilder");
                this.f18342 = cls2;
                this.f18343 = cls2.getDeclaredMethod("removeItemAt", cls);
                this.f18344 = true;
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                this.f18342 = null;
                this.f18343 = null;
                this.f18344 = false;
            }
        }
        try {
            Method declaredMethod = (this.f18344 && this.f18342.isInstance(menu)) ? this.f18343 : menu.getClass().getDeclaredMethod("removeItemAt", cls);
            for (int size = menu.size() - 1; size >= 0; size--) {
                MenuItem item = menu.getItem(size);
                if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                    declaredMethod.invoke(menu, Integer.valueOf(size));
                }
            }
            ArrayList arrayList = new ArrayList();
            if (context instanceof Activity) {
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain"), 0)) {
                    if (!context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                        ActivityInfo activityInfo = resolveInfo.activityInfo;
                        if (activityInfo.exported) {
                            String str = activityInfo.permission;
                            if (str != null && context.checkSelfPermission(str) != 0) {
                            }
                        }
                    }
                    arrayList.add(resolveInfo);
                }
            }
            for (int i = 0; i < arrayList.size(); i++) {
                ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i);
                MenuItem add = menu.add(0, 0, i + 100, resolveInfo2.loadLabel(packageManager));
                Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled()));
                ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
                add.setIntent(putExtra.setClassName(activityInfo2.packageName, activityInfo2.name)).setShowAsAction(1);
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
        }
        return this.f18346.onPrepareActionMode(actionMode, menu);
    }
}
