package com.google.android.gms.internal.play_billing;

import j$.util.Objects;

/* renamed from: com.google.android.gms.internal.play_billing.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0526 extends AbstractC0592 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0526 f2292 = new C0526(0, new Object[0]);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient Object[] f2293;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f2294;

    public C0526(int i, Object[] objArr) {
        this.f2293 = objArr;
        this.f2294 = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        com.bumptech.glide.ˈ.ᵔי(i, this.f2294);
        Object obj = this.f2293[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2294;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo2034() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object[] mo2035() {
        return this.f2293;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo2036() {
        return this.f2294;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0592, com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo2037(Object[] objArr) {
        Object[] objArr2 = this.f2293;
        int i = this.f2294;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo2038() {
        return false;
    }
}
