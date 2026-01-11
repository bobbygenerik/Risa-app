package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0581 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f2377;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f2378;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f2379;

    public C0581(Object obj, Object obj2, Object obj3) {
        this.f2379 = obj;
        this.f2378 = obj2;
        this.f2377 = obj3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final IllegalArgumentException m2173() {
        Object obj = this.f2379;
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(obj) + "=" + String.valueOf(this.f2378) + " and " + String.valueOf(obj) + "=" + String.valueOf(this.f2377));
    }
}
