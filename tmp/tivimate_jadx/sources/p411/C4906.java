package p411;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.util.ArrayList;
import p229.C3125;

/* renamed from: ﹳˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4906 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f18308;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f18309;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f18310;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f18311;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3125 f18312;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f18313;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18314;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f18315;

    public C4906(String str, String str2, ArrayList arrayList, String str3, String str4, String str5, String str6, C3125 c3125) {
        this.f18314 = str;
        this.f18313 = str2;
        this.f18308 = arrayList;
        this.f18309 = str3;
        this.f18310 = str4;
        this.f18315 = str5;
        this.f18311 = str6;
        this.f18312 = c3125;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4906 m9711(Context context, C4887 c4887, String str, String str2, ArrayList arrayList, C3125 c3125) {
        String packageName = context.getPackageName();
        String m9676 = c4887.m9676();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String l = Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new C4906(str, str2, arrayList, m9676, packageName, l, str3, c3125);
    }
}
