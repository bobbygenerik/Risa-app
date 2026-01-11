package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.play_billing.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0540 extends AbstractC0596 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient AbstractC0523 f2314;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient Object[] f2315;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient int f2316;

    public C0540(AbstractC0523 abstractC0523, Object[] objArr, int i) {
        this.f2314 = abstractC0523;
        this.f2315 = objArr;
        this.f2316 = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f2314.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return mo2051().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f2316;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0596
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC0592 mo2089() {
        return new C0631(this);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﹳٴ */
    public final int mo2037(Object[] objArr) {
        return mo2051().mo2037(objArr);
    }
}
