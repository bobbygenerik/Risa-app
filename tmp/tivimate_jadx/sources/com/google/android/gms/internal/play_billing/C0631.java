package com.google.android.gms.internal.play_billing;

import j$.util.Objects;
import java.util.AbstractMap;

/* renamed from: com.google.android.gms.internal.play_billing.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0631 extends AbstractC0592 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0540 f2468;

    public C0631(C0540 c0540) {
        this.f2468 = c0540;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        C0540 c0540 = this.f2468;
        com.bumptech.glide.ˈ.ᵔי(i, c0540.f2316);
        Object[] objArr = c0540.f2315;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2468.f2316;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﾞᴵ */
    public final boolean mo2038() {
        return true;
    }
}
