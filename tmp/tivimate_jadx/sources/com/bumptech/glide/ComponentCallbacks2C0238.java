package com.bumptech.glide;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.OkHttpGlideModule;
import j$.util.DesugarCollections;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p073.C1644;
import p073.C1645;
import p073.C1649;
import p080.C1698;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p087.C1740;
import p140.ExecutorServiceC2374;
import p140.ThreadFactoryC2372;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p255.C3359;
import p255.C3368;
import p257.C3393;
import p257.C3397;
import p257.InterfaceC3396;
import p279.C3557;
import ʽٴ.ˈ;
import ﹳי.ʽ;

/* renamed from: com.bumptech.glide.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ComponentCallbacks2C0238 implements ComponentCallbacks2 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static volatile boolean f1701;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static volatile ComponentCallbacks2C0238 f1702;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1649 f1703;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1698 f1704;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0233 f1705;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ArrayList f1706 = new ArrayList();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3557 f1707;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ﹳˋ.ʼˎ f1708;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC3396 f1709;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3397 f1710;

    /* JADX WARN: Type inference failed for: r6v1, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    public ComponentCallbacks2C0238(Context context, C1698 c1698, C1649 c1649, InterfaceC3396 interfaceC3396, C3397 c3397, C3557 c3557, ﹳˋ.ʼˎ r8, int i, ˋⁱ.ﾞᴵ r10, C3359 c3359, List list, List list2, ʼ.ᵎﹶ r14, ʽ r15) {
        this.f1704 = c1698;
        this.f1709 = interfaceC3396;
        this.f1710 = c3397;
        this.f1703 = c1649;
        this.f1707 = c3557;
        this.f1708 = r8;
        this.f1705 = new C0233(context, c3397, new C0229(this, list2, r14), new Object(), r10, c3359, list, c1698, r15, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, ˉˏ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r0v34, types: [ʾⁱ.ﾞᴵ, ʿٴ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r10v2, types: [יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r14v8, types: [ﹳי.ʽ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v8, types: [ﹳי.ʽ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, ˉˏ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, ˉˏ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.lang.Object, ʻᴵ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object, ˉˏ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r9v2, types: [ˋⁱ.ﾞᴵ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1180(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        List list;
        ApplicationInfo applicationInfo;
        Object obj;
        C3368 c3368;
        C3368 c33682 = new C3368(0);
        C0241 c0241 = new C0241(0);
        Object obj2 = new Object();
        Context applicationContext = context.getApplicationContext();
        List list2 = Collections.EMPTY_LIST;
        if (generatedAppGlideModule == null || !(generatedAppGlideModule instanceof GeneratedAppGlideModuleImpl)) {
            if (Log.isLoggable("ManifestParser", 3)) {
            }
            ArrayList arrayList = new ArrayList();
            try {
                applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            } catch (PackageManager.NameNotFoundException e) {
                if (Log.isLoggable("ManifestParser", 6)) {
                }
            }
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    String str = "Got app info metadata: " + applicationInfo.metaData;
                }
                for (String str2 : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str2))) {
                        arrayList.add(ˈ.ʻٴ(str2));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            String str3 = "Loaded Glide module: " + str2;
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                }
                list = arrayList;
            }
            if (Log.isLoggable("ManifestParser", 3)) {
            }
            list = arrayList;
        } else {
            list = list2;
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                OkHttpGlideModule okHttpGlideModule = (OkHttpGlideModule) it.next();
                if (hashSet.contains(okHttpGlideModule.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        String str4 = "AppGlideModule excludes manifest GlideModule: " + okHttpGlideModule;
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                String str5 = "Discovered GlideModule from manifest: " + ((OkHttpGlideModule) it2.next()).getClass();
            }
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            ((OkHttpGlideModule) it3.next()).getClass();
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.ˆʾ();
        }
        ?? obj3 = new Object();
        if (ExecutorServiceC2374.f9167 == 0) {
            ExecutorServiceC2374.f9167 = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i = ExecutorServiceC2374.f9167;
        if (TextUtils.isEmpty("source")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
        }
        ExecutorServiceC2374 executorServiceC2374 = new ExecutorServiceC2374(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC2372(obj3, "source", false)));
        int i2 = ExecutorServiceC2374.f9167;
        ?? obj4 = new Object();
        if (TextUtils.isEmpty("disk-cache")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
        }
        ExecutorServiceC2374 executorServiceC23742 = new ExecutorServiceC2374(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC2372(obj4, "disk-cache", true)));
        if (ExecutorServiceC2374.f9167 == 0) {
            ExecutorServiceC2374.f9167 = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i3 = ExecutorServiceC2374.f9167 >= 4 ? 2 : 1;
        ?? obj5 = new Object();
        if (TextUtils.isEmpty("animation")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
        }
        ExecutorServiceC2374 executorServiceC23743 = new ExecutorServiceC2374(new ThreadPoolExecutor(i3, i3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC2372(obj5, "animation", true)));
        C1645 c1645 = new C1645(applicationContext);
        ?? obj6 = new Object();
        Context context2 = c1645.f6692;
        float f = c1645.f6690;
        ActivityManager activityManager = c1645.f6691;
        int i4 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        obj6.f3753 = i4;
        int round = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) c1645.f6689.ᴵˊ;
        float f2 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(f2 * f);
        int round3 = Math.round(f2 * 2.0f);
        int i5 = round - i4;
        int i6 = round3 + round2;
        if (i6 <= i5) {
            obj6.f3754 = round3;
            obj6.f3755 = round2;
        } else {
            float f3 = i5 / (f + 2.0f);
            obj6.f3754 = Math.round(2.0f * f3);
            obj6.f3755 = Math.round(f3 * f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            obj = obj2;
            c3368 = c33682;
            sb.append(Formatter.formatFileSize(context2, obj6.f3754));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context2, obj6.f3755));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context2, i4));
            sb.append(", memory class limited? ");
            sb.append(i6 > round);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context2, round));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            sb.toString();
        } else {
            obj = obj2;
            c3368 = c33682;
        }
        ﹳˋ.ʼˎ r7 = new ﹳˋ.ʼˎ(25);
        int i7 = obj6.f3755;
        C3393 c3393 = i7 > 0 ? new C3393(i7) : new ﹳˋ.ʼˎ(22);
        C3397 c3397 = new C3397(obj6.f3753);
        ?? c1740 = new C1740(obj6.f3754);
        C1644 c1644 = new C1644(applicationContext);
        ?? obj7 = new Object();
        ((ʽ) obj7).ʾˋ = c1644;
        C1698 c1698 = new C1698(c1740, obj7, executorServiceC23742, executorServiceC2374, new ExecutorServiceC2374(new ThreadPoolExecutor(0, Integer.MAX_VALUE, ExecutorServiceC2374.f9168, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC2372(new Object(), "source-unlimited", false))), executorServiceC23743);
        List list3 = Collections.EMPTY_LIST;
        ?? obj8 = new Object();
        ((ʽ) obj8).ʾˋ = DesugarCollections.unmodifiableMap(new HashMap(c0241.f1713));
        ComponentCallbacks2C0238 componentCallbacks2C0238 = new ComponentCallbacks2C0238(applicationContext, c1698, c1740, c3393, c3397, new C3557(), r7, 4, obj, c3368, list3, list, generatedAppGlideModule, obj8);
        applicationContext.registerComponentCallbacks(componentCallbacks2C0238);
        f1702 = componentCallbacks2C0238;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static ComponentCallbacks2C0236 m1181(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        Context mo4203 = abstractComponentCallbacksC3123.mo4203();
        AbstractC1751.m4711(mo4203, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        C3557 c3557 = m1182(mo4203).f1707;
        c3557.getClass();
        AbstractC1751.m4711(abstractComponentCallbacksC3123.mo4203(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        char[] cArr = AbstractC1746.f7105;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c3557.m7501(abstractComponentCallbacksC3123.mo4203().getApplicationContext());
        }
        if (abstractComponentCallbacksC3123.m6803() != null) {
            c3557.f13912.mo7496(abstractComponentCallbacksC3123.m6803());
        }
        C3085 m6788 = abstractComponentCallbacksC3123.m6788();
        Context mo42032 = abstractComponentCallbacksC3123.mo4203();
        return c3557.f13910.m6846(mo42032, m1182(mo42032.getApplicationContext()), abstractComponentCallbacksC3123.f11924, m6788, abstractComponentCallbacksC3123.m6780());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ComponentCallbacks2C0238 m1182(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f1702 == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
            } catch (NoSuchMethodException e3) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
            } catch (InvocationTargetException e4) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
            }
            synchronized (ComponentCallbacks2C0238.class) {
                if (f1702 == null) {
                    if (f1701) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f1701 = true;
                    try {
                        m1180(context, generatedAppGlideModule);
                        f1701 = false;
                    } catch (Throwable th) {
                        f1701 = false;
                        throw th;
                    }
                }
            }
        }
        return f1702;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        m1184();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        AbstractC1746.m4704();
        synchronized (this.f1706) {
            try {
                ArrayList arrayList = this.f1706;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((ComponentCallbacks2C0236) obj).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f1703.m4508(i);
        this.f1709.mo7283(i);
        this.f1710.m7291(i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1183(ComponentCallbacks2C0236 componentCallbacks2C0236) {
        synchronized (this.f1706) {
            try {
                if (!this.f1706.contains(componentCallbacks2C0236)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f1706.remove(componentCallbacks2C0236);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m1184() {
        AbstractC1746.m4704();
        this.f1703.m4692(0L);
        this.f1709.mo7285();
        this.f1710.m7298();
    }
}
