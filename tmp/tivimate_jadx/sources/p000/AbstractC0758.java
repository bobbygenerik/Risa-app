package p000;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import p056.C1507;
import ٴﾞ.ˆʾ;

/* renamed from: ʻʻ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0758 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1507 f3140 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f3139 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ˆʾ f3138 = null;

    /* JADX WARN: Can't wrap try/catch for region: R(17:33|34|35|(2:75|76)(1:37)|38|(9:45|(1:49)|(1:56)|57|(2:65|66)|61|62|63|64)|(1:72)(1:(1:74))|(1:49)|(3:51|54|56)|57|(1:59)|65|66|61|62|63|64) */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c5, code lost:
    
        r5 = 327680;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2783(android.content.Context r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.AbstractC0758.m2783(android.content.Context, boolean):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ˆʾ m2784() {
        ˆʾ r0 = new ˆʾ(3);
        f3138 = r0;
        f3140.m4320(r0);
        return f3138;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m2785(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? AbstractC0753.m2742(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }
}
