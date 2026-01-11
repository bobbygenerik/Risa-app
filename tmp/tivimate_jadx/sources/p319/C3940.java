package p319;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import p233.C3191;
import p296.AbstractC3678;
import p347.AbstractC4278;

/* renamed from: ᴵˈ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3940 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3940 f15236;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int f15237;

    /* JADX WARN: Type inference failed for: r0v2, types: [ᴵˈ.ﾞᴵ, java.lang.Object] */
    static {
        int i = AbstractC3932.f15210;
        f15237 = 12451000;
        f15236 = new Object();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(2:2|3)|4|(4:8|2a|15|(2:17|(2:19|20))(2:22|23))|38|(4:40|(3:42|(1:48)(1:46)|47)|49|(11:51|(1:53)(1:118)|54|(2:114|115)(1:56)|57|58|59|(1:61)(2:(2:84|(1:86))|(4:92|(1:94)(1:111)|(1:96)|(1:98)(4:99|(2:105|106)|101|(1:103)(1:104)))(1:91))|62|(2:(5:65|66|67|68|(2:69|(2:71|(1:73)(1:74))(2:75|76)))|79)(0)|(1:81)(1:82)))|119|(0)(0)|54|(0)(0)|57|58|59|(0)(0)|62|(0)(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x019d, code lost:
    
        java.lang.String.valueOf(r3).concat(" requires Google Play services, but they are missing.");
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ec A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ed A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010c  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m8112(android.content.Context r10, int r11) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p319.C3940.m8112(android.content.Context, int):int");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Intent m8113(int i, Context context, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            int i2 = AbstractC3678.f14396;
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(fromParts);
            return intent;
        }
        if (context != null && AbstractC4278.m8654(context)) {
            int i3 = AbstractC3678.f14396;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder("gcore_");
        sb.append(f15237);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(C3191.m7014(context).m7016(0, context.getPackageName()).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String sb2 = sb.toString();
        int i4 = AbstractC3678.f14396;
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(sb2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", sb2);
        }
        intent3.setData(appendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }
}
