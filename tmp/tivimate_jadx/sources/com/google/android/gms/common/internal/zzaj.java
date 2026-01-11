package com.google.android.gms.common.internal;

import p319.C3936;

/* loaded from: classes.dex */
public final class zzaj extends Exception {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3936 f1725;

    public zzaj(C3936 c3936) {
        if (!((c3936.f15226 == 0 || c3936.f15223 == null) ? false : true)) {
            throw new IllegalArgumentException("ResolvableConnectionException can only be created with a connection result containing a resolution.");
        }
        this.f1725 = c3936;
    }
}
