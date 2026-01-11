package j$.util;

import j$.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* renamed from: j$.util.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C5442h extends C5441g implements java.util.List, List {
    private static final long serialVersionUID = -7754090372962971524L;
    public final java.util.List c;

    public C5442h(java.util.List list) {
        super(list);
        this.c = list;
    }

    public C5442h(java.util.List list, Object obj) {
        super(list, obj);
        this.c = list;
    }

    private Object readResolve() {
        java.util.List list = this.c;
        return list instanceof RandomAccess ? new C5442h(list) : this;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        synchronized (this.b) {
            this.c.add(i, obj);
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        boolean addAll;
        synchronized (this.b) {
            addAll = this.c.addAll(i, collection);
        }
        return addAll;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.b) {
            equals = this.c.equals(obj);
        }
        return equals;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object obj;
        synchronized (this.b) {
            obj = this.c.get(i);
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int hashCode;
        synchronized (this.b) {
            hashCode = this.c.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int indexOf;
        synchronized (this.b) {
            indexOf = this.c.indexOf(obj);
        }
        return indexOf;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int lastIndexOf;
        synchronized (this.b) {
            lastIndexOf = this.c.lastIndexOf(obj);
        }
        return lastIndexOf;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.c.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.c.listIterator(i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        Object remove;
        synchronized (this.b) {
            remove = this.c.remove(i);
        }
        return remove;
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        synchronized (this.b) {
            java.util.List list = this.c;
            if (list instanceof List) {
                ((List) list).replaceAll(unaryOperator);
            } else {
                List.CC.$default$replaceAll(list, unaryOperator);
            }
        }
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = this.c.set(i, obj);
        }
        return obj2;
    }

    @Override // java.util.List, j$.util.List
    public final void sort(java.util.Comparator comparator) {
        synchronized (this.b) {
            j$.com.android.tools.r8.a.b0(this.c, comparator);
        }
    }

    @Override // java.util.List
    public java.util.List subList(int i, int i2) {
        C5442h c5442h;
        synchronized (this.b) {
            c5442h = new C5442h(this.c.subList(i, i2), this.b);
        }
        return c5442h;
    }
}
