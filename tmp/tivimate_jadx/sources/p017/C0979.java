package p017;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
import p095.InterfaceC1881;

/* renamed from: ʼʻ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0979 extends AbstractSequentialList implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f3949;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1881 f3950;

    public C0979(List list, InterfaceC1881 interfaceC1881) {
        list.getClass();
        this.f3949 = list;
        this.f3950 = interfaceC1881;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f3949.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new C0969(this, this.f3949.listIterator(i), 1);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        this.f3949.subList(i, i2).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3949.size();
    }
}
