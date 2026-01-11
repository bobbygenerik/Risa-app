package com.google.android.gms.internal.play_billing;

import j$.util.Objects;

/* renamed from: com.google.android.gms.internal.play_billing.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0533 extends AbstractC0592 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient Object[] f2300;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f2301;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient int f2302;

    public C0533(Object[] objArr, int i, int i2) {
        this.f2300 = objArr;
        this.f2301 = i;
        this.f2302 = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        com.bumptech.glide.ˈ.ᵔי(i, this.f2302);
        Object obj = this.f2300[i + i + this.f2301];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2302;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﾞᴵ */
    public final boolean mo2038() {
        return true;
    }
}
