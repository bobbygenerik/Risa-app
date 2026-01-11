package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.regex.Pattern;

/* renamed from: com.google.android.gms.internal.measurement.ʻˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0246 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f1729;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f1730;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Uri f1731 = Uri.parse("content://com.google.android.gsf.gservices");

    static {
        Uri.parse("content://com.google.android.gsf.gservices/prefix");
        f1730 = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        f1729 = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    }
}
