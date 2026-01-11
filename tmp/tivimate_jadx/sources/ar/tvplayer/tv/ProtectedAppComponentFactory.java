package ar.tvplayer.tv;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
import android.os.Process;
import android.util.Log;

/* loaded from: classes.dex */
public class ProtectedAppComponentFactory extends AppComponentFactory {
    private AppComponentFactory factory;

    private AppComponentFactory getAppComponentFactory() {
        AppComponentFactory appComponentFactory = this.factory;
        if (appComponentFactory != null) {
            return appComponentFactory;
        }
        String processName = Application.getProcessName();
        if (processName == null || !(processName.contains(":p5b25cdc14de98c5f8929038a") || processName.contains(":p8bcd28443d17b4b01081dfd2"))) {
            try {
                this.factory = (AppComponentFactory) Class.forName("androidx.core.app.CoreComponentFactory").newInstance();
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
                if (!Process.isIsolated()) {
                    Log.e("LoadedApk", "Unable to instantiate appComponentFactory", e);
                }
                this.factory = new AppComponentFactory();
            }
            return this.factory;
        }
        Log.i("LoadedApk", "Fast path. Process name: " + processName);
        AppComponentFactory appComponentFactory2 = new AppComponentFactory();
        this.factory = appComponentFactory2;
        return appComponentFactory2;
    }

    public Activity instantiateActivity(ClassLoader classLoader, String str, Intent intent) {
        return getAppComponentFactory().instantiateActivity(classLoader, str, intent);
    }

    public Application instantiateApplication(ClassLoader classLoader, String str) {
        return (Application) classLoader.loadClass(str).newInstance();
    }

    public ContentProvider instantiateProvider(ClassLoader classLoader, String str) {
        return getAppComponentFactory().instantiateProvider(classLoader, str);
    }

    public BroadcastReceiver instantiateReceiver(ClassLoader classLoader, String str, Intent intent) {
        return getAppComponentFactory().instantiateReceiver(classLoader, str, intent);
    }

    public Service instantiateService(ClassLoader classLoader, String str, Intent intent) {
        return getAppComponentFactory().instantiateService(classLoader, str, intent);
    }
}
