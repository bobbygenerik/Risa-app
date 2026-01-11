package p017;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p095.InterfaceC1881;

/* renamed from: ʼʻ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0947 extends AbstractList implements RandomAccess, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f3886;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1881 f3887;

    public C0947(List list, InterfaceC1881 interfaceC1881) {
        list.getClass();
        this.f3886 = list;
        this.f3887 = interfaceC1881;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.f3887.apply(this.f3886.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f3886.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new C0969(this, this.f3886.listIterator(i), 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return this.f3887.apply(this.f3886.remove(i));
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        this.f3886.subList(i, i2).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3886.size();
    }
}
