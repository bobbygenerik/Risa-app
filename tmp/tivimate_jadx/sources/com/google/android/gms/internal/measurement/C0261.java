package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.measurement.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0261 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ Iterator f1759;

    public C0261(Iterator it) {
        this.f1759 = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1759.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new C0467((String) this.f1759.next());
    }
}
