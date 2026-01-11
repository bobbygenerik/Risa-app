package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import p013.C0919;
import p062.C1560;
import p145.C2405;
import p180.InterfaceC2752;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p268.C3466;
import p268.InterfaceC3467;
import p268.InterfaceC3472;
import p366.C4473;
import p414.C4916;
import p414.C4917;
import ـˎ.ˈ;
import ﹳˋ.ٴﹶ;

/* loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* renamed from: ⁱˊ */
    public static String m2722(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* renamed from: ﹳٴ */
    public static /* synthetic */ String m2723(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        C2995 m6522 = C2994.m6522(C4916.class);
        m6522.m6525(new C2982(2, 0, C4917.class));
        m6522.f11428 = new C4473(26);
        arrayList.add(m6522.m6524());
        C2988 c2988 = new C2988(InterfaceC2752.class, Executor.class);
        C2995 c2995 = new C2995(C3466.class, new Class[]{InterfaceC3467.class, InterfaceC3472.class});
        c2995.m6525(C2982.m6510(Context.class));
        c2995.m6525(C2982.m6510(C2405.class));
        c2995.m6525(new C2982(2, 0, ˈ.class));
        c2995.m6525(new C2982(1, 1, C4916.class));
        c2995.m6525(new C2982(c2988, 1, 0));
        c2995.f11428 = new ʻʿ.ˈ(26, c2988);
        arrayList.add(c2995.m6524());
        arrayList.add(ٴﹶ.ʼˎ("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(ٴﹶ.ʼˎ("fire-core", "22.0.0"));
        arrayList.add(ٴﹶ.ʼˎ("device-name", m2722(Build.PRODUCT)));
        arrayList.add(ٴﹶ.ʼˎ("device-model", m2722(Build.DEVICE)));
        arrayList.add(ٴﹶ.ʼˎ("device-brand", m2722(Build.BRAND)));
        arrayList.add(ٴﹶ.ˏי("android-target-sdk", new C1560(13)));
        arrayList.add(ٴﹶ.ˏי("android-min-sdk", new C1560(14)));
        arrayList.add(ٴﹶ.ˏי("android-platform", new C1560(15)));
        arrayList.add(ٴﹶ.ˏי("android-installer", new C1560(16)));
        try {
            C0919.f3844.getClass();
            str = "2.2.10";
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(ٴﹶ.ʼˎ("kotlin", str));
        }
        return arrayList;
    }
}
