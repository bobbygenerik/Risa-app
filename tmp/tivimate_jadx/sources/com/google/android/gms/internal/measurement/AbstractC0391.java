package com.google.android.gms.internal.measurement;

import android.net.Uri;
import p255.C3359;
import p255.C3368;

/* renamed from: com.google.android.gms.internal.measurement.יי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0391 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3359 f2054 = new C3368(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized Uri m1775() {
        synchronized (AbstractC0391.class) {
            C3359 c3359 = f2054;
            Uri uri = (Uri) c3359.get("com.google.android.gms.measurement");
            if (uri != null) {
                return uri;
            }
            Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
            c3359.put("com.google.android.gms.measurement", parse);
            return parse;
        }
    }
}
