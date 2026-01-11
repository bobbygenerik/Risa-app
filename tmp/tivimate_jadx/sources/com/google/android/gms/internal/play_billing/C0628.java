package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: com.google.android.gms.internal.play_billing.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0628 implements ListIterator, Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC0592 f2465;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2466;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f2467;

    public C0628(AbstractC0592 abstractC0592, int i) {
        int size = abstractC0592.size();
        com.bumptech.glide.ˈ.ˆﾞ(i, size);
        this.f2466 = size;
        this.f2467 = i;
        this.f2465 = abstractC0592;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f2467 < this.f2466;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2467 > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f2467;
        this.f2467 = i + 1;
        return m2243(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2467;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f2467 - 1;
        this.f2467 = i;
        return m2243(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2467 - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m2243(int i) {
        return this.f2465.get(i);
    }
}
