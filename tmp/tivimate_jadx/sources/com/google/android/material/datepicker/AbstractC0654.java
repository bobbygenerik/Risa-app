package com.google.android.material.datepicker;

import j$.util.DesugarTimeZone;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.material.datepicker.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0654 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final AtomicReference f2689 = new AtomicReference();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Calendar m2389(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
            return calendar2;
        }
        calendar2.setTimeInMillis(calendar.getTimeInMillis());
        return calendar2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Calendar m2390() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        return calendar;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Calendar m2391(Calendar calendar) {
        Calendar m2389 = m2389(calendar);
        Calendar m23892 = m2389(null);
        m23892.set(m2389.get(1), m2389.get(2), m2389.get(5));
        return m23892;
    }
}
