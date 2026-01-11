package com.google.android.gms.internal.play_billing;

import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.play_billing.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0613 extends AbstractC0596 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient C0558 f2439;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient C0533 f2440;

    public C0613(C0558 c0558, C0533 c0533) {
        this.f2439 = c0558;
        this.f2440 = c0533;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f2439.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f2440.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f2439.f2345;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0596, com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ˑﹳ */
    public final AbstractC0592 mo2051() {
        return this.f2440;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﹳٴ */
    public final int mo2037(Object[] objArr) {
        return this.f2440.mo2037(objArr);
    }
}
