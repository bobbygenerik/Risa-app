package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.play_billing.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0596 extends AbstractC0530 implements Set, j$.util.Set {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient AbstractC0592 f2404;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ˑﹳ */
    public AbstractC0592 mo2051() {
        AbstractC0592 abstractC0592 = this.f2404;
        if (abstractC0592 != null) {
            return abstractC0592;
        }
        AbstractC0592 mo2089 = mo2089();
        this.f2404 = mo2089;
        return mo2089;
    }

    /* renamed from: ᵔᵢ */
    public AbstractC0592 mo2089() {
        Object[] array = toArray(AbstractC0530.f2298);
        C0628 c0628 = AbstractC0592.f2396;
        return AbstractC0592.m2186(array.length, array);
    }
}
