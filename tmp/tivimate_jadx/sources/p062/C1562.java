package p062;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import p099.C1902;
import p145.C2405;
import ﹳי.ʽ;

/* renamed from: ʾˈ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1562 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ʽ f6111;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1562 f6112 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʾˈ.ˑٴ] */
    static {
        C1902 c1902 = new C1902();
        c1902.m4849(C1548.class, C1580.f6178);
        c1902.m4849(C1575.class, C1584.f6192);
        c1902.m4849(C1570.class, C1563.f6116);
        c1902.m4849(C1587.class, C1547.f6079);
        c1902.m4849(C1589.class, C1538.f6050);
        c1902.m4849(C1576.class, C1593.f6211);
        c1902.f7610 = true;
        f6111 = new ʽ(c1902);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1587 m4356(C2405 c2405) {
        c2405.m5512();
        Context context = c2405.f9296;
        String packageName = context.getPackageName();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String valueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        c2405.m5512();
        String str = c2405.f9289.f9278;
        String str2 = Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        String str4 = packageInfo.versionName;
        if (str4 == null) {
            str4 = valueOf;
        }
        String str5 = Build.MANUFACTURER;
        c2405.m5512();
        C1576 m4348 = AbstractC1556.m4348(context);
        c2405.m5512();
        return new C1587(str, new C1589(packageName, str4, valueOf, m4348, AbstractC1556.m4349(context)));
    }
}
