package com.google.android.gms.internal.play_billing;

import j$.util.List;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* renamed from: com.google.android.gms.internal.play_billing.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0592 extends AbstractC0530 implements List, RandomAccess, j$.util.List {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0628 f2396 = new C0628(C0526.f2292, 0);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C0526 m2186(int i, Object[] objArr) {
        return i == 0 ? C0526.f2292 : new C0526(i, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static AbstractC0592 m2187(List list) {
        if (!(list instanceof AbstractC0530)) {
            Object[] array = list.toArray();
            int length = array.length;
            ʼ.ᵎﹶ.ٴᵢ(length, array);
            return m2186(length, array);
        }
        AbstractC0592 mo2051 = ((AbstractC0530) list).mo2051();
        if (!mo2051.mo2038()) {
            return mo2051;
        }
        Object[] array2 = mo2051.toArray(AbstractC0530.f2298);
        return m2186(array2.length, array2);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        Object next;
        Object next2;
        int i;
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (0; i < size; i + 1) {
                        Object obj2 = get(i);
                        Object obj3 = list.get(i);
                        i = (obj2 == obj3 || (obj2 != null && obj2.equals(obj3))) ? i + 1 : 0;
                    }
                    return true;
                }
                C0628 listIterator = listIterator(0);
                Iterator it = list.iterator();
                while (true) {
                    if (listIterator.hasNext()) {
                        if (!it.hasNext() || ((next = listIterator.next()) != (next2 = it.next()) && (next == null || !next.equals(next2)))) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ˑﹳ */
    public final AbstractC0592 mo2051() {
        return this;
    }

    @Override // java.util.List
    /* renamed from: ٴﹶ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0628 listIterator(int i) {
        com.bumptech.glide.ˈ.ˆﾞ(i, size());
        return isEmpty() ? f2396 : new C0628(this, i);
    }

    @Override // java.util.List
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public AbstractC0592 subList(int i, int i2) {
        com.bumptech.glide.ˈ.ᵔٴ(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? C0526.f2292 : new C0640(this, i, i3);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﹳٴ */
    public int mo2037(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }
}
