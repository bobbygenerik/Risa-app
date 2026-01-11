package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: com.google.android.gms.internal.measurement.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0271 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ Iterator f1769;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Iterator f1770;

    public C0271(C0316 c0316, Iterator it, Iterator it2) {
        this.f1769 = it;
        this.f1770 = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f1769.hasNext()) {
            return true;
        }
        return this.f1770.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.f1769;
        if (it.hasNext()) {
            return new C0467(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f1770;
        if (it2.hasNext()) {
            return new C0467((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
