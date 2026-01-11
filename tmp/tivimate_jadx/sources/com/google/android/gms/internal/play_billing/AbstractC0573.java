package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.play_billing.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0573 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ boolean m2157(Unsafe unsafe, AbstractC0555 abstractC0555, long j, Object obj, Object obj2) {
        while (!AbstractC0587.m2179(unsafe, abstractC0555, j, obj, obj2)) {
            if (unsafe.getObject(abstractC0555, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
