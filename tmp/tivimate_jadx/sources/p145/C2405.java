package p145;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import android.util.Base64;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p038.C1283;
import p074.InterfaceC1650;
import p176.C2659;
import p212.C2990;
import p212.C2994;
import p212.C2997;
import p221.EnumC3043;
import p229.C3125;
import p255.C3359;
import p255.C3368;
import p268.C3466;
import p296.AbstractC3659;
import p347.AbstractC4275;
import p409.ComponentCallbacks2C4842;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʼˎ;

/* renamed from: ˉᵎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2405 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Object f9286 = new Object();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C3359 f9287 = new C3368(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2401 f9289;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2997 f9291;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2990 f9293;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC1650 f9294;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f9295;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f9296;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AtomicBoolean f9292 = new AtomicBoolean(false);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AtomicBoolean f9297 = new AtomicBoolean();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f9288 = new CopyOnWriteArrayList();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f9290 = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    public C2405(Context context, String str, C2401 c2401) {
        ?? arrayList;
        int i = 0;
        this.f9296 = context;
        AbstractC3659.m7680(str);
        this.f9295 = str;
        this.f9289 = c2401;
        C2407 c2407 = FirebaseInitProvider.f3095;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    String str2 = ComponentDiscoveryService.class + " has no service info.";
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (bundle == null) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str3 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str3)) && str3.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str3.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new C1283(1, (String) it.next()));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        EnumC3043 enumC3043 = EnumC3043.f11586;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        int i2 = 2;
        arrayList3.add(new C1283(i2, new FirebaseCommonRegistrar()));
        arrayList3.add(new C1283(i2, new ExecutorsRegistrar()));
        arrayList4.add(C2994.m6520(context, Context.class, new Class[0]));
        arrayList4.add(C2994.m6520(this, C2405.class, new Class[0]));
        arrayList4.add(C2994.m6520(c2401, C2401.class, new Class[0]));
        ʼˎ r11 = new ʼˎ(20);
        if (ˊʻ.ᴵˊ(context) && FirebaseInitProvider.f3096.get()) {
            arrayList4.add(C2994.m6520(c2407, C2407.class, new Class[0]));
        }
        C2997 c2997 = new C2997(arrayList3, arrayList4, r11);
        this.f9291 = c2997;
        Trace.endSection();
        this.f9293 = new C2990(new C2402(this, i, context));
        this.f9294 = c2997.mo6514(C3466.class);
        C2403 c2403 = new C2403(this);
        m5512();
        if (this.f9292.get()) {
            ComponentCallbacks2C4842.f18161.f18163.get();
        }
        this.f9288.add(c2403);
        Trace.endSection();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C2405 m5506(Context context) {
        synchronized (f9286) {
            try {
                if (f9287.containsKey("[DEFAULT]")) {
                    return m5507();
                }
                C2401 m5504 = C2401.m5504(context);
                if (m5504 == null) {
                    return null;
                }
                return m5508(context, m5504);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2405 m5507() {
        C2405 c2405;
        synchronized (f9286) {
            try {
                c2405 = (C2405) f9287.get("[DEFAULT]");
                if (c2405 == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + AbstractC4275.m8652() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((C3466) c2405.f9294.get()).m7383();
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2405;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, ﹳˊ.ⁱˊ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C2405 m5508(Context context, C2401 c2401) {
        C2405 c2405;
        AtomicReference atomicReference = C2404.f9285;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = C2404.f9285;
            if (atomicReference2.get() == null) {
                ?? obj = new Object();
                while (true) {
                    if (atomicReference2.compareAndSet(null, obj)) {
                        ComponentCallbacks2C4842.m9649(application);
                        ComponentCallbacks2C4842.f18161.m9651(obj);
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        break;
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f9286) {
            C3359 c3359 = f9287;
            AbstractC3659.m7684("FirebaseApp name [DEFAULT] already exists!", !c3359.containsKey("[DEFAULT]"));
            AbstractC3659.m7683(context, "Application context cannot be null.");
            c2405 = new C2405(context, "[DEFAULT]", c2401);
            c3359.put("[DEFAULT]", c2405);
        }
        c2405.m5510();
        return c2405;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2405)) {
            return false;
        }
        C2405 c2405 = (C2405) obj;
        c2405.m5512();
        return this.f9295.equals(c2405.f9295);
    }

    public final int hashCode() {
        return this.f9295.hashCode();
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        c3125.m6847(this.f9295, "name");
        c3125.m6847(this.f9289, "options");
        return c3125.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m5509() {
        StringBuilder sb = new StringBuilder();
        m5512();
        byte[] bytes = this.f9295.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        m5512();
        byte[] bytes2 = this.f9289.f9278.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5510() {
        HashMap hashMap;
        if (!ˊʻ.ᴵˊ(this.f9296)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            m5512();
            sb.append(this.f9295);
            sb.toString();
            Context context = this.f9296;
            AtomicReference atomicReference = C2408.f9306;
            if (atomicReference.get() == null) {
                C2408 c2408 = new C2408(context);
                while (!atomicReference.compareAndSet(null, c2408)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(c2408, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        m5512();
        sb2.append(this.f9295);
        sb2.toString();
        C2997 c2997 = this.f9291;
        m5512();
        boolean equals = "[DEFAULT]".equals(this.f9295);
        AtomicReference atomicReference2 = c2997.f11435;
        Boolean valueOf = Boolean.valueOf(equals);
        while (true) {
            if (atomicReference2.compareAndSet(null, valueOf)) {
                synchronized (c2997) {
                    hashMap = new HashMap(c2997.f11433);
                }
                c2997.m6529(hashMap, equals);
                break;
            } else if (atomicReference2.get() != null) {
                break;
            }
        }
        ((C3466) this.f9294.get()).m7383();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m5511() {
        boolean z;
        m5512();
        C2659 c2659 = (C2659) this.f9293.get();
        synchronized (c2659) {
            z = c2659.f10092;
        }
        return z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5512() {
        AbstractC3659.m7684("FirebaseApp was deleted", !this.f9297.get());
    }
}
