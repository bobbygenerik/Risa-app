package p145;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.leanback.widget.ʻٴ;
import com.google.android.gms.internal.measurement.AbstractC0473;
import p074.InterfaceC1650;
import p212.C2994;
import p212.C2997;
import p268.C3469;

/* renamed from: ˉᵎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C2402 implements InterfaceC1650 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f9281;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f9282;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9283;

    public /* synthetic */ C2402(Context context, String str) {
        this.f9283 = 2;
        this.f9281 = context;
        this.f9282 = str;
    }

    public /* synthetic */ C2402(Object obj, int i, Object obj2) {
        this.f9283 = i;
        this.f9282 = obj;
        this.f9281 = obj2;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ˋˆ.ﹳٴ, java.lang.Object] */
    @Override // p074.InterfaceC1650
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f9283) {
            case 0:
                C2405 c2405 = (C2405) this.f9282;
                Context context = (Context) this.f9281;
                String m5509 = c2405.m5509();
                ?? obj = new Object();
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    context = i >= 24 ? AbstractC0473.m1914(context) : null;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + m5509, 0);
                boolean z = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                obj.f10092 = z;
                return obj;
            case 1:
                C2997 c2997 = (C2997) this.f9282;
                C2994 c2994 = (C2994) this.f9281;
                return c2994.f11421.mo2819(new ʻٴ(c2994, c2997));
            default:
                return new C3469((Context) this.f9281, (String) this.f9282);
        }
    }
}
