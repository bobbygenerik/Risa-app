package com.google.android.gms.internal.measurement;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.res.Configuration;
import android.icu.text.DateFormat;
import android.icu.text.DecimalFormatSymbols;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.os.UserManager;
import android.text.Html;
import android.text.Spanned;
import android.text.format.DateUtils;
import com.google.android.material.datepicker.AbstractC0654;
import j$.util.stream.IntStream;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import p095.AbstractC1889;
import p256.C3375;

/* renamed from: com.google.android.gms.internal.measurement.ᵢי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0473 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile AbstractC1889 f2229;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static String[] m1913(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Context m1914(Context context) {
        return context.createDeviceProtectedStorageContext();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Uri[] m1915(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static LocaleList m1916(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static boolean m1917(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Spanned m1918(String str) {
        return Html.fromHtml(str, 0);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static String m1919(long j) {
        if (Build.VERSION.SDK_INT < 24) {
            return DateUtils.formatDateTime(null, j, 8228);
        }
        Locale locale = Locale.getDefault();
        AtomicReference atomicReference = AbstractC0654.f2689;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        return instanceForSkeleton.format(new Date(j));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static DecimalFormatSymbols m1920(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:8|(4:10|(1:12)|13|14)|15|(4:17|(1:19)|13|14)|20|(1:90)(1:24)|25|26|27|28|29|30|31|(1:33)(1:82)|34|(9:36|37|38|39|40|(2:41|(3:43|(3:59|60|61)(7:45|46|(2:48|(1:51))|52|(1:54)(1:58)|55|56)|57)(1:62))|63|64|65)(1:81)|66|14) */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0076, code lost:
    
        r5 = p095.C1887.f7531;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p095.AbstractC1889 m1921(android.content.Context r16) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC0473.m1921(android.content.Context):ˆʽ.ﾞᴵ");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static LocaleList m1922(Configuration configuration) {
        return configuration.getLocales();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static IntStream m1923(CharSequence charSequence) {
        return C3375.m7243(charSequence);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static IntStream m1924(CharSequence charSequence) {
        return C3375.m7245(charSequence);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m1925(Context context) {
        return context.isDeviceProtectedStorage();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Spanned m1926(String str) {
        return Html.fromHtml(str, 0, null, null);
    }
}
