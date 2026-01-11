package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.play_billing.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0587 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ boolean m2179(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
